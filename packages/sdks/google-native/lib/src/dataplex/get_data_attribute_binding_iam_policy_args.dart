// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_v1_get_data_attribute_binding_iam_policy_args_doc}
/// Arguments for getDataAttributeBindingIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_get_data_attribute_binding_iam_policy_args_doc}
class GetDataAttributeBindingIamPolicyArgs {
  final pulumi.Input<String> dataAttributeBindingId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDataAttributeBindingIamPolicyArgs].
  /// [dataAttributeBindingId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetDataAttributeBindingIamPolicyArgs({
    required this.dataAttributeBindingId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataAttributeBindingId': dataAttributeBindingId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetDataAttributeBindingIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetDataAttributeBindingIamPolicyArgs(
      dataAttributeBindingId: (map['dataAttributeBindingId'] as String).input(),
      location: (map['location'] as String).input(),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

