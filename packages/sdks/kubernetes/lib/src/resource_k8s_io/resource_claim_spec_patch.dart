// ignore_for_file: unused_element, unnecessary_cast

import 'device_claim_patch.dart';

/// ResourceClaimSpec defines what is being requested in a ResourceClaim and how to configure it.
class ResourceClaimSpecPatch {
  /// Devices defines how to request devices.
  final DeviceClaimPatch? devices;

  /// Creates a new [ResourceClaimSpecPatch].
  /// [devices] Devices defines how to request devices.
  ResourceClaimSpecPatch({
    this.devices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devices': ?devices == null ? null : devices!.toMap(),
    };
  }

  factory ResourceClaimSpecPatch.fromMap(Map<String, dynamic> map) {
    return ResourceClaimSpecPatch(
      devices: map['devices'] == null ? null : DeviceClaimPatch.fromMap((map['devices'] as Map).cast<String, dynamic>()),
    );
  }
}

