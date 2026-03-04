// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSecurityPolicyAdvancedOptionsConfigJsonCustomConfig {
  /// A list of custom Content-Type header values to apply the JSON parsing.
  final pulumi.Input<List<String>> contentTypes;

  /// Creates a new [GetSecurityPolicyAdvancedOptionsConfigJsonCustomConfig].
  /// [contentTypes] A list of custom Content-Type header values to apply the JSON parsing.
  GetSecurityPolicyAdvancedOptionsConfigJsonCustomConfig({
    required this.contentTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'contentTypes': contentTypes};
  }

  factory GetSecurityPolicyAdvancedOptionsConfigJsonCustomConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetSecurityPolicyAdvancedOptionsConfigJsonCustomConfig(
      contentTypes: pulumi.Input.fromValue(
        (map['contentTypes'] as List).cast<String>(),
      ),
    );
  }
}
