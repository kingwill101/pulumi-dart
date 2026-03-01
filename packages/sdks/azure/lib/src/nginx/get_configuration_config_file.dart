// ignore_for_file: unused_element, unnecessary_cast


class GetConfigurationConfigFile {
  /// The base-64 encoded contents of this configuration file.
  final String content;
  /// The path of this configuration file.
  final String virtualPath;

  /// Creates a new [GetConfigurationConfigFile].
  /// [content] The base-64 encoded contents of this configuration file.
  /// [virtualPath] The path of this configuration file.
  GetConfigurationConfigFile({
    required this.content,
    required this.virtualPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'virtualPath': virtualPath,
    };
  }

  factory GetConfigurationConfigFile.fromMap(Map<String, dynamic> map) {
    return GetConfigurationConfigFile(
      content: map['content'] as String,
      virtualPath: map['virtualPath'] as String,
    );
  }
}

