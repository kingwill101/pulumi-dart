// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigFileResponseDeploymentmanagerV2 {
  /// The contents of the file.
  final pulumi.Input<String> content;

  /// Creates a new [ConfigFileResponseDeploymentmanagerV2].
  /// [content] The contents of the file.
  const ConfigFileResponseDeploymentmanagerV2({
    required this.content,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
    };
  }

  factory ConfigFileResponseDeploymentmanagerV2.fromMap(Map<String, dynamic> map) {
    return ConfigFileResponseDeploymentmanagerV2(
      content: pulumi.Input.fromValue(map['content'] as String),
    );
  }
}
