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
    pulumi.Output<DataPolicyDataMaskingPolicy>? dataMaskingPolicy,
    required pulumi.Output<String> dataPolicyId,
    required pulumi.Output<String> dataPolicyType,
    required pulumi.Output<String> location,
    required pulumi.Output<String> policyTag,
    pulumi.Output<String>? project,
  }) :
      dataMaskingPolicy = pulumi.Input.asOptionalInput<DataPolicyDataMaskingPolicy>(dataMaskingPolicy),
      dataPolicyId = pulumi.Input.asInput<String>(dataPolicyId),
      dataPolicyType = pulumi.Input.asInput<String>(dataPolicyType),
      location = pulumi.Input.asInput<String>(location),
      policyTag = pulumi.Input.asInput<String>(policyTag),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataMaskingPolicy': ?pulumi.Input.mapOptionalInputValue<DataPolicyDataMaskingPolicy, Map<String, dynamic>>(dataMaskingPolicy, (value) => value.toMap()),
      'dataPolicyId': dataPolicyId,
      'dataPolicyType': dataPolicyType,
      'location': location,
      'policyTag': policyTag,
      'project': ?project,
    };
  }

  factory DataPolicyArgs.fromMap(Map<String, dynamic> map) {
    return DataPolicyArgs(
      dataMaskingPolicy: map['dataMaskingPolicy'] == null ? null : pulumi.Output.create<DataPolicyDataMaskingPolicy>(DataPolicyDataMaskingPolicy.fromMap((map['dataMaskingPolicy'] as Map).cast<String, dynamic>())),
      dataPolicyId: pulumi.Output.create<String>(map['dataPolicyId'] as String),
      dataPolicyType: pulumi.Output.create<String>(map['dataPolicyType'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      policyTag: pulumi.Output.create<String>(map['policyTag'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

