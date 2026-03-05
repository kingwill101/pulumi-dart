// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a network service that is managed by a `NetworkPolicy` resource. A network service provides a way to control an aspect of external access to VMware workloads. For example, whether the VMware workloads in the private clouds governed by a network policy can access or be accessed from the internet.
class NetworkService {
  /// True if the service is enabled; false otherwise.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [NetworkService].
  /// [enabled] True if the service is enabled; false otherwise.
  NetworkService({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory NetworkService.fromMap(Map<String, dynamic> map) {
    return NetworkService(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

