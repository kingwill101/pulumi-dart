// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'task_spark_infrastructure_spec.dart';

class TaskSpark {
  /// Cloud Storage URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  final pulumi.Input<List<String>>? archiveUris;

  /// Cloud Storage URIs of files to be placed in the working directory of each executor.
  final pulumi.Input<List<String>>? fileUris;

  /// Infrastructure specification for the execution.
  /// Structure is documented below.
  final pulumi.Input<TaskSparkInfrastructureSpec>? infrastructureSpec;

  /// The name of the driver's main class. The jar file that contains the class must be in the default CLASSPATH or specified in jar_file_uris. The execution args are passed in as a sequence of named process arguments (--key=value).
  final pulumi.Input<String>? mainClass;

  /// The Cloud Storage URI of the jar file that contains the main class. The execution args are passed in as a sequence of named process arguments (--key=value).
  final pulumi.Input<String>? mainJarFileUri;

  /// The Gcloud Storage URI of the main Python file to use as the driver. Must be a .py file. The execution args are passed in as a sequence of named process arguments (--key=value).
  final pulumi.Input<String>? pythonScriptFile;

  /// The query text. The execution args are used to declare a set of script variables (set key='value';).
  final pulumi.Input<String>? sqlScript;

  /// A reference to a query file. This can be the Cloud Storage URI of the query file or it can the path to a SqlScript Content. The execution args are used to declare a set of script variables (set key='value';).
  final pulumi.Input<String>? sqlScriptFile;

  /// Creates a new [TaskSpark].
  /// [archiveUris] Cloud Storage URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  /// [fileUris] Cloud Storage URIs of files to be placed in the working directory of each executor.
  /// [infrastructureSpec] Infrastructure specification for the execution.
  /// [mainClass] The name of the driver's main class. The jar file that contains the class must be in the default CLASSPATH or specified in jar_file_uris. The execution args are passed in as a sequence of named process arguments (--key=value).
  /// [mainJarFileUri] The Cloud Storage URI of the jar file that contains the main class. The execution args are passed in as a sequence of named process arguments (--key=value).
  /// [pythonScriptFile] The Gcloud Storage URI of the main Python file to use as the driver. Must be a .py file. The execution args are passed in as a sequence of named process arguments (--key=value).
  /// [sqlScript] The query text. The execution args are used to declare a set of script variables (set key='value';).
  /// [sqlScriptFile] A reference to a query file. This can be the Cloud Storage URI of the query file or it can the path to a SqlScript Content. The execution args are used to declare a set of script variables (set key='value';).
  TaskSpark({
    this.archiveUris,
    this.fileUris,
    this.infrastructureSpec,
    this.mainClass,
    this.mainJarFileUri,
    this.pythonScriptFile,
    this.sqlScript,
    this.sqlScriptFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveUris': ?archiveUris,
      'fileUris': ?fileUris,
      'infrastructureSpec':
          ?pulumi.Input.mapOptionalInputValue<
            TaskSparkInfrastructureSpec,
            Map<String, dynamic>
          >(infrastructureSpec, (value) => value.toMap()),
      'mainClass': ?mainClass,
      'mainJarFileUri': ?mainJarFileUri,
      'pythonScriptFile': ?pythonScriptFile,
      'sqlScript': ?sqlScript,
      'sqlScriptFile': ?sqlScriptFile,
    };
  }

  factory TaskSpark.fromMap(Map<String, dynamic> map) {
    return TaskSpark(
      archiveUris: (() {
        final guardedValue = map['archiveUris'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      fileUris: (() {
        final guardedValue = map['fileUris'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      infrastructureSpec: (() {
        final guardedValue = map['infrastructureSpec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TaskSparkInfrastructureSpec.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      mainClass: (() {
        final guardedValue = map['mainClass'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mainJarFileUri: (() {
        final guardedValue = map['mainJarFileUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pythonScriptFile: (() {
        final guardedValue = map['pythonScriptFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sqlScript: (() {
        final guardedValue = map['sqlScript'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sqlScriptFile: (() {
        final guardedValue = map['sqlScriptFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
