// ignore_for_file: unused_element, unnecessary_cast

import 'disk_exclusion_properties_response.dart';

/// Extended Properties for Azure IaasVM Backup.
class ExtendedPropertiesResponse {
  /// Extended Properties for Disk Exclusion.
  final DiskExclusionPropertiesResponse? diskExclusionProperties;
  /// Linux VM name
  final String? linuxVmApplicationName;

  /// Creates a new [ExtendedPropertiesResponse].
  /// [diskExclusionProperties] Extended Properties for Disk Exclusion.
  /// [linuxVmApplicationName] Linux VM name
  ExtendedPropertiesResponse({
    this.diskExclusionProperties,
    this.linuxVmApplicationName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskExclusionProperties': ?diskExclusionProperties == null ? null : diskExclusionProperties!.toMap(),
      'linuxVmApplicationName': ?linuxVmApplicationName,
    };
  }

  factory ExtendedPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ExtendedPropertiesResponse(
      diskExclusionProperties: map['diskExclusionProperties'] == null ? null : DiskExclusionPropertiesResponse.fromMap((map['diskExclusionProperties'] as Map).cast<String, dynamic>()),
      linuxVmApplicationName: map['linuxVmApplicationName'] == null ? null : map['linuxVmApplicationName'] as String,
    );
  }
}

