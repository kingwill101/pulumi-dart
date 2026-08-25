// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_transfer_project_servie_account_get_transfer_project_servie_account_args_doc}
/// Arguments for getTransferProjectServieAccount.
/// {@endtemplate}
/// {@macro pulumi_storage_get_transfer_project_servie_account_get_transfer_project_servie_account_args_doc}
class GetTransferProjectServieAccountArgs {
  /// The project ID. If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [GetTransferProjectServieAccountArgs].
  /// [project] The project ID. If it is not provided, the provider project is used.
  const GetTransferProjectServieAccountArgs({
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
    };
  }

  factory GetTransferProjectServieAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetTransferProjectServieAccountArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
