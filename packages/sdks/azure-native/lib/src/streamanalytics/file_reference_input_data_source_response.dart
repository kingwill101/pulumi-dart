// ignore_for_file: unused_element, unnecessary_cast


/// Describes a file input data source that contains reference data.
class FileReferenceInputDataSourceResponse {
  /// The path of the file.
  final String? path;
  /// Indicates the type of input data source containing reference data. Required on PUT (CreateOrReplace) requests.
  /// Expected value is 'File'.
  final String type;

  /// Creates a new [FileReferenceInputDataSourceResponse].
  /// [path] The path of the file.
  /// [type] Indicates the type of input data source containing reference data. Required on PUT (CreateOrReplace) requests.
  FileReferenceInputDataSourceResponse({
    this.path,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
      'type': type,
    };
  }

  factory FileReferenceInputDataSourceResponse.fromMap(Map<String, dynamic> map) {
    return FileReferenceInputDataSourceResponse(
      path: map['path'] == null ? null : map['path'] as String,
      type: map['type'] as String,
    );
  }
}

