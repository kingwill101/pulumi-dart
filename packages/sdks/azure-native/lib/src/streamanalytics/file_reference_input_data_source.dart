// ignore_for_file: unused_element, unnecessary_cast


/// Describes a file input data source that contains reference data.
class FileReferenceInputDataSource {
  /// The path of the file.
  final String? path;
  /// Indicates the type of input data source containing reference data. Required on PUT (CreateOrReplace) requests.
  /// Expected value is 'File'.
  final String type;

  /// Creates a new [FileReferenceInputDataSource].
  /// [path] The path of the file.
  /// [type] Indicates the type of input data source containing reference data. Required on PUT (CreateOrReplace) requests.
  FileReferenceInputDataSource({
    this.path,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
      'type': type,
    };
  }

  factory FileReferenceInputDataSource.fromMap(Map<String, dynamic> map) {
    return FileReferenceInputDataSource(
      path: map['path'] == null ? null : map['path'] as String,
      type: map['type'] as String,
    );
  }
}

