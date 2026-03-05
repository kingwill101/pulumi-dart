// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_claim.dart';

/// ResourceClaimSpec defines what is being requested in a ResourceClaim and how to configure it.
class ResourceClaimSpec {
  /// Devices defines how to request devices.
  final pulumi.Input<DeviceClaim>? devices;

  /// Creates a new [ResourceClaimSpec].
  /// [devices] Devices defines how to request devices.
  ResourceClaimSpec({
    this.devices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devices': ?pulumi.Input.mapOptionalInputValue<DeviceClaim, Map<String, dynamic>>(devices, (value) => value.toMap()),
    };
  }

  factory ResourceClaimSpec.fromMap(Map<String, dynamic> map) {
    return ResourceClaimSpec(
      devices: (() { final guardedValue = map['devices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeviceClaim.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

