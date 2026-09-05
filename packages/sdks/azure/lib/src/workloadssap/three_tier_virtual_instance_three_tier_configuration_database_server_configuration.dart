// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'three_tier_virtual_instance_three_tier_configuration_database_server_configuration_disk_volume_configuration.dart';
import 'three_tier_virtual_instance_three_tier_configuration_database_server_configuration_virtual_machine_configuration.dart';

class ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfiguration {
  /// The database type for the Database Server. Possible values are `DB2` and `HANA`. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? databaseType;
  /// One or more `diskVolumeConfiguration` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationDiskVolumeConfiguration>?>? diskVolumeConfigurations;
  /// The number of instances for the Database Server. Possible values are at least `1`. Changing this forces a new resource to be created.
  final pulumi.Input<int> instanceCount;
  /// The resource ID of the Subnet for the Database Server. Changing this forces a new resource to be created.
  final pulumi.Input<String> subnetId;
  /// A `virtualMachineConfiguration` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationVirtualMachineConfiguration> virtualMachineConfiguration;

  /// Creates a new [ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfiguration].
  /// [databaseType] The database type for the Database Server. Possible values are `DB2` and `HANA`. Changing this forces a new resource to be created.
  /// [diskVolumeConfigurations] One or more `diskVolumeConfiguration` blocks as defined below. Changing this forces a new resource to be created.
  /// [instanceCount] The number of instances for the Database Server. Possible values are at least `1`. Changing this forces a new resource to be created.
  /// [subnetId] The resource ID of the Subnet for the Database Server. Changing this forces a new resource to be created.
  /// [virtualMachineConfiguration] A `virtualMachineConfiguration` block as defined below. Changing this forces a new resource to be created.
  const ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfiguration({
    this.databaseType,
    this.diskVolumeConfigurations,
    required this.instanceCount,
    required this.subnetId,
    required this.virtualMachineConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseType': ?databaseType,
      'diskVolumeConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationDiskVolumeConfiguration>, List<Map<String, dynamic>>>(diskVolumeConfigurations, (value) => pulumi.Input.encodeList<ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationDiskVolumeConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceCount': instanceCount,
      'subnetId': subnetId,
      'virtualMachineConfiguration': pulumi.Input.mapInputValue<ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationVirtualMachineConfiguration, Map<String, dynamic>>(virtualMachineConfiguration, (value) => value.toMap()),
    };
  }

  factory ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfiguration.fromMap(Map<String, dynamic> map) {
    return ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfiguration(
      databaseType: (() { final guardedValue = map['databaseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskVolumeConfigurations: (() { final guardedValue = map['diskVolumeConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationDiskVolumeConfiguration>(guardedValue, (value) => ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationDiskVolumeConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      instanceCount: pulumi.Input.fromValue((map['instanceCount'] as num).toInt()),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
      virtualMachineConfiguration: pulumi.Input.fromValue(ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationVirtualMachineConfiguration.fromMap((map['virtualMachineConfiguration']! as Map).cast<String, dynamic>())),
    );
  }
}
