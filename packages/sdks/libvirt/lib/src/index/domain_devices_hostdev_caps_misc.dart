// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_hostdev_caps_misc_source.dart';

class DomainDevicesHostdevCapsMisc {
  /// Specifies the source attributes for the miscellaneous capabilities of the host device.
  final pulumi.Input<DomainDevicesHostdevCapsMiscSource>? source;

  /// Creates a new [DomainDevicesHostdevCapsMisc].
  /// [source] Specifies the source attributes for the miscellaneous capabilities of the host device.
  const DomainDevicesHostdevCapsMisc({
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'source': ?pulumi.Input.mapOptionalInputValue<DomainDevicesHostdevCapsMiscSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory DomainDevicesHostdevCapsMisc.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevCapsMisc(
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesHostdevCapsMiscSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
