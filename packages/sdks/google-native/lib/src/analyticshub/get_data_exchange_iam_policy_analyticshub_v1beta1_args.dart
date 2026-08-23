// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_analyticshub_v1beta1_get_data_exchange_iam_policy_analyticshub_v1beta1_args_doc}
/// Arguments for getDataExchangeIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_analyticshub_v1beta1_get_data_exchange_iam_policy_analyticshub_v1beta1_args_doc}
class GetDataExchangeIamPolicyAnalyticshubV1beta1Args {
  final pulumi.Input<String> dataExchangeId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDataExchangeIamPolicyAnalyticshubV1beta1Args].
  /// [dataExchangeId] Required.
  /// [location] Required.
  /// [project] Optional.
  const GetDataExchangeIamPolicyAnalyticshubV1beta1Args({
    required this.dataExchangeId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataExchangeId': dataExchangeId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetDataExchangeIamPolicyAnalyticshubV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetDataExchangeIamPolicyAnalyticshubV1beta1Args(
      dataExchangeId: pulumi.Input.fromValue(map['dataExchangeId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
