// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_backupdr_v1_get_management_server_args_doc}
/// Arguments for getManagementServer.
/// {@endtemplate}
/// {@macro pulumi_backupdr_v1_get_management_server_args_doc}
class GetManagementServerArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> managementServerId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetManagementServerArgs].
  /// [location] Required.
  /// [managementServerId] Required.
  /// [project] Optional.
  GetManagementServerArgs({
    required pulumi.Output<String> location,
    required pulumi.Output<String> managementServerId,
    pulumi.Output<String>? project,
  }) :
      location = pulumi.Input.asInput<String>(location),
      managementServerId = pulumi.Input.asInput<String>(managementServerId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'managementServerId': managementServerId,
      'project': ?project,
    };
  }

  factory GetManagementServerArgs.fromMap(Map<String, dynamic> map) {
    return GetManagementServerArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      managementServerId: pulumi.Output.create<String>(map['managementServerId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

