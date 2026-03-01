// ignore_for_file: unused_element, unnecessary_cast


class SecurityPolicyAdvancedOptionsConfigJsonCustomConfigResponse {
  /// A list of custom Content-Type header values to apply the JSON parsing. As per RFC 1341, a Content-Type header value has the following format: Content-Type := type "/" subtype *[";" parameter] When configuring a custom Content-Type header value, only the type/subtype needs to be specified, and the parameters should be excluded.
  final List<String> contentTypes;

  /// Creates a new [SecurityPolicyAdvancedOptionsConfigJsonCustomConfigResponse].
  /// [contentTypes] A list of custom Content-Type header values to apply the JSON parsing. As per RFC 1341, a Content-Type header value has the following format: Content-Type := type "/" subtype *[";" parameter] When configuring a custom Content-Type header value, only the type/subtype needs to be specified, and the parameters should be excluded.
  SecurityPolicyAdvancedOptionsConfigJsonCustomConfigResponse({
    required this.contentTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentTypes': contentTypes,
    };
  }

  factory SecurityPolicyAdvancedOptionsConfigJsonCustomConfigResponse.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyAdvancedOptionsConfigJsonCustomConfigResponse(
      contentTypes: (map['contentTypes'] as List).cast<String>(),
    );
  }
}

