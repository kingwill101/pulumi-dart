// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicedirectory_v1_get_namespace_service_iam_policy_args_doc}
/// Arguments for getNamespaceServiceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_servicedirectory_v1_get_namespace_service_iam_policy_args_doc}
class GetNamespaceServiceIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> namespaceId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceId;

  /// Creates a new [GetNamespaceServiceIamPolicyArgs].
  /// [location] Required.
  /// [namespaceId] Required.
  /// [project] Optional.
  /// [serviceId] Required.
  GetNamespaceServiceIamPolicyArgs({
    required this.location,
    required this.namespaceId,
    this.project,
    required this.serviceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'namespaceId': namespaceId,
      'project': ?project,
      'serviceId': serviceId,
    };
  }

  factory GetNamespaceServiceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetNamespaceServiceIamPolicyArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      namespaceId: pulumi.Input.fromValue(map['namespaceId'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceId: pulumi.Input.fromValue(map['serviceId'] as String),
    );
  }
}
