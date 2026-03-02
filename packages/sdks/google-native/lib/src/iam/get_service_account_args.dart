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
  GetServiceAccountArgs({
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
      project: map['project'] == null ? null : (map['project'] as String).input(),
      serviceAccountId: (map['serviceAccountId'] as String).input(),
    );
  }
}

