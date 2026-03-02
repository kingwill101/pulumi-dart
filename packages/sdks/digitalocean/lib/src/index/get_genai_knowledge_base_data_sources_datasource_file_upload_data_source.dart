// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGenaiKnowledgeBaseDataSourcesDatasourceFileUploadDataSource {
  /// The original name of the uploaded file
  final pulumi.Input<String>? originalFileName;
  /// The size of the file in bytes
  final pulumi.Input<String>? sizeInBytes;
  /// The stored object key for the file
  final pulumi.Input<String>? storedObjectKey;

  /// Creates a new [GetGenaiKnowledgeBaseDataSourcesDatasourceFileUploadDataSource].
  /// [originalFileName] The original name of the uploaded file
  /// [sizeInBytes] The size of the file in bytes
  /// [storedObjectKey] The stored object key for the file
  GetGenaiKnowledgeBaseDataSourcesDatasourceFileUploadDataSource({
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

  factory GetGenaiKnowledgeBaseDataSourcesDatasourceFileUploadDataSource.fromMap(Map<String, dynamic> map) {
    return GetGenaiKnowledgeBaseDataSourcesDatasourceFileUploadDataSource(
      originalFileName: map['originalFileName'] == null ? null : (map['originalFileName']! as String).input(),
      sizeInBytes: map['sizeInBytes'] == null ? null : (map['sizeInBytes']! as String).input(),
      storedObjectKey: map['storedObjectKey'] == null ? null : (map['storedObjectKey']! as String).input(),
    );
  }
}

