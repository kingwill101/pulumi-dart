// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RoutineSparkOptions {
  /// Archive files to be extracted into the working directory of each executor. For more information about Apache Spark, see Apache Spark.
  final pulumi.Input<List<String>>? archiveUris;
  /// Fully qualified name of the user-provided Spark connection object.
  /// Format: "projects/{projectId}/locations/{locationId}/connections/{connectionId}"
  final pulumi.Input<String>? connection;
  /// Custom container image for the runtime environment.
  final pulumi.Input<String>? containerImage;
  /// Files to be placed in the working directory of each executor. For more information about Apache Spark, see Apache Spark.
  final pulumi.Input<List<String>>? fileUris;
  /// JARs to include on the driver and executor CLASSPATH. For more information about Apache Spark, see Apache Spark.
  final pulumi.Input<List<String>>? jarUris;
  /// The fully qualified name of a class in jarUris, for example, com.example.wordcount.
  /// Exactly one of mainClass and main_jar_uri field should be set for Java/Scala language type.
  final pulumi.Input<String>? mainClass;
  /// The main file/jar URI of the Spark application.
  /// Exactly one of the definitionBody field and the mainFileUri field must be set for Python.
  /// Exactly one of mainClass and mainFileUri field should be set for Java/Scala language type.
  final pulumi.Input<String>? mainFileUri;
  /// Configuration properties as a set of key/value pairs, which will be passed on to the Spark application.
  /// For more information, see Apache Spark and the procedure option list.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  final pulumi.Input<Map<String, String>>? properties;
  /// Python files to be placed on the PYTHONPATH for PySpark application. Supported file types: .py, .egg, and .zip. For more information about Apache Spark, see Apache Spark.
  final pulumi.Input<List<String>>? pyFileUris;
  /// Runtime version. If not specified, the default runtime version is used.
  final pulumi.Input<String>? runtimeVersion;

  /// Creates a new [RoutineSparkOptions].
  /// [archiveUris] Archive files to be extracted into the working directory of each executor. For more information about Apache Spark, see Apache Spark.
  /// [connection] Fully qualified name of the user-provided Spark connection object.
  /// [containerImage] Custom container image for the runtime environment.
  /// [fileUris] Files to be placed in the working directory of each executor. For more information about Apache Spark, see Apache Spark.
  /// [jarUris] JARs to include on the driver and executor CLASSPATH. For more information about Apache Spark, see Apache Spark.
  /// [mainClass] The fully qualified name of a class in jarUris, for example, com.example.wordcount.
  /// [mainFileUri] The main file/jar URI of the Spark application.
  /// [properties] Configuration properties as a set of key/value pairs, which will be passed on to the Spark application.
  /// [pyFileUris] Python files to be placed on the PYTHONPATH for PySpark application. Supported file types: .py, .egg, and .zip. For more information about Apache Spark, see Apache Spark.
  /// [runtimeVersion] Runtime version. If not specified, the default runtime version is used.
  const RoutineSparkOptions({
    this.archiveUris,
    this.connection,
    this.containerImage,
    this.fileUris,
    this.jarUris,
    this.mainClass,
    this.mainFileUri,
    this.properties,
    this.pyFileUris,
    this.runtimeVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveUris': ?archiveUris,
      'connection': ?connection,
      'containerImage': ?containerImage,
      'fileUris': ?fileUris,
      'jarUris': ?jarUris,
      'mainClass': ?mainClass,
      'mainFileUri': ?mainFileUri,
      'properties': ?properties,
      'pyFileUris': ?pyFileUris,
      'runtimeVersion': ?runtimeVersion,
    };
  }

  factory RoutineSparkOptions.fromMap(Map<String, dynamic> map) {
    return RoutineSparkOptions(
      archiveUris: (() { final guardedValue = map['archiveUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      connection: (() { final guardedValue = map['connection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerImage: (() { final guardedValue = map['containerImage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileUris: (() { final guardedValue = map['fileUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      jarUris: (() { final guardedValue = map['jarUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      mainClass: (() { final guardedValue = map['mainClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mainFileUri: (() { final guardedValue = map['mainFileUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      pyFileUris: (() { final guardedValue = map['pyFileUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      runtimeVersion: (() { final guardedValue = map['runtimeVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

