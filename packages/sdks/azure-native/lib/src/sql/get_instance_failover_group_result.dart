// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_failover_group_read_only_endpoint_response.dart';
import 'instance_failover_group_read_write_endpoint_response.dart';
import 'managed_instance_pair_info_response.dart';
import 'partner_region_info_response.dart';

/// Result data returned by getInstanceFailoverGroup.
class GetInstanceFailoverGroupResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Resource ID.
  final String? id;
  /// List of managed instance pairs in the failover group.
  final List<ManagedInstancePairInfoResponse>? managedInstancePairs;
  /// Resource name.
  final String? name;
  /// Partner region information for the failover group.
  final List<PartnerRegionInfoResponse>? partnerRegions;
  /// Read-only endpoint of the failover group instance.
  final InstanceFailoverGroupReadOnlyEndpointResponse? readOnlyEndpoint;
  /// Read-write endpoint of the failover group instance.
  final InstanceFailoverGroupReadWriteEndpointResponse? readWriteEndpoint;
  /// Local replication role of the failover group instance.
  final String? replicationRole;
  /// Replication state of the failover group instance.
  final String? replicationState;
  /// Type of the geo-secondary instance. Set 'Standby' if the instance is used as a DR option only.
  final String? secondaryType;
  /// Resource type.
  final String? type;

  /// Creates a new [GetInstanceFailoverGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource ID.
  /// [managedInstancePairs] List of managed instance pairs in the failover group.
  /// [name] Resource name.
  /// [partnerRegions] Partner region information for the failover group.
  /// [readOnlyEndpoint] Read-only endpoint of the failover group instance.
  /// [readWriteEndpoint] Read-write endpoint of the failover group instance.
  /// [replicationRole] Local replication role of the failover group instance.
  /// [replicationState] Replication state of the failover group instance.
  /// [secondaryType] Type of the geo-secondary instance. Set 'Standby' if the instance is used as a DR option only.
  /// [type] Resource type.
  const GetInstanceFailoverGroupResult({
    this.azureApiVersion,
    this.id,
    this.managedInstancePairs,
    this.name,
    this.partnerRegions,
    this.readOnlyEndpoint,
    this.readWriteEndpoint,
    this.replicationRole,
    this.replicationState,
    this.secondaryType,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'managedInstancePairs': ?(() { final guardedValue = managedInstancePairs; if (guardedValue == null) return null; return pulumi.Input.encodeList<ManagedInstancePairInfoResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'partnerRegions': ?(() { final guardedValue = partnerRegions; if (guardedValue == null) return null; return pulumi.Input.encodeList<PartnerRegionInfoResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'readOnlyEndpoint': ?readOnlyEndpoint?.toMap(),
      'readWriteEndpoint': ?readWriteEndpoint?.toMap(),
      'replicationRole': ?replicationRole,
      'replicationState': ?replicationState,
      'secondaryType': ?secondaryType,
      'type': ?type,
    };
  }

  factory GetInstanceFailoverGroupResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceFailoverGroupResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedInstancePairs: (() { final guardedValue = map['managedInstancePairs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ManagedInstancePairInfoResponse>(guardedValue, (value) => ManagedInstancePairInfoResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      partnerRegions: (() { final guardedValue = map['partnerRegions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PartnerRegionInfoResponse>(guardedValue, (value) => PartnerRegionInfoResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      readOnlyEndpoint: (() { final guardedValue = map['readOnlyEndpoint']; if (guardedValue == null) return null; return InstanceFailoverGroupReadOnlyEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      readWriteEndpoint: (() { final guardedValue = map['readWriteEndpoint']; if (guardedValue == null) return null; return InstanceFailoverGroupReadWriteEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      replicationRole: (() { final guardedValue = map['replicationRole']; if (guardedValue == null) return null; return guardedValue as String; })(),
      replicationState: (() { final guardedValue = map['replicationState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryType: (() { final guardedValue = map['secondaryType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
