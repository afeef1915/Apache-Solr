		    Bitnami Apache Solr Stack 6.5.1-0
		  ====================================

1. OVERVIEW

The Bitnami Project was created to help spread the adoption of freely
available, high quality open source web applications. Bitnami aims to make
it easier than ever to discover, download and install Open Source software 
such as document and content management systems, wikis and blogging 
software.

You can learn more about Bitnami at https://bitnami.com

The Bitnami Solr Stack is an installer that greatly simplifies the
installation of Solr and runtime dependencies. It includes ready-to-run
versions of Apache and Java. It is distributed for free under the 
Apache 2.0 license. Please see the appendix for the specific
licenses of all Open Source components included.

You can learn more about Bitnami Stacks at https://bitnami.com/stacks/

2. FEATURES

- Easy to Install

Bitnami Stacks are built with one goal in mind: to make it as easy as
possible to install open source software. Our installers completely automate
the process of installing and configuring all of the software included in
each Stack, so you can have everything up and running in just a few clicks.

- Independent

Bitnami Stacks are completely self-contained, and therefore do not interfere
with any software already installed on your system. For example, you can
upgrade your system's Apache without fear of 'breaking' your Bitnami Stack.

- Integrated

By the time you click the 'finish' button on the installer, the whole stack
will be integrated, configured and ready to go. 

- Relocatable

Bitnami Stacks can be installed in any directory. This allows you to have
multiple instances of the same stack, without them interfering with each other. 

3. COMPONENTS

Bitnami Apache Solr Stack ships with the following software versions:
 
  - Apache Solr 6.5.1
  - Apache 2.4.23
 
On Linux and Windows there are two versions of the stack, with and without a 
bundled JDK 1.8.0_121. On OS X, it is required that you have Java 1.5 or later 
installed in your system. It can be downloaded from 
http://www.apple.com/macosx/features/java/


4. REQUIREMENTS

To install Bitnami Solr Stack you will need:

    - Intel x86 or compatible processor
    - Minimum of 512 MB RAM
    - Minimum of 400 MB hard drive space
    - TCP/IP protocol support
    - Compatible operanting systems:
      - An x86 Linux operating system.
      - A 32-bit Windows operating system such as Windows Vista, Windows 7, Windows 8, Windows 10, Windows Server 2008 or Windows Server 2012.
			- An OS X operating system x86 with J2SE 5.0 or later.


5. INSTALLATION

The Bitnami Solr Stack is distributed as a binary executable installer.
It can be downloaded from:

https://bitnami.com/stacks/

The downloaded file will be named something similar to:

bitnami-solr-6.5.1-0-linux-installer.run on Linux or
bitnami-solr-6.5.1-0-linux-x64-installer.run on Linux 64 bit or
bitnami-solr-6.5.1-0-windows-installer.exe on Windows or
bitnami-solr-6.5.1-0-osx-x86-installer.dmg on OS X x86.

On Linux, you will need to give it executable permissions:

chmod 755 bitnami-solr-6.5.1-0-linux-installer.run on Linux


To begin the installation process, invoke from a shell or double-click on
the file you have downloaded, and you will be greeted by the 'Welcome'
screen. By default the Solr Manager Web tools are enabled.

Next you will be asked to choose the installation folder. If the
destination directory does not exist, it will be created as part of the
installation.

The default listening port for Apache is 8080 and for Solr is 8983. 
If those ports are already in use by other applications, you will be
prompted for alternate ports to use.

If the installer has not been able to find a suitable JDK installation 
in your system, you will have to provide the location of a jdk1.5 or jdk1.6 
installation in the next page.

Once the installation process has been completed, you will see the
'Installation Finished' page. You can choose to launch Bitnami Solr
Stack at this point. If you do so, your default web browser
will point you to the Bitnami local site.

If you receive an error message during installation, please refer to
the Troubleshooting section.

The Apache server is connected to the Apache Solr server using a Proxy connector.

The rest of this guide assumes that you installed Bitnami Apache Solr
Stack in /home/user/solr-6.5.1-0 on Linux or C:\Program Files\Bitnami Solr Stack
on Windows or /Applications/solr-6.5.1-0 on OS X and you use port 8080 for Apache 
Solr and 8983 for Solr.

6. STARTING AND STOPPING BITNAMI SOLR STACK

To start/stop/restart application on Linux or OS X you can use the included 
ctlscript.sh utility, as shown below:

       ./ctlscript.sh (start|stop|restart)
       ./ctlscript.sh (start|stop|restart) apache
       ./ctlscript.sh (start|stop|restart) solr

  start      - start the service(s)
  stop       - stop  the service(s)
  restart    - restart or start the service(s)

You can start and stop Bitnami Apache Solr Stack on Windows using the shortcuts
created in the Start Menu, under Programs -> Bitnami -> Bitnami Service

That will start Apache and Apache Solr services. Once started, you can open your
browser and access the following URL:

http://127.0.0.1:8080

If you selected an alternate port during installation, for example 18080, the
URL will look like:

http://127.0.0.1:18080

7. DIRECTORY STRUCTURE

The installation process will create several subfolders under the main
installation directory:

	apache2/: Apache server.
	apache-solr/: Apache Solr files.
	java/: Java SE Development Kit.

8. TROUBLESHOOTING

In addition to the resources provided below, we encourage you to post 
your questions and suggestions at:

https://community.bitnami.com/

We also encourage you to sign up for our newsletter, which we'll use to
announce new releases and new stacks. To do so, just register at:
https://bitnami.com/newsletter.

9.1 Installer

# Installer Payload Error 

If you get the following error while trying to run the installer from the
command line:

"Installer payload initialization failed. This is likely due to an
incomplete or corrupt downloaded file" 

The installer binary is not complete, likely because the file was
not downloaded correctly. You will need to download the file and
repeat the installation process.

# Installer execution error on Linux

If you get the following error while trying to run the installer:

"Cannot open bitnami-solr-6.5.1-0-linux.run: No application suitable for 
automatic installation is available for handling this kind of file."

In some operatings systems you can change permissions with right click ->
properties -> permissions -> execution enable. 

Or from the command line:

$ chmod 755 bitnami-solr-6.5.1-0-linux.run 


9.2 Apache Solr

If you find any problem starting Apache Solr, the first place you
should look at is the error log file that will be created at
solr-6.5.1-0/apache-solr/logs/. There you will
likely find useful information to determine what the problem is. For issues
not covered in this Quick Start guide, please refer to the Bitnami forums
and to the Apache Solr documentation, which is located at
http://lucene.apache.org/solr/tutorial.html.

10. LICENSES

Apache Web Server is distributed under the Apache License v2.0, which
is located at http://www.apache.org/licenses/LICENSE-2.0

Apache Solr is distributed under the Apache License v2.0, which
is located at http://www.apache.org/licenses/LICENSE-2.0

Java and related libraries are distributed under the Common Development 
and Distribution License (CDDL), Version 1.0 and the Sun Microsystems, Inc. 
("Sun") Software License Agreement, wich are located at
http://java.sun.com/j2se/1.5.0/docs/relnotes/license.html




