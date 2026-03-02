// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_v1_get_address_group_iam_policy_args_doc}
/// Arguments for getAddressGroupIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1_get_address_group_iam_policy_args_doc}
class GetAddressGroupIamPolicyArgs {
  final pulumi.Input<String> addressGroupId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAddressGroupIamPolicyArgs].
  /// [addressGroupId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetAddressGroupIamPolicyArgs({
    required this.addressGroupId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressGroupId': addressGroupId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetAddressGroupIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAddressGroupIamPolicyArgs(
      addressGroupId: (map['addressGroupId'] as String).input(),
      location: (map['location'] as String).input(),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion'] as int).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

