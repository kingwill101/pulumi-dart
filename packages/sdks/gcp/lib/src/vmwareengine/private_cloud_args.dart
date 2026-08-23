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
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// While set true, deletionDelayHours value will be sent in the request even for zero value of the field. This field is only useful for setting 0 value to the deletionDelayHours field. It can be used both alone and together with deletion_delay_hours.
  final pulumi.Input<bool>? sendDeletionDelayHoursIfZero;
  /// Initial type of the private cloud.
  /// Possible values are: `STANDARD`, `TIME_LIMITED`, `STRETCHED`.
  final pulumi.Input<String>? type;

  /// Creates a new [PrivateCloudArgs].
  /// [deletionDelayHours] The number of hours to delay this request. You can set this value to an hour between 0 to 8, where setting it to 0 starts the deletion request immediately. If no value is set, a default value is set at the API Level.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] User-provided description for this private cloud.
  /// [location] The location where the PrivateCloud should reside.
  /// [managementCluster] The management cluster for this private cloud. This used for creating and managing the default cluster.
  /// [name] The ID of the PrivateCloud.
  /// [networkConfig] Network configuration in the consumer project with which the peering has to be done.
  /// [project] The ID of the project in which the resource belongs.
  /// [sendDeletionDelayHoursIfZero] While set true, deletionDelayHours value will be sent in the request even for zero value of the field. This field is only useful for setting 0 value to the deletionDelayHours field. It can be used both alone and together with deletion_delay_hours.
  /// [type] Initial type of the private cloud.
  const PrivateCloudArgs({
    this.deletionDelayHours,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      deletionDelayHours: (() { final guardedValue = map['deletionDelayHours']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      managementCluster: pulumi.Input.fromValue(PrivateCloudManagementCluster.fromMap((map['managementCluster']! as Map).cast<String, dynamic>())),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkConfig: pulumi.Input.fromValue(PrivateCloudNetworkConfig.fromMap((map['networkConfig']! as Map).cast<String, dynamic>())),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sendDeletionDelayHoursIfZero: (() { final guardedValue = map['sendDeletionDelayHoursIfZero']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
