// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_failover_group_read_only_endpoint.dart';
import 'instance_failover_group_read_write_endpoint.dart';
import 'managed_instance_pair_info.dart';
import 'partner_region_info.dart';

/// {@template pulumi_sql_instance_failover_group_args_doc}
/// The set of arguments for InstanceFailoverGroup.
/// {@endtemplate}
/// {@macro pulumi_sql_instance_failover_group_args_doc}
class InstanceFailoverGroupArgs {
  /// The name of the failover group.
  final pulumi.Input<String>? failoverGroupName;
  /// The name of the region where the resource is located.
  final pulumi.Input<String> locationName;
  /// List of managed instance pairs in the failover group.
  final pulumi.Input<List<ManagedInstancePairInfo>> managedInstancePairs;
  /// Partner region information for the failover group.
  final pulumi.Input<List<PartnerRegionInfo>> partnerRegions;
  /// Read-only endpoint of the failover group instance.
  final pulumi.Input<InstanceFailoverGroupReadOnlyEndpoint>? readOnlyEndpoint;
  /// Read-write endpoint of the failover group instance.
  final pulumi.Input<InstanceFailoverGroupReadWriteEndpoint> readWriteEndpoint;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// Type of the geo-secondary instance. Set 'Standby' if the instance is used as a DR option only.
  final pulumi.Input<String>? secondaryType;

  /// Creates a new [InstanceFailoverGroupArgs].
  /// [failoverGroupName] The name of the failover group.
  /// [locationName] The name of the region where the resource is located.
  /// [managedInstancePairs] List of managed instance pairs in the failover group.
  /// [partnerRegions] Partner region information for the failover group.
  /// [readOnlyEndpoint] Read-only endpoint of the failover group instance.
  /// [readWriteEndpoint] Read-write endpoint of the failover group instance.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [secondaryType] Type of the geo-secondary instance. Set 'Standby' if the instance is used as a DR option only.
  const InstanceFailoverGroupArgs({
    this.failoverGroupName,
    required this.locationName,
    required this.managedInstancePairs,
    required this.partnerRegions,
    this.readOnlyEndpoint,
    required this.readWriteEndpoint,
    required this.resourceGroupName,
    this.secondaryType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failoverGroupName': ?failoverGroupName,
      'locationName': locationName,
      'managedInstancePairs': pulumi.Input.mapInputValue<List<ManagedInstancePairInfo>, List<Map<String, dynamic>>>(managedInstancePairs, (value) => pulumi.Input.encodeList<ManagedInstancePairInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'partnerRegions': pulumi.Input.mapInputValue<List<PartnerRegionInfo>, List<Map<String, dynamic>>>(partnerRegions, (value) => pulumi.Input.encodeList<PartnerRegionInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'readOnlyEndpoint': ?pulumi.Input.mapOptionalInputValue<InstanceFailoverGroupReadOnlyEndpoint, Map<String, dynamic>>(readOnlyEndpoint, (value) => value.toMap()),
      'readWriteEndpoint': pulumi.Input.mapInputValue<InstanceFailoverGroupReadWriteEndpoint, Map<String, dynamic>>(readWriteEndpoint, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'secondaryType': ?secondaryType,
    };
  }

  factory InstanceFailoverGroupArgs.fromMap(Map<String, dynamic> map) {
    return InstanceFailoverGroupArgs(
      failoverGroupName: (() { final guardedValue = map['failoverGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locationName: pulumi.Input.fromValue(map['locationName'] as String),
      managedInstancePairs: pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedInstancePairInfo>(map['managedInstancePairs']!, (value) => ManagedInstancePairInfo.fromMap((value as Map).cast<String, dynamic>()))),
      partnerRegions: pulumi.Input.fromValue(pulumi.Input.decodeList<PartnerRegionInfo>(map['partnerRegions']!, (value) => PartnerRegionInfo.fromMap((value as Map).cast<String, dynamic>()))),
      readOnlyEndpoint: (() { final guardedValue = map['readOnlyEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceFailoverGroupReadOnlyEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      readWriteEndpoint: pulumi.Input.fromValue(InstanceFailoverGroupReadWriteEndpoint.fromMap((map['readWriteEndpoint']! as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      secondaryType: (() { final guardedValue = map['secondaryType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

