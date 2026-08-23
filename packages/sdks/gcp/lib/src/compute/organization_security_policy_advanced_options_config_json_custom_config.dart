// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OrganizationSecurityPolicyAdvancedOptionsConfigJsonCustomConfig {
  /// A list of content types to be parsed as JSON.
  final pulumi.Input<List<String>> contentTypes;

  /// Creates a new [OrganizationSecurityPolicyAdvancedOptionsConfigJsonCustomConfig].
  /// [contentTypes] A list of content types to be parsed as JSON.
  const OrganizationSecurityPolicyAdvancedOptionsConfigJsonCustomConfig({
    required this.contentTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentTypes': contentTypes,
    };
  }

  factory OrganizationSecurityPolicyAdvancedOptionsConfigJsonCustomConfig.fromMap(Map<String, dynamic> map) {
    return OrganizationSecurityPolicyAdvancedOptionsConfigJsonCustomConfig(
      contentTypes: pulumi.Input.fromValue((map['contentTypes'] as List).cast<String>()),
    );
  }
}
