@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%"=="" @echo off
@rem ##########################################################################
@rem
@rem  Laborpraxis_Maximilan_Schaten startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%"=="" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and LABORPRAXIS_MAXIMILAN_SCHATEN_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if %ERRORLEVEL% equ 0 goto execute

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\Laborpraxis_Maximilan_Schaten-1.0-SNAPSHOT.jar;%APP_HOME%\lib\annotations-19.0.0.jar;%APP_HOME%\lib\cdk-bundle-2.7.1.jar;%APP_HOME%\lib\javafx-controls-17.0.2-win.jar;%APP_HOME%\lib\javafx-swing-17.0.2-win.jar;%APP_HOME%\lib\javafx-graphics-17.0.2-win.jar;%APP_HOME%\lib\javafx-graphics-17.0.2.jar;%APP_HOME%\lib\javafx-base-17.0.2-win.jar;%APP_HOME%\lib\javafx-base-17.0.2.jar;%APP_HOME%\lib\cdk-qsarprotein-2.7.1.jar;%APP_HOME%\lib\cdk-pdbcml-2.7.1.jar;%APP_HOME%\lib\cdk-pdb-2.7.1.jar;%APP_HOME%\lib\cdk-qsarcml-2.7.1.jar;%APP_HOME%\lib\cdk-libiomd-2.7.1.jar;%APP_HOME%\lib\cdk-libiocml-2.7.1.jar;%APP_HOME%\lib\cdk-legacy-2.7.1.jar;%APP_HOME%\lib\cdk-extra-2.7.1.jar;%APP_HOME%\lib\cdk-builder3d-2.7.1.jar;%APP_HOME%\lib\cdk-depict-2.7.1.jar;%APP_HOME%\lib\cdk-sdg-2.7.1.jar;%APP_HOME%\lib\cdk-io-2.7.1.jar;%APP_HOME%\lib\cdk-qsaratomic-2.7.1.jar;%APP_HOME%\lib\cdk-forcefield-2.7.1.jar;%APP_HOME%\lib\cdk-qsarmolecular-2.7.1.jar;%APP_HOME%\lib\cdk-atomtype-2.7.1.jar;%APP_HOME%\lib\cdk-builder3dtools-2.7.1.jar;%APP_HOME%\lib\cdk-fragment-2.7.1.jar;%APP_HOME%\lib\cdk-tautomer-2.7.1.jar;%APP_HOME%\lib\cdk-smiles-2.7.1.jar;%APP_HOME%\lib\cdk-model-2.7.1.jar;%APP_HOME%\lib\cdk-fingerprint-2.7.1.jar;%APP_HOME%\lib\cdk-qsarbond-2.7.1.jar;%APP_HOME%\lib\cdk-charges-2.7.1.jar;%APP_HOME%\lib\cdk-structgen-2.7.1.jar;%APP_HOME%\lib\cdk-valencycheck-2.7.1.jar;%APP_HOME%\lib\cdk-pcore-2.7.1.jar;%APP_HOME%\lib\cdk-smarts-2.7.1.jar;%APP_HOME%\lib\cdk-reaction-2.7.1.jar;%APP_HOME%\lib\cdk-ctab-2.7.1.jar;%APP_HOME%\lib\cdk-isomorphism-2.7.1.jar;%APP_HOME%\lib\cdk-formula-2.7.1.jar;%APP_HOME%\lib\cdk-cip-2.7.1.jar;%APP_HOME%\lib\cdk-signature-2.7.1.jar;%APP_HOME%\lib\cdk-qsar-2.7.1.jar;%APP_HOME%\lib\cdk-renderawt-2.7.1.jar;%APP_HOME%\lib\cdk-renderextra-2.7.1.jar;%APP_HOME%\lib\cdk-renderbasic-2.7.1.jar;%APP_HOME%\lib\cdk-inchi-2.7.1.jar;%APP_HOME%\lib\cdk-group-2.7.1.jar;%APP_HOME%\lib\cdk-standard-2.7.1.jar;%APP_HOME%\lib\cdk-datadebug-2.7.1.jar;%APP_HOME%\lib\cdk-data-2.7.1.jar;%APP_HOME%\lib\cdk-silent-2.7.1.jar;%APP_HOME%\lib\cdk-hash-2.7.1.jar;%APP_HOME%\lib\cdk-render-2.7.1.jar;%APP_HOME%\lib\cdk-iordf-2.7.1.jar;%APP_HOME%\lib\cdk-core-2.7.1.jar;%APP_HOME%\lib\cdk-diff-2.7.1.jar;%APP_HOME%\lib\cdk-dict-2.7.1.jar;%APP_HOME%\lib\cdk-interfaces-2.7.1.jar;%APP_HOME%\lib\cdk-ioformats-2.7.1.jar;%APP_HOME%\lib\cdk-ionpot-2.7.1.jar;%APP_HOME%\lib\cdk-qsarionpot-2.7.1.jar;%APP_HOME%\lib\cdk-control-2.7.1.jar;%APP_HOME%\lib\cdk-qm-2.7.1.jar;%APP_HOME%\lib\cdk-jniinchi-support-2.7.1.jar;%APP_HOME%\lib\vecmath-1.5.2.jar;%APP_HOME%\lib\cmlxom-4.0.jar;%APP_HOME%\lib\euclid-2.0.jar;%APP_HOME%\lib\xom-1.3.7.jar;%APP_HOME%\lib\jena-core-2.7.4.jar;%APP_HOME%\lib\xercesImpl-2.10.0.jar;%APP_HOME%\lib\xalan-2.7.2.jar;%APP_HOME%\lib\serializer-2.7.2.jar;%APP_HOME%\lib\xml-apis-1.4.01.jar;%APP_HOME%\lib\beam-func-1.3.4.jar;%APP_HOME%\lib\beam-core-1.3.4.jar;%APP_HOME%\lib\jama-1.0.3.jar;%APP_HOME%\lib\signatures-1.1.jar;%APP_HOME%\lib\jna-inchi-core-1.0.1.jar;%APP_HOME%\lib\jna-inchi-api-1.0.1.jar;%APP_HOME%\lib\jgrapht-0.6.0.jar;%APP_HOME%\lib\freehep-graphicsio-pdf-2.4.jar;%APP_HOME%\lib\freehep-graphicsio-ps-2.4.jar;%APP_HOME%\lib\tagsoup-1.2.jar;%APP_HOME%\lib\freehep-graphicsio-tests-2.4.jar;%APP_HOME%\lib\freehep-graphicsio-2.4.jar;%APP_HOME%\lib\freehep-graphics2d-2.4.jar;%APP_HOME%\lib\freehep-graphicsbase-2.4.jar;%APP_HOME%\lib\freehep-io-2.2.2.jar;%APP_HOME%\lib\junit-4.13.1.jar;%APP_HOME%\lib\jena-iri-0.9.4.jar;%APP_HOME%\lib\slf4j-api-1.6.4.jar;%APP_HOME%\lib\jna-5.10.0.jar;%APP_HOME%\lib\jna-inchi-darwin-aarch64-1.0.1.jar;%APP_HOME%\lib\jna-inchi-darwin-x86-64-1.0.1.jar;%APP_HOME%\lib\jna-inchi-linux-arm-1.0.1.jar;%APP_HOME%\lib\jna-inchi-linux-x86-1.0.1.jar;%APP_HOME%\lib\jna-inchi-linux-x86-64-1.0.1.jar;%APP_HOME%\lib\jna-inchi-win32-x86-1.0.1.jar;%APP_HOME%\lib\jna-inchi-win32-x86-64-1.0.1.jar;%APP_HOME%\lib\commons-io-2.11.0.jar;%APP_HOME%\lib\log4j-1.2-api-2.17.1.jar;%APP_HOME%\lib\commons-lang3-3.0.jar;%APP_HOME%\lib\commons-math-2.2.jar;%APP_HOME%\lib\joda-time-1.6.2.jar;%APP_HOME%\lib\hamcrest-core-1.3.jar;%APP_HOME%\lib\log4j-api-2.17.1.jar


@rem Execute Laborpraxis_Maximilan_Schaten
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %LABORPRAXIS_MAXIMILAN_SCHATEN_OPTS%  -classpath "%CLASSPATH%" de.whs.ibci.LPSchaten.Main %*

:end
@rem End local scope for the variables with windows NT shell
if %ERRORLEVEL% equ 0 goto mainEnd

:fail
rem Set variable LABORPRAXIS_MAXIMILAN_SCHATEN_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
set EXIT_CODE=%ERRORLEVEL%
if %EXIT_CODE% equ 0 set EXIT_CODE=1
if not ""=="%LABORPRAXIS_MAXIMILAN_SCHATEN_EXIT_CONSOLE%" exit %EXIT_CODE%
exit /b %EXIT_CODE%

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
