// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataproc_get_metastore_database_iam_policy_get_metastore_database_iam_policy_args_doc}
/// Arguments for getMetastoreDatabaseIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataproc_get_metastore_database_iam_policy_get_metastore_database_iam_policy_args_doc}
class GetMetastoreDatabaseIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> database;

  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> serviceId;

  /// Creates a new [GetMetastoreDatabaseIamPolicyArgs].
  /// [database] Used to find the parent resource to bind the IAM policy to
  /// [location] Used to find the parent resource to bind the IAM policy to. If not specified,
  /// [project] The ID of the project in which the resource belongs.
  /// [serviceId] Used to find the parent resource to bind the IAM policy to
  GetMetastoreDatabaseIamPolicyArgs({
    required this.database,
    this.location,
    this.project,
    required this.serviceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': database,
      'location': ?location,
      'project': ?project,
      'serviceId': serviceId,
    };
  }

  factory GetMetastoreDatabaseIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetMetastoreDatabaseIamPolicyArgs(
      database: pulumi.Input.fromValue(map['database'] as String),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceId: pulumi.Input.fromValue(map['serviceId'] as String),
    );
  }
}
