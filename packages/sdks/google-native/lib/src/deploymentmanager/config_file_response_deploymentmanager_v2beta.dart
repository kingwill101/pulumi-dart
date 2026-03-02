// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigFileResponseDeploymentmanagerV2beta {
  /// The contents of the file.
  final pulumi.Input<String> content;

  /// Creates a new [ConfigFileResponseDeploymentmanagerV2beta].
  /// [content] The contents of the file.
  ConfigFileResponseDeploymentmanagerV2beta({
    required this.content,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
    };
  }

  factory ConfigFileResponseDeploymentmanagerV2beta.fromMap(Map<String, dynamic> map) {
    return ConfigFileResponseDeploymentmanagerV2beta(
      content: (map['content'] as String).input(),
    );
  }
}

