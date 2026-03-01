// ignore_for_file: unused_element, unnecessary_cast


/// Configuration for the PodSecurityPolicy feature.
class PodSecurityPolicyConfigResponse {
  /// Enable the PodSecurityPolicy controller for this cluster. If enabled, pods must be valid under a PodSecurityPolicy to be created.
  final bool enabled;

  /// Creates a new [PodSecurityPolicyConfigResponse].
  /// [enabled] Enable the PodSecurityPolicy controller for this cluster. If enabled, pods must be valid under a PodSecurityPolicy to be created.
  PodSecurityPolicyConfigResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory PodSecurityPolicyConfigResponse.fromMap(Map<String, dynamic> map) {
    return PodSecurityPolicyConfigResponse(
      enabled: map['enabled'] as bool,
    );
  }
}

