// ignore_for_file: unused_element, unnecessary_cast


class ApiConfigGrpcServiceFileDescriptorSet {
  /// Base64 encoded content of the file.
  final String contents;
  /// The file path (full or relative path). This is typically the path of the file when it is uploaded.
  final String path;

  /// Creates a new [ApiConfigGrpcServiceFileDescriptorSet].
  /// [contents] Base64 encoded content of the file.
  /// [path] The file path (full or relative path). This is typically the path of the file when it is uploaded.
  ApiConfigGrpcServiceFileDescriptorSet({
    required this.contents,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contents': contents,
      'path': path,
    };
  }

  factory ApiConfigGrpcServiceFileDescriptorSet.fromMap(Map<String, dynamic> map) {
    return ApiConfigGrpcServiceFileDescriptorSet(
      contents: map['contents'] as String,
      path: map['path'] as String,
    );
  }
}

