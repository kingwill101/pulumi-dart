// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_v1beta1_get_address_group_iam_policy_networksecurity_v1beta1_args_doc}
/// Arguments for getAddressGroupIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1beta1_get_address_group_iam_policy_networksecurity_v1beta1_args_doc}
class GetAddressGroupIamPolicyNetworksecurityV1beta1Args {
  final pulumi.Input<String> addressGroupId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAddressGroupIamPolicyNetworksecurityV1beta1Args].
  /// [addressGroupId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetAddressGroupIamPolicyNetworksecurityV1beta1Args({
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

  factory GetAddressGroupIamPolicyNetworksecurityV1beta1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetAddressGroupIamPolicyNetworksecurityV1beta1Args(
      addressGroupId: pulumi.Input.fromValue(map['addressGroupId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      optionsRequestedPolicyVersion: (() {
        final guardedValue = map['optionsRequestedPolicyVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
