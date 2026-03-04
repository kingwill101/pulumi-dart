// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_policy_data_masking_policy.dart';

/// Input properties used for looking up and filtering DataPolicy resources.
class DataPolicyState {
  /// The data masking policy that specifies the data masking rule to use.
  /// Structure is documented below.
  final pulumi.Input<DataPolicyDataMaskingPolicy>? dataMaskingPolicy;

  /// User-assigned (human readable) ID of the data policy that needs to be unique within a project. Used as {dataPolicyId} in part of the resource name.
  final pulumi.Input<String>? dataPolicyId;

  /// The enrollment level of the service.
  /// Possible values are: `COLUMN_LEVEL_SECURITY_POLICY`, `DATA_MASKING_POLICY`.
  final pulumi.Input<String>? dataPolicyType;

  /// The name of the location of the data policy.
  final pulumi.Input<String>? location;

  /// Resource name of this data policy, in the format of projects/{project_number}/locations/{locationId}/dataPolicies/{dataPolicyId}.
  final pulumi.Input<String>? name;

  /// Policy tag resource name, in the format of projects/{project_number}/locations/{locationId}/taxonomies/{taxonomyId}/policyTags/{policyTag_id}.
  final pulumi.Input<String>? policyTag;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [DataPolicyState].
  /// [dataMaskingPolicy] The data masking policy that specifies the data masking rule to use.
  /// [dataPolicyId] User-assigned (human readable) ID of the data policy that needs to be unique within a project. Used as {dataPolicyId} in part of the resource name.
  /// [dataPolicyType] The enrollment level of the service.
  /// [location] The name of the location of the data policy.
  /// [name] Resource name of this data policy, in the format of projects/{project_number}/locations/{locationId}/dataPolicies/{dataPolicyId}.
  /// [policyTag] Policy tag resource name, in the format of projects/{project_number}/locations/{locationId}/taxonomies/{taxonomyId}/policyTags/{policyTag_id}.
  /// [project] The ID of the project in which the resource belongs.
  DataPolicyState({
    this.dataMaskingPolicy,
    this.dataPolicyId,
    this.dataPolicyType,
    this.location,
    this.name,
    this.policyTag,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataMaskingPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            DataPolicyDataMaskingPolicy,
            Map<String, dynamic>
          >(dataMaskingPolicy, (value) => value.toMap()),
      'dataPolicyId': ?dataPolicyId,
      'dataPolicyType': ?dataPolicyType,
      'location': ?location,
      'name': ?name,
      'policyTag': ?policyTag,
      'project': ?project,
    };
  }

  factory DataPolicyState.fromMap(Map<String, dynamic> map) {
    return DataPolicyState(
      dataMaskingPolicy: (() {
        final guardedValue = map['dataMaskingPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DataPolicyDataMaskingPolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      dataPolicyId: (() {
        final guardedValue = map['dataPolicyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataPolicyType: (() {
        final guardedValue = map['dataPolicyType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policyTag: (() {
        final guardedValue = map['policyTag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
