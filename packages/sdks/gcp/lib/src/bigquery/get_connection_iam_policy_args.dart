// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigquery_get_connection_iam_policy_get_connection_iam_policy_args_doc}
/// Arguments for getConnectionIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_bigquery_get_connection_iam_policy_get_connection_iam_policy_args_doc}
class GetConnectionIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> connectionId;
  /// The geographic location where the connection should reside.
  /// Cloud SQL instance must be in the same location as the connection
  /// with following exceptions: Cloud SQL us-central1 maps to BigQuery US, Cloud SQL europe-west1 maps to BigQuery EU.
  /// Examples: US, EU, asia-northeast1, us-central1, europe-west1.
  /// Spanner Connections same as spanner region
  /// AWS allowed regions are aws-us-east-1
  /// Azure allowed regions are azure-eastus2 Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String?>? location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [GetConnectionIamPolicyArgs].
  /// [connectionId] Used to find the parent resource to bind the IAM policy to
  /// [location] The geographic location where the connection should reside.
  /// [project] The ID of the project in which the resource belongs.
  const GetConnectionIamPolicyArgs({
    required this.connectionId,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionId': connectionId,
      'location': ?location,
      'project': ?project,
    };
  }

  factory GetConnectionIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectionIamPolicyArgs(
      connectionId: pulumi.Input.fromValue(map['connectionId'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
