// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityPolicyAdvancedOptionsConfigJsonCustomConfig {
  /// A list of custom Content-Type header values to apply the JSON parsing. The
  /// format of the Content-Type header values is defined in
  /// [RFC 1341](https://www.ietf.org/rfc/rfc1341.txt). When configuring a custom Content-Type header
  /// value, only the type/subtype needs to be specified, and the parameters should be excluded.
  final pulumi.Input<List<String>> contentTypes;

  /// Creates a new [SecurityPolicyAdvancedOptionsConfigJsonCustomConfig].
  /// [contentTypes] A list of custom Content-Type header values to apply the JSON parsing. The
  SecurityPolicyAdvancedOptionsConfigJsonCustomConfig({
    required this.contentTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'contentTypes': contentTypes};
  }

  factory SecurityPolicyAdvancedOptionsConfigJsonCustomConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return SecurityPolicyAdvancedOptionsConfigJsonCustomConfig(
      contentTypes: pulumi.Input.fromValue(
        (map['contentTypes'] as List).cast<String>(),
      ),
    );
  }
}
