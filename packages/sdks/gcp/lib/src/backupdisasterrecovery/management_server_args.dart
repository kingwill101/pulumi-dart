// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_server_network.dart';

/// {@template pulumi_backupdisasterrecovery_management_server_management_server_args_doc}
/// The set of arguments for ManagementServer.
/// {@endtemplate}
/// {@macro pulumi_backupdisasterrecovery_management_server_management_server_args_doc}
class ManagementServerArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The location for the management server (management console)
  final pulumi.Input<String> location;
  /// The name of management server (management console)
  final pulumi.Input<String?>? name;
  /// Network details to create management server (management console).
  /// Structure is documented below.
  final pulumi.Input<List<ManagementServerNetwork>?>? networks;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The type of management server (management console).
  /// Default value is `BACKUP_RESTORE`.
  /// Possible values are: `BACKUP_RESTORE`.
  final pulumi.Input<String?>? type;

  /// Creates a new [ManagementServerArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [location] The location for the management server (management console)
  /// [name] The name of management server (management console)
  /// [networks] Network details to create management server (management console).
  /// [project] The ID of the project in which the resource belongs.
  /// [type] The type of management server (management console).
  const ManagementServerArgs({
    this.deletionPolicy,
    required this.location,
    this.name,
    this.networks,
    this.project,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'location': location,
      'name': ?name,
      'networks': ?pulumi.Input.mapOptionalInputValue<List<ManagementServerNetwork>, List<Map<String, dynamic>>>(networks, (value) => pulumi.Input.encodeList<ManagementServerNetwork, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'type': ?type,
    };
  }

  factory ManagementServerArgs.fromMap(Map<String, dynamic> map) {
    return ManagementServerArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networks: (() { final guardedValue = map['networks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagementServerNetwork>(guardedValue, (value) => ManagementServerNetwork.fromMap((value as Map).cast<String, dynamic>()))); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
