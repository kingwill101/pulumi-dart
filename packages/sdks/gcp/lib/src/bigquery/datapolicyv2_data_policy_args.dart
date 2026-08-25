// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'datapolicyv2_data_policy_data_governance_tag.dart';
import 'datapolicyv2_data_policy_data_masking_policy.dart';

/// {@template pulumi_bigquery_datapolicyv2_data_policy_datapolicyv2_data_policy_args_doc}
/// The set of arguments for Datapolicyv2DataPolicy.
/// {@endtemplate}
/// {@macro pulumi_bigquery_datapolicyv2_data_policy_datapolicyv2_data_policy_args_doc}
class Datapolicyv2DataPolicyArgs {
  /// Data Governance tag bound to the Data Policy.
  /// Structure is documented below.
  final pulumi.Input<Datapolicyv2DataPolicyDataGovernanceTag?>? dataGovernanceTag;
  /// The policy used to specify data masking rule.
  /// Structure is documented below.
  final pulumi.Input<Datapolicyv2DataPolicyDataMaskingPolicy?>? dataMaskingPolicy;
  /// User-assigned (human readable) ID of the data policy that needs to be
  /// unique within a project. Used as {data_policy_id} in part of the resource
  /// name.
  final pulumi.Input<String> dataPolicyId;
  /// Type of data policy.
  /// Possible values:
  /// DATA_MASKING_POLICY
  /// RAW_DATA_ACCESS_POLICY
  /// COLUMN_LEVEL_SECURITY_POLICY
  final pulumi.Input<String> dataPolicyType;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The etag for this Data Policy.
  /// This field is used for UpdateDataPolicy calls. If Data Policy exists, this
  /// field is required and must match the server's etag. It will also be
  /// populated in the response of GetDataPolicy, CreateDataPolicy, and
  /// UpdateDataPolicy calls.
  final pulumi.Input<String?>? etag;
  /// The list of IAM principals that have Fine Grained Access to the underlying
  /// data goverened by this data policy.
  /// Uses the [IAM V2 principal
  /// syntax](https://cloud.google.com/iam/docs/principal-identifiers#v2) Only
  /// supports principal types users, groups, serviceaccounts, cloudidentity.
  /// This field is supported in V2 Data Policy only. In case of V1 data policies
  /// (i.e. verion = 1 and policyTag is set), this field is not populated.
  final pulumi.Input<List<String>?>? grantees;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [Datapolicyv2DataPolicyArgs].
  /// [dataGovernanceTag] Data Governance tag bound to the Data Policy.
  /// [dataMaskingPolicy] The policy used to specify data masking rule.
  /// [dataPolicyId] User-assigned (human readable) ID of the data policy that needs to be
  /// [dataPolicyType] Type of data policy.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [etag] The etag for this Data Policy.
  /// [grantees] The list of IAM principals that have Fine Grained Access to the underlying
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  const Datapolicyv2DataPolicyArgs({
    this.dataGovernanceTag,
    this.dataMaskingPolicy,
    required this.dataPolicyId,
    required this.dataPolicyType,
    this.deletionPolicy,
    this.etag,
    this.grantees,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataGovernanceTag': ?pulumi.Input.mapOptionalInputValue<Datapolicyv2DataPolicyDataGovernanceTag, Map<String, dynamic>>(dataGovernanceTag, (value) => value.toMap()),
      'dataMaskingPolicy': ?pulumi.Input.mapOptionalInputValue<Datapolicyv2DataPolicyDataMaskingPolicy, Map<String, dynamic>>(dataMaskingPolicy, (value) => value.toMap()),
      'dataPolicyId': dataPolicyId,
      'dataPolicyType': dataPolicyType,
      'deletionPolicy': ?deletionPolicy,
      'etag': ?etag,
      'grantees': ?grantees,
      'location': location,
      'project': ?project,
    };
  }

  factory Datapolicyv2DataPolicyArgs.fromMap(Map<String, dynamic> map) {
    return Datapolicyv2DataPolicyArgs(
      dataGovernanceTag: (() { final guardedValue = map['dataGovernanceTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Datapolicyv2DataPolicyDataGovernanceTag.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataMaskingPolicy: (() { final guardedValue = map['dataMaskingPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Datapolicyv2DataPolicyDataMaskingPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataPolicyId: pulumi.Input.fromValue(map['dataPolicyId'] as String),
      dataPolicyType: pulumi.Input.fromValue(map['dataPolicyType'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      grantees: (() { final guardedValue = map['grantees']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
