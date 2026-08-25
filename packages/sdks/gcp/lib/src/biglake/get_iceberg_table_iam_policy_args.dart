// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_biglake_get_iceberg_table_iam_policy_get_iceberg_table_iam_policy_args_doc}
/// Arguments for getIcebergTableIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_biglake_get_iceberg_table_iam_policy_get_iceberg_table_iam_policy_args_doc}
class GetIcebergTableIamPolicyArgs {
  /// The name of the IcebergCatalog.
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> catalog;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> name;
  /// The parent namespace of the table.
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> namespace;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [GetIcebergTableIamPolicyArgs].
  /// [catalog] The name of the IcebergCatalog.
  /// [name] Used to find the parent resource to bind the IAM policy to
  /// [namespace] The parent namespace of the table.
  /// [project] The ID of the project in which the resource belongs.
  const GetIcebergTableIamPolicyArgs({
    required this.catalog,
    required this.name,
    required this.namespace,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalog': catalog,
      'name': name,
      'namespace': namespace,
      'project': ?project,
    };
  }

  factory GetIcebergTableIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetIcebergTableIamPolicyArgs(
      catalog: pulumi.Input.fromValue(map['catalog'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
