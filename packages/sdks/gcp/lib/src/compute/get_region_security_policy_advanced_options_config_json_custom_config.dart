// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionSecurityPolicyAdvancedOptionsConfigJsonCustomConfig {
  /// A list of custom Content-Type header values to apply the JSON parsing.
  final pulumi.Input<List<String>> contentTypes;

  /// Creates a new [GetRegionSecurityPolicyAdvancedOptionsConfigJsonCustomConfig].
  /// [contentTypes] A list of custom Content-Type header values to apply the JSON parsing.
  const GetRegionSecurityPolicyAdvancedOptionsConfigJsonCustomConfig({
    required this.contentTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentTypes': contentTypes,
    };
  }

  factory GetRegionSecurityPolicyAdvancedOptionsConfigJsonCustomConfig.fromMap(Map<String, dynamic> map) {
    return GetRegionSecurityPolicyAdvancedOptionsConfigJsonCustomConfig(
      contentTypes: pulumi.Input.fromValue((map['contentTypes'] as List).cast<String>()),
    );
  }
}
