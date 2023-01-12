// Created by Grigore Stefan <g_stefan@yahoo.com>
// Public domain (Unlicense) <http://unlicense.org>
// SPDX-FileCopyrightText: 2022 Grigore Stefan <g_stefan@yahoo.com>
// SPDX-License-Identifier: Unlicense

messageAction("vendor");

Shell.mkdirRecursivelyIfNotExists("vendor");

if (!Shell.fileExists("vendor/drmingw-" + Project.version + "-win64.7z")) {
	var webLink = "https://github.com/jrfonseca/drmingw/releases/download/" + Project.version + "/drmingw-" + Project.version + "-win64.7z";
	var cmd = "curl --insecure --location " + webLink + " --output vendor/drmingw-" + Project.version + "-win64.7z";
	Console.writeLn(cmd);
	exitIf(Shell.system(cmd));
};
