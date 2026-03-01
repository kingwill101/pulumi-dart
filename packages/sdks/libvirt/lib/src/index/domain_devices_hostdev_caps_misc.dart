// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_hostdev_caps_misc_source.dart';

class DomainDevicesHostdevCapsMisc {
  /// Specifies the source attributes for the miscellaneous capabilities of the host device.
  final DomainDevicesHostdevCapsMiscSource? source;

  /// Creates a new [DomainDevicesHostdevCapsMisc].
  /// [source] Specifies the source attributes for the miscellaneous capabilities of the host device.
  DomainDevicesHostdevCapsMisc({
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'source': ?source == null ? null : source!.toMap(),
    };
  }

  factory DomainDevicesHostdevCapsMisc.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevCapsMisc(
      source: map['source'] == null ? null : DomainDevicesHostdevCapsMiscSource.fromMap((map['source'] as Map).cast<String, dynamic>()),
    );
  }
}

