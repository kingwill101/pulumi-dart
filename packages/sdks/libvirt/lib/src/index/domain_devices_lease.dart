// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_lease_target.dart';

class DomainDevicesLease {
  /// Defines a unique key for identifying the lease within the domain configuration.
  final pulumi.Input<String>? key;
  /// Configures the lockspace for the lease, ensuring exclusive access to the leased device.
  final pulumi.Input<String> lockspace;
  /// Specifies the target configuration for the lease, defining where the lease applies.
  final pulumi.Input<DomainDevicesLeaseTarget>? target;

  /// Creates a new [DomainDevicesLease].
  /// [key] Defines a unique key for identifying the lease within the domain configuration.
  /// [lockspace] Configures the lockspace for the lease, ensuring exclusive access to the leased device.
  /// [target] Specifies the target configuration for the lease, defining where the lease applies.
  DomainDevicesLease({
    this.key,
    required this.lockspace,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'lockspace': lockspace,
      'target': ?pulumi.Input.mapOptionalInputValue<DomainDevicesLeaseTarget, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory DomainDevicesLease.fromMap(Map<String, dynamic> map) {
    return DomainDevicesLease(
      key: map['key'] == null ? null : (map['key']! as String).input(),
      lockspace: (map['lockspace'] as String).input(),
      target: map['target'] == null ? null : (DomainDevicesLeaseTarget.fromMap((map['target']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

