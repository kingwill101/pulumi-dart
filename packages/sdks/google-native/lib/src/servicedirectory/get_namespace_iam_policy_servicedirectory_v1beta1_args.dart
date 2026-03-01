// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicedirectory_v1beta1_get_namespace_iam_policy_servicedirectory_v1beta1_args_doc}
/// Arguments for getNamespaceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_servicedirectory_v1beta1_get_namespace_iam_policy_servicedirectory_v1beta1_args_doc}
class GetNamespaceIamPolicyServicedirectoryV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> namespaceId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetNamespaceIamPolicyServicedirectoryV1beta1Args].
  /// [location] Required.
  /// [namespaceId] Required.
  /// [project] Optional.
  GetNamespaceIamPolicyServicedirectoryV1beta1Args({
    required pulumi.Output<String> location,
    required pulumi.Output<String> namespaceId,
    pulumi.Output<String>? project,
  }) :
      location = pulumi.Input.asInput<String>(location),
      namespaceId = pulumi.Input.asInput<String>(namespaceId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'namespaceId': namespaceId,
      'project': ?project,
    };
  }

  factory GetNamespaceIamPolicyServicedirectoryV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetNamespaceIamPolicyServicedirectoryV1beta1Args(
      location: pulumi.Output.create<String>(map['location'] as String),
      namespaceId: pulumi.Output.create<String>(map['namespaceId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

