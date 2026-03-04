// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1_get_service_binding_iam_policy_args_doc}
/// Arguments for getServiceBindingIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1_get_service_binding_iam_policy_args_doc}
class GetServiceBindingIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceBindingId;

  /// Creates a new [GetServiceBindingIamPolicyArgs].
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [serviceBindingId] Required.
  GetServiceBindingIamPolicyArgs({
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.serviceBindingId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'serviceBindingId': serviceBindingId,
    };
  }

  factory GetServiceBindingIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceBindingIamPolicyArgs(
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
      serviceBindingId: pulumi.Input.fromValue(
        map['serviceBindingId'] as String,
      ),
    );
  }
}
