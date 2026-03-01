// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'datapolicyv2_data_policy_data_masking_policy.dart';

/// Input properties used for looking up and filtering Datapolicyv2DataPolicy resources.
class Datapolicyv2DataPolicyState {
  /// The policy used to specify data masking rule.
  /// Structure is documented below.
  final pulumi.Input<Datapolicyv2DataPolicyDataMaskingPolicy>? dataMaskingPolicy;
  /// User-assigned (human readable) ID of the data policy that needs to be
  /// unique within a project. Used as {data_policy_id} in part of the resource
  /// name.
  final pulumi.Input<String>? dataPolicyId;
  /// Type of data policy.
  /// Possible values:
  /// DATA_MASKING_POLICY
  /// RAW_DATA_ACCESS_POLICY
  /// COLUMN_LEVEL_SECURITY_POLICY
  final pulumi.Input<String>? dataPolicyType;
  /// The etag for this Data Policy.
  /// This field is used for UpdateDataPolicy calls. If Data Policy exists, this
  /// field is required and must match the server's etag. It will also be
  /// populated in the response of GetDataPolicy, CreateDataPolicy, and
  /// UpdateDataPolicy calls.
  final pulumi.Input<String>? etag;
  /// The list of IAM principals that have Fine Grained Access to the underlying
  /// data goverened by this data policy.
  /// Uses the [IAM V2 principal
  /// syntax](https://cloud.google.com/iam/docs/principal-identifiers#v2) Only
  /// supports principal types users, groups, serviceaccounts, cloudidentity.
  /// This field is supported in V2 Data Policy only. In case of V1 data policies
  /// (i.e. verion = 1 and policy_tag is set), this field is not populated.
  final pulumi.Input<List<String>>? grantees;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// Identifier. Resource name of this data policy, in the format of
  /// `projects/{project_number}/locations/{location_id}/dataPolicies/{data_policy_id}`.
  final pulumi.Input<String>? name;
  /// Policy tag resource name, in the format of
  /// `projects/{project_number}/locations/{location_id}/taxonomies/{taxonomy_id}/policyTags/{policyTag_id}`.
  /// policy_tag is supported only for V1 data policies.
  final pulumi.Input<String>? policyTag;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The version of the Data Policy resource.
  /// Possible values:
  /// V1
  /// V2
  final pulumi.Input<String>? version;

  /// Creates a new [Datapolicyv2DataPolicyState].
  /// [dataMaskingPolicy] The policy used to specify data masking rule.
  /// [dataPolicyId] User-assigned (human readable) ID of the data policy that needs to be
  /// [dataPolicyType] Type of data policy.
  /// [etag] The etag for this Data Policy.
  /// [grantees] The list of IAM principals that have Fine Grained Access to the underlying
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Identifier. Resource name of this data policy, in the format of
  /// [policyTag] Policy tag resource name, in the format of
  /// [project] The ID of the project in which the resource belongs.
  /// [version] The version of the Data Policy resource.
  Datapolicyv2DataPolicyState({
    pulumi.Output<Datapolicyv2DataPolicyDataMaskingPolicy>? dataMaskingPolicy,
    pulumi.Output<String>? dataPolicyId,
    pulumi.Output<String>? dataPolicyType,
    pulumi.Output<String>? etag,
    pulumi.Output<List<String>>? grantees,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? policyTag,
    pulumi.Output<String>? project,
    pulumi.Output<String>? version,
  }) :
      dataMaskingPolicy = pulumi.Input.asOptionalInput<Datapolicyv2DataPolicyDataMaskingPolicy>(dataMaskingPolicy),
      dataPolicyId = pulumi.Input.asOptionalInput<String>(dataPolicyId),
      dataPolicyType = pulumi.Input.asOptionalInput<String>(dataPolicyType),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      grantees = pulumi.Input.asOptionalInput<List<String>>(grantees),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      policyTag = pulumi.Input.asOptionalInput<String>(policyTag),
      project = pulumi.Input.asOptionalInput<String>(project),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataMaskingPolicy': ?pulumi.Input.mapOptionalInputValue<Datapolicyv2DataPolicyDataMaskingPolicy, Map<String, dynamic>>(dataMaskingPolicy, (value) => value.toMap()),
      'dataPolicyId': ?dataPolicyId,
      'dataPolicyType': ?dataPolicyType,
      'etag': ?etag,
      'grantees': ?grantees,
      'location': ?location,
      'name': ?name,
      'policyTag': ?policyTag,
      'project': ?project,
      'version': ?version,
    };
  }

  factory Datapolicyv2DataPolicyState.fromMap(Map<String, dynamic> map) {
    return Datapolicyv2DataPolicyState(
      dataMaskingPolicy: map['dataMaskingPolicy'] == null ? null : pulumi.Output.create<Datapolicyv2DataPolicyDataMaskingPolicy>(Datapolicyv2DataPolicyDataMaskingPolicy.fromMap((map['dataMaskingPolicy'] as Map).cast<String, dynamic>())),
      dataPolicyId: map['dataPolicyId'] == null ? null : pulumi.Output.create<String>(map['dataPolicyId'] as String),
      dataPolicyType: map['dataPolicyType'] == null ? null : pulumi.Output.create<String>(map['dataPolicyType'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      grantees: map['grantees'] == null ? null : pulumi.Output.create<List<String>>((map['grantees'] as List).cast<String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      policyTag: map['policyTag'] == null ? null : pulumi.Output.create<String>(map['policyTag'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

