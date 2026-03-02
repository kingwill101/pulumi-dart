// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_machine_configuration_data.dart';
import 'storage_appliance_configuration_data.dart';

class RackDefinition {
  /// The zone name used for this rack when created. Availability zones are used for workload placement.
  final pulumi.Input<String>? availabilityZone;
  /// The unordered list of bare metal machine configuration.
  final pulumi.Input<List<BareMetalMachineConfigurationData>>? bareMetalMachineConfigurationData;
  /// The resource ID of the network rack that matches this rack definition.
  final pulumi.Input<String> networkRackId;
  /// The free-form description of the rack's location.
  final pulumi.Input<String>? rackLocation;
  /// The unique identifier for the rack within Network Cloud cluster. An alternate unique alphanumeric value other than a serial number may be provided if desired.
  final pulumi.Input<String> rackSerialNumber;
  /// The resource ID of the sku for the rack being added.
  final pulumi.Input<String> rackSkuId;
  /// The list of storage appliance configuration data for this rack.
  final pulumi.Input<List<StorageApplianceConfigurationData>>? storageApplianceConfigurationData;

  /// Creates a new [RackDefinition].
  /// [availabilityZone] The zone name used for this rack when created. Availability zones are used for workload placement.
  /// [bareMetalMachineConfigurationData] The unordered list of bare metal machine configuration.
  /// [networkRackId] The resource ID of the network rack that matches this rack definition.
  /// [rackLocation] The free-form description of the rack's location.
  /// [rackSerialNumber] The unique identifier for the rack within Network Cloud cluster. An alternate unique alphanumeric value other than a serial number may be provided if desired.
  /// [rackSkuId] The resource ID of the sku for the rack being added.
  /// [storageApplianceConfigurationData] The list of storage appliance configuration data for this rack.
  RackDefinition({
    this.availabilityZone,
    this.bareMetalMachineConfigurationData,
    required this.networkRackId,
    this.rackLocation,
    required this.rackSerialNumber,
    required this.rackSkuId,
    this.storageApplianceConfigurationData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': ?availabilityZone,
      'bareMetalMachineConfigurationData': ?pulumi.Input.mapOptionalInputValue<List<BareMetalMachineConfigurationData>, List<Map<String, dynamic>>>(bareMetalMachineConfigurationData, (value) => pulumi.Input.encodeList<BareMetalMachineConfigurationData, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkRackId': networkRackId,
      'rackLocation': ?rackLocation,
      'rackSerialNumber': rackSerialNumber,
      'rackSkuId': rackSkuId,
      'storageApplianceConfigurationData': ?pulumi.Input.mapOptionalInputValue<List<StorageApplianceConfigurationData>, List<Map<String, dynamic>>>(storageApplianceConfigurationData, (value) => pulumi.Input.encodeList<StorageApplianceConfigurationData, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RackDefinition.fromMap(Map<String, dynamic> map) {
    return RackDefinition(
      availabilityZone: map['availabilityZone'] == null ? null : (map['availabilityZone']! as String).input(),
      bareMetalMachineConfigurationData: map['bareMetalMachineConfigurationData'] == null ? null : (pulumi.Input.decodeList<BareMetalMachineConfigurationData>(map['bareMetalMachineConfigurationData']!, (value) => BareMetalMachineConfigurationData.fromMap((value as Map).cast<String, dynamic>()))).input(),
      networkRackId: (map['networkRackId'] as String).input(),
      rackLocation: map['rackLocation'] == null ? null : (map['rackLocation']! as String).input(),
      rackSerialNumber: (map['rackSerialNumber'] as String).input(),
      rackSkuId: (map['rackSkuId'] as String).input(),
      storageApplianceConfigurationData: map['storageApplianceConfigurationData'] == null ? null : (pulumi.Input.decodeList<StorageApplianceConfigurationData>(map['storageApplianceConfigurationData']!, (value) => StorageApplianceConfigurationData.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

