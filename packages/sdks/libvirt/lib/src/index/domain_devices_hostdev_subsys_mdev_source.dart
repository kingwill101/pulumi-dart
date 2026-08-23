// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_hostdev_subsys_mdev_source_address.dart';

class DomainDevicesHostdevSubsysMDevSource {
  /// Sets the address for the source of the multimedia subsystem device.
  final pulumi.Input<DomainDevicesHostdevSubsysMDevSourceAddress>? address;

  /// Creates a new [DomainDevicesHostdevSubsysMDevSource].
  /// [address] Sets the address for the source of the multimedia subsystem device.
  const DomainDevicesHostdevSubsysMDevSource({
    this.address,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?pulumi.Input.mapOptionalInputValue<DomainDevicesHostdevSubsysMDevSourceAddress, Map<String, dynamic>>(address, (value) => value.toMap()),
    };
  }

  factory DomainDevicesHostdevSubsysMDevSource.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevSubsysMDevSource(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesHostdevSubsysMDevSourceAddress.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
