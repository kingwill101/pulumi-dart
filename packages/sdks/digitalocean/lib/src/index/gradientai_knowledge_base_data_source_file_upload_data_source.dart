// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GradientaiKnowledgeBaseDataSourceFileUploadDataSource {
  /// The original name of the uploaded file
  final pulumi.Input<String>? originalFileName;

  /// The size of the file in bytes
  final pulumi.Input<String>? sizeInBytes;

  /// The stored object key for the file
  final pulumi.Input<String>? storedObjectKey;

  /// Creates a new [GradientaiKnowledgeBaseDataSourceFileUploadDataSource].
  /// [originalFileName] The original name of the uploaded file
  /// [sizeInBytes] The size of the file in bytes
  /// [storedObjectKey] The stored object key for the file
  GradientaiKnowledgeBaseDataSourceFileUploadDataSource({
    this.originalFileName,
    this.sizeInBytes,
    this.storedObjectKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'originalFileName': ?originalFileName,
      'sizeInBytes': ?sizeInBytes,
      'storedObjectKey': ?storedObjectKey,
    };
  }

  factory GradientaiKnowledgeBaseDataSourceFileUploadDataSource.fromMap(
    Map<String, dynamic> map,
  ) {
    return GradientaiKnowledgeBaseDataSourceFileUploadDataSource(
      originalFileName: (() {
        final guardedValue = map['originalFileName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sizeInBytes: (() {
        final guardedValue = map['sizeInBytes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storedObjectKey: (() {
        final guardedValue = map['storedObjectKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
