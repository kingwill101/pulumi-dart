// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_private_cloud_hcx.dart';
import 'get_private_cloud_management_cluster.dart';
import 'get_private_cloud_network_config.dart';
import 'get_private_cloud_nsx.dart';
import 'get_private_cloud_vcenter.dart';

/// Result data returned by getPrivateCloud.
class GetPrivateCloudResult {
  final String? createTime;
  final String? deleteTime;
  final int? deletionDelayHours;
  final String? deletionPolicy;
  final String? description;
  final String? expireTime;
  final List<GetPrivateCloudHcx>? hcxes;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  final List<GetPrivateCloudManagementCluster>? managementClusters;
  final String? name;
  final List<GetPrivateCloudNetworkConfig>? networkConfigs;
  final List<GetPrivateCloudNsx>? nsxes;
  final String? project;
  final bool? sendDeletionDelayHoursIfZero;
  final String? state;
  final String? type;
  final String? uid;
  final String? updateTime;
  final List<GetPrivateCloudVcenter>? vcenters;

  /// Creates a new [GetPrivateCloudResult].
  /// [createTime] Optional.
  /// [deleteTime] Optional.
  /// [deletionDelayHours] Optional.
  /// [deletionPolicy] Optional.
  /// [description] Optional.
  /// [expireTime] Optional.
  /// [hcxes] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [managementClusters] Optional.
  /// [name] Optional.
  /// [networkConfigs] Optional.
  /// [nsxes] Optional.
  /// [project] Optional.
  /// [sendDeletionDelayHoursIfZero] Optional.
  /// [state] Optional.
  /// [type] Optional.
  /// [uid] Optional.
  /// [updateTime] Optional.
  /// [vcenters] Optional.
  const GetPrivateCloudResult({
    this.createTime,
    this.deleteTime,
    this.deletionDelayHours,
    this.deletionPolicy,
    this.description,
    this.expireTime,
    this.hcxes,
    this.id,
    this.location,
    this.managementClusters,
    this.name,
    this.networkConfigs,
    this.nsxes,
    this.project,
    this.sendDeletionDelayHoursIfZero,
    this.state,
    this.type,
    this.uid,
    this.updateTime,
    this.vcenters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deleteTime': ?deleteTime,
      'deletionDelayHours': ?deletionDelayHours,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'expireTime': ?expireTime,
      'hcxes': ?(() { final guardedValue = hcxes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPrivateCloudHcx, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'location': ?location,
      'managementClusters': ?(() { final guardedValue = managementClusters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPrivateCloudManagementCluster, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'networkConfigs': ?(() { final guardedValue = networkConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPrivateCloudNetworkConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'nsxes': ?(() { final guardedValue = nsxes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPrivateCloudNsx, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'project': ?project,
      'sendDeletionDelayHoursIfZero': ?sendDeletionDelayHoursIfZero,
      'state': ?state,
      'type': ?type,
      'uid': ?uid,
      'updateTime': ?updateTime,
      'vcenters': ?(() { final guardedValue = vcenters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPrivateCloudVcenter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetPrivateCloudResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateCloudResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deleteTime: (() { final guardedValue = map['deleteTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionDelayHours: (() { final guardedValue = map['deletionDelayHours']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hcxes: (() { final guardedValue = map['hcxes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPrivateCloudHcx>(guardedValue, (value) => GetPrivateCloudHcx.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managementClusters: (() { final guardedValue = map['managementClusters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPrivateCloudManagementCluster>(guardedValue, (value) => GetPrivateCloudManagementCluster.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkConfigs: (() { final guardedValue = map['networkConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPrivateCloudNetworkConfig>(guardedValue, (value) => GetPrivateCloudNetworkConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      nsxes: (() { final guardedValue = map['nsxes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPrivateCloudNsx>(guardedValue, (value) => GetPrivateCloudNsx.fromMap((value as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sendDeletionDelayHoursIfZero: (() { final guardedValue = map['sendDeletionDelayHoursIfZero']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vcenters: (() { final guardedValue = map['vcenters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPrivateCloudVcenter>(guardedValue, (value) => GetPrivateCloudVcenter.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
