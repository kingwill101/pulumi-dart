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
    required pulumi.Output<String> dataAttributeBindingId,
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      dataAttributeBindingId = pulumi.Input.asInput<String>(dataAttributeBindingId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

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
      dataAttributeBindingId: pulumi.Output.create<String>(map['dataAttributeBindingId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

