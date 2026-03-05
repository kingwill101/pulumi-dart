// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Config to block services with externalIPs field.
class ServiceExternalIPsConfigResponse {
  /// Whether Services with ExternalIPs field are allowed or not.
  final pulumi.Input<bool> enabled;

  /// Creates a new [ServiceExternalIPsConfigResponse].
  /// [enabled] Whether Services with ExternalIPs field are allowed or not.
  ServiceExternalIPsConfigResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ServiceExternalIPsConfigResponse.fromMap(Map<String, dynamic> map) {
    return ServiceExternalIPsConfigResponse(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

