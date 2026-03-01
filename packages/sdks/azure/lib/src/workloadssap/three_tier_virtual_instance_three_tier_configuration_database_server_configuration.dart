// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'three_tier_virtual_instance_three_tier_configuration_database_server_configuration_disk_volume_configuration.dart';
import 'three_tier_virtual_instance_three_tier_configuration_database_server_configuration_virtual_machine_configuration.dart';

class ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfiguration {
  /// The database type for the Database Server. Possible values are `DB2` and `HANA`. Changing this forces a new resource to be created.
  final String? databaseType;
  /// One or more `disk_volume_configuration` blocks as defined below. Changing this forces a new resource to be created.
  final List<ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationDiskVolumeConfiguration>? diskVolumeConfigurations;
  /// The number of instances for the Database Server. Possible values are at least `1`. Changing this forces a new resource to be created.
  final int instanceCount;
  /// The resource ID of the Subnet for the Database Server. Changing this forces a new resource to be created.
  final String subnetId;
  /// A `virtual_machine_configuration` block as defined below. Changing this forces a new resource to be created.
  final ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationVirtualMachineConfiguration virtualMachineConfiguration;

  /// Creates a new [ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfiguration].
  /// [databaseType] The database type for the Database Server. Possible values are `DB2` and `HANA`. Changing this forces a new resource to be created.
  /// [diskVolumeConfigurations] One or more `disk_volume_configuration` blocks as defined below. Changing this forces a new resource to be created.
  /// [instanceCount] The number of instances for the Database Server. Possible values are at least `1`. Changing this forces a new resource to be created.
  /// [subnetId] The resource ID of the Subnet for the Database Server. Changing this forces a new resource to be created.
  /// [virtualMachineConfiguration] A `virtual_machine_configuration` block as defined below. Changing this forces a new resource to be created.
  ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfiguration({
    this.databaseType,
    this.diskVolumeConfigurations,
    required this.instanceCount,
    required this.subnetId,
    required this.virtualMachineConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseType': ?databaseType,
      'diskVolumeConfigurations': ?diskVolumeConfigurations == null ? null : pulumi.Input.encodeList<ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationDiskVolumeConfiguration, Map<String, dynamic>>(diskVolumeConfigurations!, (value) => value.toMap()),
      'instanceCount': instanceCount,
      'subnetId': subnetId,
      'virtualMachineConfiguration': virtualMachineConfiguration.toMap(),
    };
  }

  factory ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfiguration.fromMap(Map<String, dynamic> map) {
    return ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfiguration(
      databaseType: map['databaseType'] == null ? null : map['databaseType'] as String,
      diskVolumeConfigurations: map['diskVolumeConfigurations'] == null ? null : pulumi.Input.decodeList<ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationDiskVolumeConfiguration>(map['diskVolumeConfigurations'], (value) => ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationDiskVolumeConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      instanceCount: map['instanceCount'] as int,
      subnetId: map['subnetId'] as String,
      virtualMachineConfiguration: ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationVirtualMachineConfiguration.fromMap((map['virtualMachineConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

