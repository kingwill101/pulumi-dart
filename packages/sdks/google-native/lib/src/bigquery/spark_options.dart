// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Options for a user-defined Spark routine.
class SparkOptions {
  /// Archive files to be extracted into the working directory of each executor. For more information about Apache Spark, see [Apache Spark](https://spark.apache.org/docs/latest/index.html).
  final pulumi.Input<List<String>>? archiveUris;
  /// Fully qualified name of the user-provided Spark connection object. Format: ```"projects/{project_id}/locations/{location_id}/connections/{connection_id}"```
  final pulumi.Input<String>? connection;
  /// Custom container image for the runtime environment.
  final pulumi.Input<String>? containerImage;
  /// Files to be placed in the working directory of each executor. For more information about Apache Spark, see [Apache Spark](https://spark.apache.org/docs/latest/index.html).
  final pulumi.Input<List<String>>? fileUris;
  /// JARs to include on the driver and executor CLASSPATH. For more information about Apache Spark, see [Apache Spark](https://spark.apache.org/docs/latest/index.html).
  final pulumi.Input<List<String>>? jarUris;
  /// The fully qualified name of a class in jar_uris, for example, com.example.wordcount. Exactly one of main_class and main_jar_uri field should be set for Java/Scala language type.
  final pulumi.Input<String>? mainClass;
  /// The main file/jar URI of the Spark application. Exactly one of the definition_body field and the main_file_uri field must be set for Python. Exactly one of main_class and main_file_uri field should be set for Java/Scala language type.
  final pulumi.Input<String>? mainFileUri;
  /// Configuration properties as a set of key/value pairs, which will be passed on to the Spark application. For more information, see [Apache Spark](https://spark.apache.org/docs/latest/index.html) and the [procedure option list](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#procedure_option_list).
  final pulumi.Input<Map<String, String>>? properties;
  /// Python files to be placed on the PYTHONPATH for PySpark application. Supported file types: `.py`, `.egg`, and `.zip`. For more information about Apache Spark, see [Apache Spark](https://spark.apache.org/docs/latest/index.html).
  final pulumi.Input<List<String>>? pyFileUris;
  /// Runtime version. If not specified, the default runtime version is used.
  final pulumi.Input<String>? runtimeVersion;

  /// Creates a new [SparkOptions].
  /// [archiveUris] Archive files to be extracted into the working directory of each executor. For more information about Apache Spark, see [Apache Spark](https://spark.apache.org/docs/latest/index.html).
  /// [connection] Fully qualified name of the user-provided Spark connection object. Format: ```"projects/{project_id}/locations/{location_id}/connections/{connection_id}"```
  /// [containerImage] Custom container image for the runtime environment.
  /// [fileUris] Files to be placed in the working directory of each executor. For more information about Apache Spark, see [Apache Spark](https://spark.apache.org/docs/latest/index.html).
  /// [jarUris] JARs to include on the driver and executor CLASSPATH. For more information about Apache Spark, see [Apache Spark](https://spark.apache.org/docs/latest/index.html).
  /// [mainClass] The fully qualified name of a class in jar_uris, for example, com.example.wordcount. Exactly one of main_class and main_jar_uri field should be set for Java/Scala language type.
  /// [mainFileUri] The main file/jar URI of the Spark application. Exactly one of the definition_body field and the main_file_uri field must be set for Python. Exactly one of main_class and main_file_uri field should be set for Java/Scala language type.
  /// [properties] Configuration properties as a set of key/value pairs, which will be passed on to the Spark application. For more information, see [Apache Spark](https://spark.apache.org/docs/latest/index.html) and the [procedure option list](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#procedure_option_list).
  /// [pyFileUris] Python files to be placed on the PYTHONPATH for PySpark application. Supported file types: `.py`, `.egg`, and `.zip`. For more information about Apache Spark, see [Apache Spark](https://spark.apache.org/docs/latest/index.html).
  /// [runtimeVersion] Runtime version. If not specified, the default runtime version is used.
  SparkOptions({
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

  factory SparkOptions.fromMap(Map<String, dynamic> map) {
    return SparkOptions(
      archiveUris: map['archiveUris'] == null ? null : ((map['archiveUris'] as List).cast<String>()).input(),
      connection: map['connection'] == null ? null : (map['connection'] as String).input(),
      containerImage: map['containerImage'] == null ? null : (map['containerImage'] as String).input(),
      fileUris: map['fileUris'] == null ? null : ((map['fileUris'] as List).cast<String>()).input(),
      jarUris: map['jarUris'] == null ? null : ((map['jarUris'] as List).cast<String>()).input(),
      mainClass: map['mainClass'] == null ? null : (map['mainClass'] as String).input(),
      mainFileUri: map['mainFileUri'] == null ? null : (map['mainFileUri'] as String).input(),
      properties: map['properties'] == null ? null : ((map['properties'] as Map).cast<String, String>()).input(),
      pyFileUris: map['pyFileUris'] == null ? null : ((map['pyFileUris'] as List).cast<String>()).input(),
      runtimeVersion: map['runtimeVersion'] == null ? null : (map['runtimeVersion'] as String).input(),
    );
  }
}

