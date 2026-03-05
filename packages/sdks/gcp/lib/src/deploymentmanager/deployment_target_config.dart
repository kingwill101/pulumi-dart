// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeploymentTargetConfig {
  /// The full YAML contents of your configuration file.
  final pulumi.Input<String> content;

  /// Creates a new [DeploymentTargetConfig].
  /// [content] The full YAML contents of your configuration file.
  DeploymentTargetConfig({
    required this.content,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
    };
  }

  factory DeploymentTargetConfig.fromMap(Map<String, dynamic> map) {
    return DeploymentTargetConfig(
      content: pulumi.Input.fromValue(map['content'] as String),
    );
  }
}

