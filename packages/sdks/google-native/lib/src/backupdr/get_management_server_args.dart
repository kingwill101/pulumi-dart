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
  const GetManagementServerArgs({
    required this.location,
    required this.managementServerId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'managementServerId': managementServerId,
      'project': ?project,
    };
  }

  factory GetManagementServerArgs.fromMap(Map<String, dynamic> map) {
    return GetManagementServerArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      managementServerId: pulumi.Input.fromValue(map['managementServerId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
