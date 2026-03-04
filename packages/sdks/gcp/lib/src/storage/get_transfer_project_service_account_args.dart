// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_transfer_project_service_account_get_transfer_project_service_account_args_doc}
/// Arguments for getTransferProjectServiceAccount.
/// {@endtemplate}
/// {@macro pulumi_storage_get_transfer_project_service_account_get_transfer_project_service_account_args_doc}
class GetTransferProjectServiceAccountArgs {
  /// The project ID. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetTransferProjectServiceAccountArgs].
  /// [project] The project ID. If it is not provided, the provider project is used.
  GetTransferProjectServiceAccountArgs({this.project});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'project': ?project};
  }

  factory GetTransferProjectServiceAccountArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetTransferProjectServiceAccountArgs(
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
