// ignore_for_file: unused_element, unnecessary_cast


class ConfigFileDeploymentmanagerV2beta {
  /// The contents of the file.
  final String? content;

  /// Creates a new [ConfigFileDeploymentmanagerV2beta].
  /// [content] The contents of the file.
  ConfigFileDeploymentmanagerV2beta({
    this.content,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
    };
  }

  factory ConfigFileDeploymentmanagerV2beta.fromMap(Map<String, dynamic> map) {
    return ConfigFileDeploymentmanagerV2beta(
      content: map['content'] == null ? null : map['content'] as String,
    );
  }
}

