// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_masking_policy.dart';
import 'data_policy_data_policy_type.dart';

/// {@template pulumi_bigquerydatapolicy_v1_data_policy_args_doc}
/// The set of arguments for DataPolicy.
/// {@endtemplate}
/// {@macro pulumi_bigquerydatapolicy_v1_data_policy_args_doc}
class DataPolicyArgs {
  /// The data masking policy that specifies the data masking rule to use.
  final pulumi.Input<DataMaskingPolicy>? dataMaskingPolicy;

  /// User-assigned (human readable) ID of the data policy that needs to be unique within a project. Used as {data_policy_id} in part of the resource name.
  final pulumi.Input<String>? dataPolicyId;

  /// Type of data policy.
  final pulumi.Input<DataPolicyDataPolicyType>? dataPolicyType;
  final pulumi.Input<String>? location;

  /// Policy tag resource name, in the format of `projects/{project_number}/locations/{location_id}/taxonomies/{taxonomy_id}/policyTags/{policyTag_id}`.
  final pulumi.Input<String>? policyTag;
  final pulumi.Input<String>? project;

  /// Creates a new [DataPolicyArgs].
  /// [dataMaskingPolicy] The data masking policy that specifies the data masking rule to use.
  /// [dataPolicyId] User-assigned (human readable) ID of the data policy that needs to be unique within a project. Used as {data_policy_id} in part of the resource name.
  /// [dataPolicyType] Type of data policy.
  /// [location] Optional.
  /// [policyTag] Policy tag resource name, in the format of `projects/{project_number}/locations/{location_id}/taxonomies/{taxonomy_id}/policyTags/{policyTag_id}`.
  /// [project] Optional.
  DataPolicyArgs({
    this.dataMaskingPolicy,
    this.dataPolicyId,
    this.dataPolicyType,
    this.location,
    this.policyTag,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataMaskingPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            DataMaskingPolicy,
            Map<String, dynamic>
          >(dataMaskingPolicy, (value) => value.toMap()),
      'dataPolicyId': ?dataPolicyId,
      'dataPolicyType':
          ?pulumi.Input.mapOptionalInputValue<DataPolicyDataPolicyType, String>(
            dataPolicyType,
            (value) => value.wireValue,
          ),
      'location': ?location,
      'policyTag': ?policyTag,
      'project': ?project,
    };
  }

  factory DataPolicyArgs.fromMap(Map<String, dynamic> map) {
    return DataPolicyArgs(
      dataMaskingPolicy: (() {
        final guardedValue = map['dataMaskingPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DataMaskingPolicy.fromMap(
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
        return pulumi.Input.fromValue(
          DataPolicyDataPolicyType.fromValue(guardedValue as String),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
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
