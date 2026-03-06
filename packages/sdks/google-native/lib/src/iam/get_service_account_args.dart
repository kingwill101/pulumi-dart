// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_v1_get_service_account_args_doc}
/// Arguments for getServiceAccount.
/// {@endtemplate}
/// {@macro pulumi_iam_v1_get_service_account_args_doc}
class GetServiceAccountArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceAccountId;

  /// Creates a new [GetServiceAccountArgs].
  /// [project] Optional.
  /// [serviceAccountId] Required.
  const GetServiceAccountArgs({
    this.project,
    required this.serviceAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'serviceAccountId': serviceAccountId,
    };
  }

  factory GetServiceAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceAccountArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccountId: pulumi.Input.fromValue(map['serviceAccountId'] as String),
    );
  }
}

