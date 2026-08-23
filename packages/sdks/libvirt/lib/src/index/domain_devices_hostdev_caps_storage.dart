// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_hostdev_caps_storage_source.dart';

class DomainDevicesHostdevCapsStorage {
  /// Sets the source attributes for the host device's storage capabilities.
  final pulumi.Input<DomainDevicesHostdevCapsStorageSource>? source;

  /// Creates a new [DomainDevicesHostdevCapsStorage].
  /// [source] Sets the source attributes for the host device's storage capabilities.
  const DomainDevicesHostdevCapsStorage({
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'source': ?pulumi.Input.mapOptionalInputValue<DomainDevicesHostdevCapsStorageSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory DomainDevicesHostdevCapsStorage.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevCapsStorage(
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesHostdevCapsStorageSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
