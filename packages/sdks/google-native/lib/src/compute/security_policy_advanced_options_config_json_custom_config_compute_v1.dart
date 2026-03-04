// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityPolicyAdvancedOptionsConfigJsonCustomConfigComputeV1 {
  /// A list of custom Content-Type header values to apply the JSON parsing. As per RFC 1341, a Content-Type header value has the following format: Content-Type := type "/" subtype *[";" parameter] When configuring a custom Content-Type header value, only the type/subtype needs to be specified, and the parameters should be excluded.
  final pulumi.Input<List<String>>? contentTypes;

  /// Creates a new [SecurityPolicyAdvancedOptionsConfigJsonCustomConfigComputeV1].
  /// [contentTypes] A list of custom Content-Type header values to apply the JSON parsing. As per RFC 1341, a Content-Type header value has the following format: Content-Type := type "/" subtype *[";" parameter] When configuring a custom Content-Type header value, only the type/subtype needs to be specified, and the parameters should be excluded.
  SecurityPolicyAdvancedOptionsConfigJsonCustomConfigComputeV1({
    this.contentTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'contentTypes': ?contentTypes};
  }

  factory SecurityPolicyAdvancedOptionsConfigJsonCustomConfigComputeV1.fromMap(
    Map<String, dynamic> map,
  ) {
    return SecurityPolicyAdvancedOptionsConfigJsonCustomConfigComputeV1(
      contentTypes: (() {
        final guardedValue = map['contentTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
