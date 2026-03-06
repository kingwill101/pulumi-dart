// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_exclusion_properties_response.dart';

/// Extended Properties for Azure IaasVM Backup.
class ExtendedPropertiesResponse {
  /// Extended Properties for Disk Exclusion.
  final pulumi.Input<DiskExclusionPropertiesResponse>? diskExclusionProperties;
  /// Linux VM name
  final pulumi.Input<String>? linuxVmApplicationName;

  /// Creates a new [ExtendedPropertiesResponse].
  /// [diskExclusionProperties] Extended Properties for Disk Exclusion.
  /// [linuxVmApplicationName] Linux VM name
  const ExtendedPropertiesResponse({
    this.diskExclusionProperties,
    this.linuxVmApplicationName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskExclusionProperties': ?pulumi.Input.mapOptionalInputValue<DiskExclusionPropertiesResponse, Map<String, dynamic>>(diskExclusionProperties, (value) => value.toMap()),
      'linuxVmApplicationName': ?linuxVmApplicationName,
    };
  }

  factory ExtendedPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ExtendedPropertiesResponse(
      diskExclusionProperties: (() { final guardedValue = map['diskExclusionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiskExclusionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      linuxVmApplicationName: (() { final guardedValue = map['linuxVmApplicationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

