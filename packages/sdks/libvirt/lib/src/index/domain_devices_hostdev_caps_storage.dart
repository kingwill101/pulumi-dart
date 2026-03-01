// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_hostdev_caps_storage_source.dart';

class DomainDevicesHostdevCapsStorage {
  /// Sets the source attributes for the host device's storage capabilities.
  final DomainDevicesHostdevCapsStorageSource? source;

  /// Creates a new [DomainDevicesHostdevCapsStorage].
  /// [source] Sets the source attributes for the host device's storage capabilities.
  DomainDevicesHostdevCapsStorage({
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'source': ?source == null ? null : source!.toMap(),
    };
  }

  factory DomainDevicesHostdevCapsStorage.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevCapsStorage(
      source: map['source'] == null ? null : DomainDevicesHostdevCapsStorageSource.fromMap((map['source'] as Map).cast<String, dynamic>()),
    );
  }
}

