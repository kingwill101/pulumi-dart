// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Config to block services with externalIPs field.
class ServiceExternalIPsConfigContainerV1beta1 {
  /// Whether Services with ExternalIPs field are allowed or not.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ServiceExternalIPsConfigContainerV1beta1].
  /// [enabled] Whether Services with ExternalIPs field are allowed or not.
  ServiceExternalIPsConfigContainerV1beta1({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ServiceExternalIPsConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return ServiceExternalIPsConfigContainerV1beta1(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
    );
  }
}

