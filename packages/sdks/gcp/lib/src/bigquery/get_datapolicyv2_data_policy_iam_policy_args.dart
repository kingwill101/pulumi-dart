// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigquery_get_datapolicyv2_data_policy_iam_policy_get_datapolicyv2_data_policy_iam_policy_args_doc}
/// Arguments for getDatapolicyv2DataPolicyIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_bigquery_get_datapolicyv2_data_policy_iam_policy_get_datapolicyv2_data_policy_iam_policy_args_doc}
class GetDatapolicyv2DataPolicyIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> dataPolicyId;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetDatapolicyv2DataPolicyIamPolicyArgs].
  /// [dataPolicyId] Used to find the parent resource to bind the IAM policy to
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// [project] The ID of the project in which the resource belongs.
  const GetDatapolicyv2DataPolicyIamPolicyArgs({
    required this.dataPolicyId,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataPolicyId': dataPolicyId,
      'location': ?location,
      'project': ?project,
    };
  }

  factory GetDatapolicyv2DataPolicyIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetDatapolicyv2DataPolicyIamPolicyArgs(
      dataPolicyId: pulumi.Input.fromValue(map['dataPolicyId'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

