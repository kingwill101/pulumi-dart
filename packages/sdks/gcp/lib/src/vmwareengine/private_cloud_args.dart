// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_cloud_management_cluster.dart';
import 'private_cloud_network_config.dart';

/// {@template pulumi_vmwareengine_private_cloud_private_cloud_args_doc}
/// The set of arguments for PrivateCloud.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_private_cloud_private_cloud_args_doc}
class PrivateCloudArgs {
  /// The number of hours to delay this request. You can set this value to an hour between 0 to 8, where setting it to 0 starts the deletion request immediately. If no value is set, a default value is set at the API Level.
  final pulumi.Input<int>? deletionDelayHours;
  /// User-provided description for this private cloud.
  final pulumi.Input<String>? description;
  /// The location where the PrivateCloud should reside.
  final pulumi.Input<String> location;
  /// The management cluster for this private cloud. This used for creating and managing the default cluster.
  /// Structure is documented below.
  final pulumi.Input<PrivateCloudManagementCluster> managementCluster;
  /// The ID of the PrivateCloud.
  final pulumi.Input<String>? name;
  /// Network configuration in the consumer project with which the peering has to be done.
  /// Structure is documented below.
  final pulumi.Input<PrivateCloudNetworkConfig> networkConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// While set true, deletion_delay_hours value will be sent in the request even for zero value of the field. This field is only useful for setting 0 value to the deletion_delay_hours field. It can be used both alone and together with deletion_delay_hours.
  final pulumi.Input<bool>? sendDeletionDelayHoursIfZero;
  /// Initial type of the private cloud.
  /// Possible values are: `STANDARD`, `TIME_LIMITED`, `STRETCHED`.
  final pulumi.Input<String>? type;

  /// Creates a new [PrivateCloudArgs].
  /// [deletionDelayHours] The number of hours to delay this request. You can set this value to an hour between 0 to 8, where setting it to 0 starts the deletion request immediately. If no value is set, a default value is set at the API Level.
  /// [description] User-provided description for this private cloud.
  /// [location] The location where the PrivateCloud should reside.
  /// [managementCluster] The management cluster for this private cloud. This used for creating and managing the default cluster.
  /// [name] The ID of the PrivateCloud.
  /// [networkConfig] Network configuration in the consumer project with which the peering has to be done.
  /// [project] The ID of the project in which the resource belongs.
  /// [sendDeletionDelayHoursIfZero] While set true, deletion_delay_hours value will be sent in the request even for zero value of the field. This field is only useful for setting 0 value to the deletion_delay_hours field. It can be used both alone and together with deletion_delay_hours.
  /// [type] Initial type of the private cloud.
  PrivateCloudArgs({
    this.deletionDelayHours,
    this.description,
    required this.location,
    required this.managementCluster,
    this.name,
    required this.networkConfig,
    this.project,
    this.sendDeletionDelayHoursIfZero,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionDelayHours': ?deletionDelayHours,
      'description': ?description,
      'location': location,
      'managementCluster': pulumi.Input.mapInputValue<PrivateCloudManagementCluster, Map<String, dynamic>>(managementCluster, (value) => value.toMap()),
      'name': ?name,
      'networkConfig': pulumi.Input.mapInputValue<PrivateCloudNetworkConfig, Map<String, dynamic>>(networkConfig, (value) => value.toMap()),
      'project': ?project,
      'sendDeletionDelayHoursIfZero': ?sendDeletionDelayHoursIfZero,
      'type': ?type,
    };
  }

  factory PrivateCloudArgs.fromMap(Map<String, dynamic> map) {
    return PrivateCloudArgs(
      deletionDelayHours: map['deletionDelayHours'] == null ? null : (map['deletionDelayHours']! as int).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      location: (map['location'] as String).input(),
      managementCluster: (PrivateCloudManagementCluster.fromMap((map['managementCluster'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      networkConfig: (PrivateCloudNetworkConfig.fromMap((map['networkConfig'] as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      sendDeletionDelayHoursIfZero: map['sendDeletionDelayHoursIfZero'] == null ? null : (map['sendDeletionDelayHoursIfZero']! as bool).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

