// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigqueryanalyticshub_get_data_exchange_iam_policy_get_data_exchange_iam_policy_args_doc}
/// Arguments for getDataExchangeIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_bigqueryanalyticshub_get_data_exchange_iam_policy_get_data_exchange_iam_policy_args_doc}
class GetDataExchangeIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> dataExchangeId;
  /// The name of the location this data exchange.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetDataExchangeIamPolicyArgs].
  /// [dataExchangeId] Used to find the parent resource to bind the IAM policy to
  /// [location] The name of the location this data exchange.
  /// [project] The ID of the project in which the resource belongs.
  GetDataExchangeIamPolicyArgs({
    required this.dataExchangeId,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataExchangeId': dataExchangeId,
      'location': ?location,
      'project': ?project,
    };
  }

  factory GetDataExchangeIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetDataExchangeIamPolicyArgs(
      dataExchangeId: (map['dataExchangeId'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

