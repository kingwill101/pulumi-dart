// ignore_for_file: unused_element, unnecessary_cast


class RuntimeProtectionConfigurationResponse {
  /// The mode of operation for runtime protection.
  final String? enforcementLevel;

  /// Creates a new [RuntimeProtectionConfigurationResponse].
  /// [enforcementLevel] The mode of operation for runtime protection.
  RuntimeProtectionConfigurationResponse({
    this.enforcementLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enforcementLevel': ?enforcementLevel,
    };
  }

  factory RuntimeProtectionConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return RuntimeProtectionConfigurationResponse(
      enforcementLevel: map['enforcementLevel'] == null ? null : map['enforcementLevel'] as String,
    );
  }
}

