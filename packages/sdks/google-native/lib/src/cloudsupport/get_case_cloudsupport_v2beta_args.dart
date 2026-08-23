// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudsupport_v2beta_get_case_cloudsupport_v2beta_args_doc}
/// Arguments for getCase.
/// {@endtemplate}
/// {@macro pulumi_cloudsupport_v2beta_get_case_cloudsupport_v2beta_args_doc}
class GetCaseCloudsupportV2betaArgs {
  final pulumi.Input<String> caseId;
  final pulumi.Input<String> v2betaId1;
  final pulumi.Input<String> v2betumId;

  /// Creates a new [GetCaseCloudsupportV2betaArgs].
  /// [caseId] Required.
  /// [v2betaId1] Required.
  /// [v2betumId] Required.
  const GetCaseCloudsupportV2betaArgs({
    required this.caseId,
    required this.v2betaId1,
    required this.v2betumId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caseId': caseId,
      'v2betaId1': v2betaId1,
      'v2betumId': v2betumId,
    };
  }

  factory GetCaseCloudsupportV2betaArgs.fromMap(Map<String, dynamic> map) {
    return GetCaseCloudsupportV2betaArgs(
      caseId: pulumi.Input.fromValue(map['caseId'] as String),
      v2betaId1: pulumi.Input.fromValue(map['v2betaId1'] as String),
      v2betumId: pulumi.Input.fromValue(map['v2betumId'] as String),
    );
  }
}
