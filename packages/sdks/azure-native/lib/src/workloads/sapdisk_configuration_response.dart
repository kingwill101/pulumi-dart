// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_details_response.dart';
import 'disk_volume_configuration_response.dart';

/// The SAP Disk Configuration contains 'recommended disk' details and list of supported disks detail for a volume type.
class SAPDiskConfigurationResponse {
  /// The recommended disk details for a given VM Sku.
  final pulumi.Input<DiskVolumeConfigurationResponse>? recommendedConfiguration;
  /// The list of supported disks for a given VM Sku.
  final pulumi.Input<List<DiskDetailsResponse>>? supportedConfigurations;

  /// Creates a new [SAPDiskConfigurationResponse].
  /// [recommendedConfiguration] The recommended disk details for a given VM Sku.
  /// [supportedConfigurations] The list of supported disks for a given VM Sku.
  SAPDiskConfigurationResponse({
    this.recommendedConfiguration,
    this.supportedConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recommendedConfiguration': ?pulumi.Input.mapOptionalInputValue<DiskVolumeConfigurationResponse, Map<String, dynamic>>(recommendedConfiguration, (value) => value.toMap()),
      'supportedConfigurations': ?pulumi.Input.mapOptionalInputValue<List<DiskDetailsResponse>, List<Map<String, dynamic>>>(supportedConfigurations, (value) => pulumi.Input.encodeList<DiskDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SAPDiskConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return SAPDiskConfigurationResponse(
      recommendedConfiguration: map['recommendedConfiguration'] == null ? null : (DiskVolumeConfigurationResponse.fromMap((map['recommendedConfiguration']! as Map).cast<String, dynamic>())).input(),
      supportedConfigurations: map['supportedConfigurations'] == null ? null : (pulumi.Input.decodeList<DiskDetailsResponse>(map['supportedConfigurations']!, (value) => DiskDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

