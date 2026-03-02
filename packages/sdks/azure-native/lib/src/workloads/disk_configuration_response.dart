// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_volume_configuration_response.dart';

/// The Disk Configuration Details.
class DiskConfigurationResponse {
  /// The disk configuration for the db volume. For HANA, Required volumes are: ['hana/data', 'hana/log', hana/shared', 'usr/sap', 'os'], Optional volume : ['backup'].
  final pulumi.Input<Map<String, DiskVolumeConfigurationResponse>>? diskVolumeConfigurations;

  /// Creates a new [DiskConfigurationResponse].
  /// [diskVolumeConfigurations] The disk configuration for the db volume. For HANA, Required volumes are: ['hana/data', 'hana/log', hana/shared', 'usr/sap', 'os'], Optional volume : ['backup'].
  DiskConfigurationResponse({
    this.diskVolumeConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskVolumeConfigurations': ?pulumi.Input.mapOptionalInputValue<Map<String, DiskVolumeConfigurationResponse>, Map<String, Map<String, dynamic>>>(diskVolumeConfigurations, (value) => pulumi.Input.encodeMapValues<DiskVolumeConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DiskConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return DiskConfigurationResponse(
      diskVolumeConfigurations: map['diskVolumeConfigurations'] == null ? null : (pulumi.Input.decodeMapValues<DiskVolumeConfigurationResponse>(map['diskVolumeConfigurations'], (value) => DiskVolumeConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

