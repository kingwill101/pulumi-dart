// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_private_cloud_hcx.dart';
import 'get_private_cloud_management_cluster.dart';
import 'get_private_cloud_network_config.dart';
import 'get_private_cloud_nsx.dart';
import 'get_private_cloud_vcenter.dart';

/// Result data returned by getPrivateCloud.
class GetPrivateCloudResult {
  final String createTime;
  final String deleteTime;
  final int deletionDelayHours;
  final String description;
  final String expireTime;
  final List<GetPrivateCloudHcx> hcxes;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final List<GetPrivateCloudManagementCluster> managementClusters;
  final String name;
  final List<GetPrivateCloudNetworkConfig> networkConfigs;
  final List<GetPrivateCloudNsx> nsxes;
  final String? project;
  final bool sendDeletionDelayHoursIfZero;
  final String state;
  final String type;
  final String uid;
  final String updateTime;
  final List<GetPrivateCloudVcenter> vcenters;

  /// Creates a new [GetPrivateCloudResult].
  /// [createTime] Required.
  /// [deleteTime] Required.
  /// [deletionDelayHours] Required.
  /// [description] Required.
  /// [expireTime] Required.
  /// [hcxes] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [managementClusters] Required.
  /// [name] Required.
  /// [networkConfigs] Required.
  /// [nsxes] Required.
  /// [project] Optional.
  /// [sendDeletionDelayHoursIfZero] Required.
  /// [state] Required.
  /// [type] Required.
  /// [uid] Required.
  /// [updateTime] Required.
  /// [vcenters] Required.
  GetPrivateCloudResult({
    required this.createTime,
    required this.deleteTime,
    required this.deletionDelayHours,
    required this.description,
    required this.expireTime,
    required this.hcxes,
    required this.id,
    required this.location,
    required this.managementClusters,
    required this.name,
    required this.networkConfigs,
    required this.nsxes,
    this.project,
    required this.sendDeletionDelayHoursIfZero,
    required this.state,
    required this.type,
    required this.uid,
    required this.updateTime,
    required this.vcenters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'deleteTime': deleteTime,
      'deletionDelayHours': deletionDelayHours,
      'description': description,
      'expireTime': expireTime,
      'hcxes':
          pulumi.Input.encodeList<GetPrivateCloudHcx, Map<String, dynamic>>(
            hcxes,
            (value) => value.toMap(),
          ),
      'id': id,
      'location': location,
      'managementClusters':
          pulumi.Input.encodeList<
            GetPrivateCloudManagementCluster,
            Map<String, dynamic>
          >(managementClusters, (value) => value.toMap()),
      'name': name,
      'networkConfigs':
          pulumi.Input.encodeList<
            GetPrivateCloudNetworkConfig,
            Map<String, dynamic>
          >(networkConfigs, (value) => value.toMap()),
      'nsxes':
          pulumi.Input.encodeList<GetPrivateCloudNsx, Map<String, dynamic>>(
            nsxes,
            (value) => value.toMap(),
          ),
      'project': ?project,
      'sendDeletionDelayHoursIfZero': sendDeletionDelayHoursIfZero,
      'state': state,
      'type': type,
      'uid': uid,
      'updateTime': updateTime,
      'vcenters':
          pulumi.Input.encodeList<GetPrivateCloudVcenter, Map<String, dynamic>>(
            vcenters,
            (value) => value.toMap(),
          ),
    };
  }

  factory GetPrivateCloudResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateCloudResult(
      createTime: map['createTime'] as String,
      deleteTime: map['deleteTime'] as String,
      deletionDelayHours: map['deletionDelayHours'] as int,
      description: map['description'] as String,
      expireTime: map['expireTime'] as String,
      hcxes: pulumi.Input.decodeList<GetPrivateCloudHcx>(
        map['hcxes']!,
        (value) =>
            GetPrivateCloudHcx.fromMap((value as Map).cast<String, dynamic>()),
      ),
      id: map['id'] as String,
      location: map['location'] as String,
      managementClusters:
          pulumi.Input.decodeList<GetPrivateCloudManagementCluster>(
            map['managementClusters']!,
            (value) => GetPrivateCloudManagementCluster.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      name: map['name'] as String,
      networkConfigs: pulumi.Input.decodeList<GetPrivateCloudNetworkConfig>(
        map['networkConfigs']!,
        (value) => GetPrivateCloudNetworkConfig.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      nsxes: pulumi.Input.decodeList<GetPrivateCloudNsx>(
        map['nsxes']!,
        (value) =>
            GetPrivateCloudNsx.fromMap((value as Map).cast<String, dynamic>()),
      ),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      sendDeletionDelayHoursIfZero: map['sendDeletionDelayHoursIfZero'] as bool,
      state: map['state'] as String,
      type: map['type'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
      vcenters: pulumi.Input.decodeList<GetPrivateCloudVcenter>(
        map['vcenters']!,
        (value) => GetPrivateCloudVcenter.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
