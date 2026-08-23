// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyAdmissionWhitelistPattern {
  /// An image name pattern to whitelist, in the form
  /// `registry/path/to/image`. This supports a trailing * as a
  /// wildcard, but this is allowed only in text after the registry/
  /// part.
  final pulumi.Input<String> namePattern;

  /// Creates a new [PolicyAdmissionWhitelistPattern].
  /// [namePattern] An image name pattern to whitelist, in the form
  const PolicyAdmissionWhitelistPattern({
    required this.namePattern,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namePattern': namePattern,
    };
  }

  factory PolicyAdmissionWhitelistPattern.fromMap(Map<String, dynamic> map) {
    return PolicyAdmissionWhitelistPattern(
      namePattern: pulumi.Input.fromValue(map['namePattern'] as String),
    );
  }
}
