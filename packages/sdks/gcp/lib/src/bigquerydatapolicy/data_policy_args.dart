// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_policy_data_masking_policy.dart';

/// {@template pulumi_bigquerydatapolicy_data_policy_data_policy_args_doc}
/// The set of arguments for DataPolicy.
/// {@endtemplate}
/// {@macro pulumi_bigquerydatapolicy_data_policy_data_policy_args_doc}
class DataPolicyArgs {
  /// The data masking policy that specifies the data masking rule to use.
  /// Structure is documented below.
  final pulumi.Input<DataPolicyDataMaskingPolicy>? dataMaskingPolicy;

  /// User-assigned (human readable) ID of the data policy that needs to be unique within a project. Used as {dataPolicyId} in part of the resource name.
  final pulumi.Input<String> dataPolicyId;

  /// The enrollment level of the service.
  /// Possible values are: `COLUMN_LEVEL_SECURITY_POLICY`, `DATA_MASKING_POLICY`.
  final pulumi.Input<String> dataPolicyType;

  /// The name of the location of the data policy.
  final pulumi.Input<String> location;

  /// Policy tag resource name, in the format of projects/{project_number}/locations/{locationId}/taxonomies/{taxonomyId}/policyTags/{policyTag_id}.
  final pulumi.Input<String> policyTag;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [DataPolicyArgs].
  /// [dataMaskingPolicy] The data masking policy that specifies the data masking rule to use.
  /// [dataPolicyId] User-assigned (human readable) ID of the data policy that needs to be unique within a project. Used as {dataPolicyId} in part of the resource name.
  /// [dataPolicyType] The enrollment level of the service.
  /// [location] The name of the location of the data policy.
  /// [policyTag] Policy tag resource name, in the format of projects/{project_number}/locations/{locationId}/taxonomies/{taxonomyId}/policyTags/{policyTag_id}.
  /// [project] The ID of the project in which the resource belongs.
  DataPolicyArgs({
    this.dataMaskingPolicy,
    required this.dataPolicyId,
    required this.dataPolicyType,
    required this.location,
    required this.policyTag,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataMaskingPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            DataPolicyDataMaskingPolicy,
            Map<String, dynamic>
          >(dataMaskingPolicy, (value) => value.toMap()),
      'dataPolicyId': dataPolicyId,
      'dataPolicyType': dataPolicyType,
      'location': location,
      'policyTag': policyTag,
      'project': ?project,
    };
  }

  factory DataPolicyArgs.fromMap(Map<String, dynamic> map) {
    return DataPolicyArgs(
      dataMaskingPolicy: (() {
        final guardedValue = map['dataMaskingPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DataPolicyDataMaskingPolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      dataPolicyId: pulumi.Input.fromValue(map['dataPolicyId'] as String),
      dataPolicyType: pulumi.Input.fromValue(map['dataPolicyType'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      policyTag: pulumi.Input.fromValue(map['policyTag'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
