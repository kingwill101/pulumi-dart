// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_backupdisasterrecovery_get_management_server_get_management_server_args_doc}
/// Arguments for getManagementServer.
/// {@endtemplate}
/// {@macro pulumi_backupdisasterrecovery_get_management_server_get_management_server_args_doc}
class GetManagementServerArgs {
  final pulumi.Input<String> location;

  /// Creates a new [GetManagementServerArgs].
  /// [location] Required.
  GetManagementServerArgs({
    required pulumi.Output<String> location,
  }) :
      location = pulumi.Input.asInput<String>(location);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
    };
  }

  factory GetManagementServerArgs.fromMap(Map<String, dynamic> map) {
    return GetManagementServerArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
    );
  }
}

