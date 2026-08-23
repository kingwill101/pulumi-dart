// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_cloud_hcx.dart';
import 'private_cloud_management_cluster.dart';
import 'private_cloud_network_config.dart';
import 'private_cloud_nsx.dart';
import 'private_cloud_vcenter.dart';

/// Input properties used for looking up and filtering PrivateCloud resources.
class PrivateCloudState {
  /// Creation time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? createTime;
  /// Time when the resource was scheduled for deletion.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? deleteTime;
  /// The number of hours to delay this request. You can set this value to an hour between 0 to 8, where setting it to 0 starts the deletion request immediately. If no value is set, a default value is set at the API Level.
  final pulumi.Input<int>? deletionDelayHours;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// User-provided description for this private cloud.
  final pulumi.Input<String>? description;
  /// Time when the resource will be irreversibly deleted.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? expireTime;
  /// Details about a HCX Cloud Manager appliance.
  /// Structure is documented below.
  final pulumi.Input<List<PrivateCloudHcx>>? hcxes;
  /// The location where the PrivateCloud should reside.
  final pulumi.Input<String>? location;
  /// The management cluster for this private cloud. This used for creating and managing the default cluster.
  /// Structure is documented below.
  final pulumi.Input<PrivateCloudManagementCluster>? managementCluster;
  /// The ID of the PrivateCloud.
  final pulumi.Input<String>? name;
  /// Network configuration in the consumer project with which the peering has to be done.
  /// Structure is documented below.
  final pulumi.Input<PrivateCloudNetworkConfig>? networkConfig;
  /// Details about a NSX Manager appliance.
  /// Structure is documented below.
  final pulumi.Input<List<PrivateCloudNsx>>? nsxes;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// While set true, deletionDelayHours value will be sent in the request even for zero value of the field. This field is only useful for setting 0 value to the deletionDelayHours field. It can be used both alone and together with deletion_delay_hours.
  final pulumi.Input<bool>? sendDeletionDelayHoursIfZero;
  /// State of the appliance.
  /// Possible values are: `ACTIVE`, `CREATING`.
  final pulumi.Input<String>? state;
  /// Initial type of the private cloud.
  /// Possible values are: `STANDARD`, `TIME_LIMITED`, `STRETCHED`.
  final pulumi.Input<String>? type;
  /// System-generated unique identifier for the resource.
  final pulumi.Input<String>? uid;
  /// Last update time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? updateTime;
  /// Details about a vCenter Server management appliance.
  /// Structure is documented below.
  final pulumi.Input<List<PrivateCloudVcenter>>? vcenters;

  /// Creates a new [PrivateCloudState].
  /// [createTime] Creation time of this resource.
  /// [deleteTime] Time when the resource was scheduled for deletion.
  /// [deletionDelayHours] The number of hours to delay this request. You can set this value to an hour between 0 to 8, where setting it to 0 starts the deletion request immediately. If no value is set, a default value is set at the API Level.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] User-provided description for this private cloud.
  /// [expireTime] Time when the resource will be irreversibly deleted.
  /// [hcxes] Details about a HCX Cloud Manager appliance.
  /// [location] The location where the PrivateCloud should reside.
  /// [managementCluster] The management cluster for this private cloud. This used for creating and managing the default cluster.
  /// [name] The ID of the PrivateCloud.
  /// [networkConfig] Network configuration in the consumer project with which the peering has to be done.
  /// [nsxes] Details about a NSX Manager appliance.
  /// [project] The ID of the project in which the resource belongs.
  /// [sendDeletionDelayHoursIfZero] While set true, deletionDelayHours value will be sent in the request even for zero value of the field. This field is only useful for setting 0 value to the deletionDelayHours field. It can be used both alone and together with deletion_delay_hours.
  /// [state] State of the appliance.
  /// [type] Initial type of the private cloud.
  /// [uid] System-generated unique identifier for the resource.
  /// [updateTime] Last update time of this resource.
  /// [vcenters] Details about a vCenter Server management appliance.
  const PrivateCloudState({
    this.createTime,
    this.deleteTime,
    this.deletionDelayHours,
    this.deletionPolicy,
    this.description,
    this.expireTime,
    this.hcxes,
    this.location,
    this.managementCluster,
    this.name,
    this.networkConfig,
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
      'hcxes': ?pulumi.Input.mapOptionalInputValue<List<PrivateCloudHcx>, List<Map<String, dynamic>>>(hcxes, (value) => pulumi.Input.encodeList<PrivateCloudHcx, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'managementCluster': ?pulumi.Input.mapOptionalInputValue<PrivateCloudManagementCluster, Map<String, dynamic>>(managementCluster, (value) => value.toMap()),
      'name': ?name,
      'networkConfig': ?pulumi.Input.mapOptionalInputValue<PrivateCloudNetworkConfig, Map<String, dynamic>>(networkConfig, (value) => value.toMap()),
      'nsxes': ?pulumi.Input.mapOptionalInputValue<List<PrivateCloudNsx>, List<Map<String, dynamic>>>(nsxes, (value) => pulumi.Input.encodeList<PrivateCloudNsx, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'sendDeletionDelayHoursIfZero': ?sendDeletionDelayHoursIfZero,
      'state': ?state,
      'type': ?type,
      'uid': ?uid,
      'updateTime': ?updateTime,
      'vcenters': ?pulumi.Input.mapOptionalInputValue<List<PrivateCloudVcenter>, List<Map<String, dynamic>>>(vcenters, (value) => pulumi.Input.encodeList<PrivateCloudVcenter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PrivateCloudState.fromMap(Map<String, dynamic> map) {
    return PrivateCloudState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleteTime: (() { final guardedValue = map['deleteTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionDelayHours: (() { final guardedValue = map['deletionDelayHours']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hcxes: (() { final guardedValue = map['hcxes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PrivateCloudHcx>(guardedValue, (value) => PrivateCloudHcx.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managementCluster: (() { final guardedValue = map['managementCluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateCloudManagementCluster.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkConfig: (() { final guardedValue = map['networkConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateCloudNetworkConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nsxes: (() { final guardedValue = map['nsxes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PrivateCloudNsx>(guardedValue, (value) => PrivateCloudNsx.fromMap((value as Map).cast<String, dynamic>()))); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sendDeletionDelayHoursIfZero: (() { final guardedValue = map['sendDeletionDelayHoursIfZero']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vcenters: (() { final guardedValue = map['vcenters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PrivateCloudVcenter>(guardedValue, (value) => PrivateCloudVcenter.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
