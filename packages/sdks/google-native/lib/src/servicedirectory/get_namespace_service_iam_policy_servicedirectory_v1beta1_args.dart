// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicedirectory_v1beta1_get_namespace_service_iam_policy_servicedirectory_v1beta1_args_doc}
/// Arguments for getNamespaceServiceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_servicedirectory_v1beta1_get_namespace_service_iam_policy_servicedirectory_v1beta1_args_doc}
class GetNamespaceServiceIamPolicyServicedirectoryV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> namespaceId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceId;

  /// Creates a new [GetNamespaceServiceIamPolicyServicedirectoryV1beta1Args].
  /// [location] Required.
  /// [namespaceId] Required.
  /// [project] Optional.
  /// [serviceId] Required.
  GetNamespaceServiceIamPolicyServicedirectoryV1beta1Args({
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

  factory GetNamespaceServiceIamPolicyServicedirectoryV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetNamespaceServiceIamPolicyServicedirectoryV1beta1Args(
      location: (map['location'] as String).input(),
      namespaceId: (map['namespaceId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      serviceId: (map['serviceId'] as String).input(),
    );
  }
}

