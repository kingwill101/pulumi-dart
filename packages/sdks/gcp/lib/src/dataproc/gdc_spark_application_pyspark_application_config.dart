// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GdcSparkApplicationPysparkApplicationConfig {
  /// HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  final pulumi.Input<List<String>>? archiveUris;
  /// The arguments to pass to the driver.  Do not include arguments, such as `--conf`, that can be set as job properties, since a collision may occur that causes an incorrect job submission.
  final pulumi.Input<List<String>>? args;
  /// HCFS URIs of files to be placed in the working directory of each executor. Useful for naively parallel tasks.
  final pulumi.Input<List<String>>? fileUris;
  /// HCFS URIs of jar files to add to the CLASSPATHs of the Python driver and tasks.
  final pulumi.Input<List<String>>? jarFileUris;
  /// The HCFS URI of the main Python file to use as the driver. Must be a .py file.
  final pulumi.Input<String> mainPythonFileUri;
  /// HCFS file URIs of Python files to pass to the PySpark framework. Supported file types: .py, .egg, and .zip.
  final pulumi.Input<List<String>>? pythonFileUris;

  /// Creates a new [GdcSparkApplicationPysparkApplicationConfig].
  /// [archiveUris] HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  /// [args] The arguments to pass to the driver.  Do not include arguments, such as `--conf`, that can be set as job properties, since a collision may occur that causes an incorrect job submission.
  /// [fileUris] HCFS URIs of files to be placed in the working directory of each executor. Useful for naively parallel tasks.
  /// [jarFileUris] HCFS URIs of jar files to add to the CLASSPATHs of the Python driver and tasks.
  /// [mainPythonFileUri] The HCFS URI of the main Python file to use as the driver. Must be a .py file.
  /// [pythonFileUris] HCFS file URIs of Python files to pass to the PySpark framework. Supported file types: .py, .egg, and .zip.
  const GdcSparkApplicationPysparkApplicationConfig({
    this.archiveUris,
    this.args,
    this.fileUris,
    this.jarFileUris,
    required this.mainPythonFileUri,
    this.pythonFileUris,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveUris': ?archiveUris,
      'args': ?args,
      'fileUris': ?fileUris,
      'jarFileUris': ?jarFileUris,
      'mainPythonFileUri': mainPythonFileUri,
      'pythonFileUris': ?pythonFileUris,
    };
  }

  factory GdcSparkApplicationPysparkApplicationConfig.fromMap(Map<String, dynamic> map) {
    return GdcSparkApplicationPysparkApplicationConfig(
      archiveUris: (() { final guardedValue = map['archiveUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      args: (() { final guardedValue = map['args']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      fileUris: (() { final guardedValue = map['fileUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      jarFileUris: (() { final guardedValue = map['jarFileUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      mainPythonFileUri: pulumi.Input.fromValue(map['mainPythonFileUri'] as String),
      pythonFileUris: (() { final guardedValue = map['pythonFileUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
