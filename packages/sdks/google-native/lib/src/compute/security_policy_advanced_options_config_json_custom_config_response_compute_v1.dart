// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityPolicyAdvancedOptionsConfigJsonCustomConfigResponseComputeV1 {
  /// A list of custom Content-Type header values to apply the JSON parsing. As per RFC 1341, a Content-Type header value has the following format: Content-Type := type "/" subtype *[";" parameter] When configuring a custom Content-Type header value, only the type/subtype needs to be specified, and the parameters should be excluded.
  final pulumi.Input<List<String>> contentTypes;

  /// Creates a new [SecurityPolicyAdvancedOptionsConfigJsonCustomConfigResponseComputeV1].
  /// [contentTypes] A list of custom Content-Type header values to apply the JSON parsing. As per RFC 1341, a Content-Type header value has the following format: Content-Type := type "/" subtype *[";" parameter] When configuring a custom Content-Type header value, only the type/subtype needs to be specified, and the parameters should be excluded.
  const SecurityPolicyAdvancedOptionsConfigJsonCustomConfigResponseComputeV1({
    required this.contentTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentTypes': contentTypes,
    };
  }

  factory SecurityPolicyAdvancedOptionsConfigJsonCustomConfigResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyAdvancedOptionsConfigJsonCustomConfigResponseComputeV1(
      contentTypes: pulumi.Input.fromValue((map['contentTypes'] as List).cast<String>()),
    );
  }
}
