// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_exclusion_properties.dart';

/// Extended Properties for Azure IaasVM Backup.
class ExtendedProperties {
  /// Extended Properties for Disk Exclusion.
  final pulumi.Input<DiskExclusionProperties>? diskExclusionProperties;
  /// Linux VM name
  final pulumi.Input<String>? linuxVmApplicationName;

  /// Creates a new [ExtendedProperties].
  /// [diskExclusionProperties] Extended Properties for Disk Exclusion.
  /// [linuxVmApplicationName] Linux VM name
  ExtendedProperties({
    this.diskExclusionProperties,
    this.linuxVmApplicationName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskExclusionProperties': ?pulumi.Input.mapOptionalInputValue<DiskExclusionProperties, Map<String, dynamic>>(diskExclusionProperties, (value) => value.toMap()),
      'linuxVmApplicationName': ?linuxVmApplicationName,
    };
  }

  factory ExtendedProperties.fromMap(Map<String, dynamic> map) {
    return ExtendedProperties(
      diskExclusionProperties: map['diskExclusionProperties'] == null ? null : (DiskExclusionProperties.fromMap((map['diskExclusionProperties']! as Map).cast<String, dynamic>())).input(),
      linuxVmApplicationName: map['linuxVmApplicationName'] == null ? null : (map['linuxVmApplicationName']! as String).input(),
    );
  }
}

