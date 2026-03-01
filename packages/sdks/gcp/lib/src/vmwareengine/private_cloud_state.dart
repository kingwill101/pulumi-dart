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
  /// While set true, deletion_delay_hours value will be sent in the request even for zero value of the field. This field is only useful for setting 0 value to the deletion_delay_hours field. It can be used both alone and together with deletion_delay_hours.
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
  /// [description] User-provided description for this private cloud.
  /// [expireTime] Time when the resource will be irreversibly deleted.
  /// [hcxes] Details about a HCX Cloud Manager appliance.
  /// [location] The location where the PrivateCloud should reside.
  /// [managementCluster] The management cluster for this private cloud. This used for creating and managing the default cluster.
  /// [name] The ID of the PrivateCloud.
  /// [networkConfig] Network configuration in the consumer project with which the peering has to be done.
  /// [nsxes] Details about a NSX Manager appliance.
  /// [project] The ID of the project in which the resource belongs.
  /// [sendDeletionDelayHoursIfZero] While set true, deletion_delay_hours value will be sent in the request even for zero value of the field. This field is only useful for setting 0 value to the deletion_delay_hours field. It can be used both alone and together with deletion_delay_hours.
  /// [state] State of the appliance.
  /// [type] Initial type of the private cloud.
  /// [uid] System-generated unique identifier for the resource.
  /// [updateTime] Last update time of this resource.
  /// [vcenters] Details about a vCenter Server management appliance.
  PrivateCloudState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? deleteTime,
    pulumi.Output<int>? deletionDelayHours,
    pulumi.Output<String>? description,
    pulumi.Output<String>? expireTime,
    pulumi.Output<List<PrivateCloudHcx>>? hcxes,
    pulumi.Output<String>? location,
    pulumi.Output<PrivateCloudManagementCluster>? managementCluster,
    pulumi.Output<String>? name,
    pulumi.Output<PrivateCloudNetworkConfig>? networkConfig,
    pulumi.Output<List<PrivateCloudNsx>>? nsxes,
    pulumi.Output<String>? project,
    pulumi.Output<bool>? sendDeletionDelayHoursIfZero,
    pulumi.Output<String>? state,
    pulumi.Output<String>? type,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
    pulumi.Output<List<PrivateCloudVcenter>>? vcenters,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      deleteTime = pulumi.Input.asOptionalInput<String>(deleteTime),
      deletionDelayHours = pulumi.Input.asOptionalInput<int>(deletionDelayHours),
      description = pulumi.Input.asOptionalInput<String>(description),
      expireTime = pulumi.Input.asOptionalInput<String>(expireTime),
      hcxes = pulumi.Input.asOptionalInput<List<PrivateCloudHcx>>(hcxes),
      location = pulumi.Input.asOptionalInput<String>(location),
      managementCluster = pulumi.Input.asOptionalInput<PrivateCloudManagementCluster>(managementCluster),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkConfig = pulumi.Input.asOptionalInput<PrivateCloudNetworkConfig>(networkConfig),
      nsxes = pulumi.Input.asOptionalInput<List<PrivateCloudNsx>>(nsxes),
      project = pulumi.Input.asOptionalInput<String>(project),
      sendDeletionDelayHoursIfZero = pulumi.Input.asOptionalInput<bool>(sendDeletionDelayHoursIfZero),
      state = pulumi.Input.asOptionalInput<String>(state),
      type = pulumi.Input.asOptionalInput<String>(type),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
      vcenters = pulumi.Input.asOptionalInput<List<PrivateCloudVcenter>>(vcenters);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deleteTime': ?deleteTime,
      'deletionDelayHours': ?deletionDelayHours,
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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      deleteTime: map['deleteTime'] == null ? null : pulumi.Output.create<String>(map['deleteTime'] as String),
      deletionDelayHours: map['deletionDelayHours'] == null ? null : pulumi.Output.create<int>(map['deletionDelayHours'] as int),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      expireTime: map['expireTime'] == null ? null : pulumi.Output.create<String>(map['expireTime'] as String),
      hcxes: map['hcxes'] == null ? null : pulumi.Output.create<List<PrivateCloudHcx>>(pulumi.Input.decodeList<PrivateCloudHcx>(map['hcxes'], (value) => PrivateCloudHcx.fromMap((value as Map).cast<String, dynamic>()))),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managementCluster: map['managementCluster'] == null ? null : pulumi.Output.create<PrivateCloudManagementCluster>(PrivateCloudManagementCluster.fromMap((map['managementCluster'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkConfig: map['networkConfig'] == null ? null : pulumi.Output.create<PrivateCloudNetworkConfig>(PrivateCloudNetworkConfig.fromMap((map['networkConfig'] as Map).cast<String, dynamic>())),
      nsxes: map['nsxes'] == null ? null : pulumi.Output.create<List<PrivateCloudNsx>>(pulumi.Input.decodeList<PrivateCloudNsx>(map['nsxes'], (value) => PrivateCloudNsx.fromMap((value as Map).cast<String, dynamic>()))),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      sendDeletionDelayHoursIfZero: map['sendDeletionDelayHoursIfZero'] == null ? null : pulumi.Output.create<bool>(map['sendDeletionDelayHoursIfZero'] as bool),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
      vcenters: map['vcenters'] == null ? null : pulumi.Output.create<List<PrivateCloudVcenter>>(pulumi.Input.decodeList<PrivateCloudVcenter>(map['vcenters'], (value) => PrivateCloudVcenter.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

