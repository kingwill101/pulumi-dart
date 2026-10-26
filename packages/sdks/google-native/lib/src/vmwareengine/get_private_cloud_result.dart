// ignore_for_file: unused_element, unnecessary_cast

import 'hcx_response.dart';
import 'management_cluster_response.dart';
import 'network_config_response.dart';
import 'nsx_response.dart';
import 'vcenter_response.dart';

/// Result data returned by getPrivateCloud.
class GetPrivateCloudResult {
  /// Creation time of this resource.
  final String? createTime;
  /// Time when the resource was scheduled for deletion.
  final String? deleteTime;
  /// User-provided description for this private cloud.
  final String? description;
  /// Time when the resource will be irreversibly deleted.
  final String? expireTime;
  /// HCX appliance.
  final HcxResponse? hcx;
  /// Input only. The management cluster for this private cloud. This field is required during creation of the private cloud to provide details for the default cluster. The following fields can't be changed after private cloud creation: `ManagementCluster.clusterId`, `ManagementCluster.nodeTypeId`.
  final ManagementClusterResponse? managementCluster;
  /// The resource name of this private cloud. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. For example: `projects/my-project/locations/us-central1-a/privateClouds/my-cloud`
  final String? name;
  /// Network configuration of the private cloud.
  final NetworkConfigResponse? networkConfig;
  /// NSX appliance.
  final NsxResponse? nsx;
  /// State of the resource. New values may be added to this enum when appropriate.
  final String? state;
  /// Optional. Type of the private cloud. Defaults to STANDARD.
  final String? type;
  /// System-generated unique identifier for the resource.
  final String? uid;
  /// Last update time of this resource.
  final String? updateTime;
  /// Vcenter appliance.
  final VcenterResponse? vcenter;

  /// Creates a new [GetPrivateCloudResult].
  /// [createTime] Creation time of this resource.
  /// [deleteTime] Time when the resource was scheduled for deletion.
  /// [description] User-provided description for this private cloud.
  /// [expireTime] Time when the resource will be irreversibly deleted.
  /// [hcx] HCX appliance.
  /// [managementCluster] Input only. The management cluster for this private cloud. This field is required during creation of the private cloud to provide details for the default cluster. The following fields can't be changed after private cloud creation: `ManagementCluster.clusterId`, `ManagementCluster.nodeTypeId`.
  /// [name] The resource name of this private cloud. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. For example: `projects/my-project/locations/us-central1-a/privateClouds/my-cloud`
  /// [networkConfig] Network configuration of the private cloud.
  /// [nsx] NSX appliance.
  /// [state] State of the resource. New values may be added to this enum when appropriate.
  /// [type] Optional. Type of the private cloud. Defaults to STANDARD.
  /// [uid] System-generated unique identifier for the resource.
  /// [updateTime] Last update time of this resource.
  /// [vcenter] Vcenter appliance.
  const GetPrivateCloudResult({
    this.createTime,
    this.deleteTime,
    this.description,
    this.expireTime,
    this.hcx,
    this.managementCluster,
    this.name,
    this.networkConfig,
    this.nsx,
    this.state,
    this.type,
    this.uid,
    this.updateTime,
    this.vcenter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deleteTime': ?deleteTime,
      'description': ?description,
      'expireTime': ?expireTime,
      'hcx': ?hcx?.toMap(),
      'managementCluster': ?managementCluster?.toMap(),
      'name': ?name,
      'networkConfig': ?networkConfig?.toMap(),
      'nsx': ?nsx?.toMap(),
      'state': ?state,
      'type': ?type,
      'uid': ?uid,
      'updateTime': ?updateTime,
      'vcenter': ?vcenter?.toMap(),
    };
  }

  factory GetPrivateCloudResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateCloudResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deleteTime: (() { final guardedValue = map['deleteTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hcx: (() { final guardedValue = map['hcx']; if (guardedValue == null) return null; return HcxResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      managementCluster: (() { final guardedValue = map['managementCluster']; if (guardedValue == null) return null; return ManagementClusterResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkConfig: (() { final guardedValue = map['networkConfig']; if (guardedValue == null) return null; return NetworkConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      nsx: (() { final guardedValue = map['nsx']; if (guardedValue == null) return null; return NsxResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vcenter: (() { final guardedValue = map['vcenter']; if (guardedValue == null) return null; return VcenterResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
