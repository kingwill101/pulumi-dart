// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_biglake_get_iceberg_namespace_iam_policy_get_iceberg_namespace_iam_policy_args_doc}
/// Arguments for getIcebergNamespaceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_biglake_get_iceberg_namespace_iam_policy_get_iceberg_namespace_iam_policy_args_doc}
class GetIcebergNamespaceIamPolicyArgs {
  /// The name of the IcebergCatalog.
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> catalog;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> namespaceId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetIcebergNamespaceIamPolicyArgs].
  /// [catalog] The name of the IcebergCatalog.
  /// [namespaceId] Used to find the parent resource to bind the IAM policy to
  /// [project] The ID of the project in which the resource belongs.
  const GetIcebergNamespaceIamPolicyArgs({
    required this.catalog,
    required this.namespaceId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalog': catalog,
      'namespaceId': namespaceId,
      'project': ?project,
    };
  }

  factory GetIcebergNamespaceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetIcebergNamespaceIamPolicyArgs(
      catalog: pulumi.Input.fromValue(map['catalog'] as String),
      namespaceId: pulumi.Input.fromValue(map['namespaceId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
