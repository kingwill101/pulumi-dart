// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionSecurityPolicyAdvancedOptionsConfigJsonCustomConfig {
  /// A list of custom Content-Type header values to apply the JSON parsing.
  final pulumi.Input<List<String>> contentTypes;

  /// Creates a new [RegionSecurityPolicyAdvancedOptionsConfigJsonCustomConfig].
  /// [contentTypes] A list of custom Content-Type header values to apply the JSON parsing.
  RegionSecurityPolicyAdvancedOptionsConfigJsonCustomConfig({
    required this.contentTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentTypes': contentTypes,
    };
  }

  factory RegionSecurityPolicyAdvancedOptionsConfigJsonCustomConfig.fromMap(Map<String, dynamic> map) {
    return RegionSecurityPolicyAdvancedOptionsConfigJsonCustomConfig(
      contentTypes: ((map['contentTypes'] as List).cast<String>()).input(),
    );
  }
}

