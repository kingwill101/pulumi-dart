// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataproc_get_metastore_table_iam_policy_get_metastore_table_iam_policy_args_doc}
/// Arguments for getMetastoreTableIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataproc_get_metastore_table_iam_policy_get_metastore_table_iam_policy_args_doc}
class GetMetastoreTableIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> databaseId;
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> serviceId;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> table;

  /// Creates a new [GetMetastoreTableIamPolicyArgs].
  /// [databaseId] Used to find the parent resource to bind the IAM policy to
  /// [location] Used to find the parent resource to bind the IAM policy to. If not specified,
  /// [project] The ID of the project in which the resource belongs.
  /// [serviceId] Used to find the parent resource to bind the IAM policy to
  /// [table] Used to find the parent resource to bind the IAM policy to
  GetMetastoreTableIamPolicyArgs({
    required pulumi.Output<String> databaseId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> serviceId,
    required pulumi.Output<String> table,
  }) :
      databaseId = pulumi.Input.asInput<String>(databaseId),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      serviceId = pulumi.Input.asInput<String>(serviceId),
      table = pulumi.Input.asInput<String>(table);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseId': databaseId,
      'location': ?location,
      'project': ?project,
      'serviceId': serviceId,
      'table': table,
    };
  }

  factory GetMetastoreTableIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetMetastoreTableIamPolicyArgs(
      databaseId: pulumi.Output.create<String>(map['databaseId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      serviceId: pulumi.Output.create<String>(map['serviceId'] as String),
      table: pulumi.Output.create<String>(map['table'] as String),
    );
  }
}

