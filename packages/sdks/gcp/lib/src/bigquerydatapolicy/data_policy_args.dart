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
  final pulumi.Input<DataPolicyDataMaskingPolicy?>? dataMaskingPolicy;
  /// User-assigned (human readable) ID of the data policy that needs to be unique within a project. Used as {dataPolicyId} in part of the resource name.
  final pulumi.Input<String> dataPolicyId;
  /// The enrollment level of the service.
  /// Possible values are: `COLUMN_LEVEL_SECURITY_POLICY`, `DATA_MASKING_POLICY`.
  final pulumi.Input<String> dataPolicyType;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The name of the location of the data policy.
  final pulumi.Input<String> location;
  /// Policy tag resource name, in the format of projects/{project_number}/locations/{locationId}/taxonomies/{taxonomyId}/policyTags/{policyTag_id}.
  final pulumi.Input<String> policyTag;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [DataPolicyArgs].
  /// [dataMaskingPolicy] The data masking policy that specifies the data masking rule to use.
  /// [dataPolicyId] User-assigned (human readable) ID of the data policy that needs to be unique within a project. Used as {dataPolicyId} in part of the resource name.
  /// [dataPolicyType] The enrollment level of the service.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [location] The name of the location of the data policy.
  /// [policyTag] Policy tag resource name, in the format of projects/{project_number}/locations/{locationId}/taxonomies/{taxonomyId}/policyTags/{policyTag_id}.
  /// [project] The ID of the project in which the resource belongs.
  const DataPolicyArgs({
    this.dataMaskingPolicy,
    required this.dataPolicyId,
    required this.dataPolicyType,
    this.deletionPolicy,
    required this.location,
    required this.policyTag,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataMaskingPolicy': ?pulumi.Input.mapOptionalInputValue<DataPolicyDataMaskingPolicy, Map<String, dynamic>>(dataMaskingPolicy, (value) => value.toMap()),
      'dataPolicyId': dataPolicyId,
      'dataPolicyType': dataPolicyType,
      'deletionPolicy': ?deletionPolicy,
      'location': location,
      'policyTag': policyTag,
      'project': ?project,
    };
  }

  factory DataPolicyArgs.fromMap(Map<String, dynamic> map) {
    return DataPolicyArgs(
      dataMaskingPolicy: (() { final guardedValue = map['dataMaskingPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataPolicyDataMaskingPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataPolicyId: pulumi.Input.fromValue(map['dataPolicyId'] as String),
      dataPolicyType: pulumi.Input.fromValue(map['dataPolicyType'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      policyTag: pulumi.Input.fromValue(map['policyTag'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
