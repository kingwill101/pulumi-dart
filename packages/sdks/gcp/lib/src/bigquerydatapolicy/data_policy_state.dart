// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_policy_data_masking_policy.dart';

/// Input properties used for looking up and filtering DataPolicy resources.
class DataPolicyState {
  /// The data masking policy that specifies the data masking rule to use.
  /// Structure is documented below.
  final pulumi.Input<DataPolicyDataMaskingPolicy?>? dataMaskingPolicy;
  /// User-assigned (human readable) ID of the data policy that needs to be unique within a project. Used as {dataPolicyId} in part of the resource name.
  final pulumi.Input<String?>? dataPolicyId;
  /// The enrollment level of the service.
  /// Possible values are: `COLUMN_LEVEL_SECURITY_POLICY`, `DATA_MASKING_POLICY`.
  final pulumi.Input<String?>? dataPolicyType;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The name of the location of the data policy.
  final pulumi.Input<String?>? location;
  /// Resource name of this data policy, in the format of projects/{project_number}/locations/{locationId}/dataPolicies/{dataPolicyId}.
  final pulumi.Input<String?>? name;
  /// Policy tag resource name, in the format of projects/{project_number}/locations/{locationId}/taxonomies/{taxonomyId}/policyTags/{policyTag_id}.
  final pulumi.Input<String?>? policyTag;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [DataPolicyState].
  /// [dataMaskingPolicy] The data masking policy that specifies the data masking rule to use.
  /// [dataPolicyId] User-assigned (human readable) ID of the data policy that needs to be unique within a project. Used as {dataPolicyId} in part of the resource name.
  /// [dataPolicyType] The enrollment level of the service.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [location] The name of the location of the data policy.
  /// [name] Resource name of this data policy, in the format of projects/{project_number}/locations/{locationId}/dataPolicies/{dataPolicyId}.
  /// [policyTag] Policy tag resource name, in the format of projects/{project_number}/locations/{locationId}/taxonomies/{taxonomyId}/policyTags/{policyTag_id}.
  /// [project] The ID of the project in which the resource belongs.
  const DataPolicyState({
    this.dataMaskingPolicy,
    this.dataPolicyId,
    this.dataPolicyType,
    this.deletionPolicy,
    this.location,
    this.name,
    this.policyTag,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataMaskingPolicy': ?pulumi.Input.mapOptionalInputValue<DataPolicyDataMaskingPolicy, Map<String, dynamic>>(dataMaskingPolicy, (value) => value.toMap()),
      'dataPolicyId': ?dataPolicyId,
      'dataPolicyType': ?dataPolicyType,
      'deletionPolicy': ?deletionPolicy,
      'location': ?location,
      'name': ?name,
      'policyTag': ?policyTag,
      'project': ?project,
    };
  }

  factory DataPolicyState.fromMap(Map<String, dynamic> map) {
    return DataPolicyState(
      dataMaskingPolicy: (() { final guardedValue = map['dataMaskingPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataPolicyDataMaskingPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataPolicyId: (() { final guardedValue = map['dataPolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataPolicyType: (() { final guardedValue = map['dataPolicyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyTag: (() { final guardedValue = map['policyTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
