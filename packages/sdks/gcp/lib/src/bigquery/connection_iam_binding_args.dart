// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_iam_binding_condition.dart';

/// {@template pulumi_bigquery_connection_iam_binding_connection_iam_binding_args_doc}
/// The set of arguments for ConnectionIamBinding.
/// {@endtemplate}
/// {@macro pulumi_bigquery_connection_iam_binding_connection_iam_binding_args_doc}
class ConnectionIamBindingArgs {
  final pulumi.Input<ConnectionIamBindingCondition>? condition;
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
  final pulumi.Input<String>? location;
  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  /// * **projectOwner:projectid**: Owners of the given project. For example, "projectOwner:my-example-project"
  /// * **projectEditor:projectid**: Editors of the given project. For example, "projectEditor:my-example-project"
  /// * **projectViewer:projectid**: Viewers of the given project. For example, "projectViewer:my-example-project"
  /// * **Federated identities**: One or more federated identities in a workload or workforce identity pool, workload running on GKE, etc. Refer to the [Principal identifiers documentation](https://cloud.google.com/iam/docs/principal-identifiers#allow) for examples of targets and valid configuration. For example, "principal://iam.googleapis.com/locations/global/workforcePools/example-contractors/subject/joe@example.com"
  final pulumi.Input<List<String>> members;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;
  /// The role that should be applied. Only one
  /// `gcp.bigquery.ConnectionIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String> role;

  /// Creates a new [ConnectionIamBindingArgs].
  /// [condition] Optional.
  /// [connectionId] Used to find the parent resource to bind the IAM policy to
  /// [location] The geographic location where the connection should reside.
  /// [members] Identities that will be granted the privilege in `role`.
  /// [project] The ID of the project in which the resource belongs.
  /// [role] The role that should be applied. Only one
  ConnectionIamBindingArgs({
    this.condition,
    required this.connectionId,
    this.location,
    required this.members,
    this.project,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<ConnectionIamBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'connectionId': connectionId,
      'location': ?location,
      'members': members,
      'project': ?project,
      'role': role,
    };
  }

  factory ConnectionIamBindingArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionIamBindingArgs(
      condition: map['condition'] == null ? null : (ConnectionIamBindingCondition.fromMap((map['condition']! as Map).cast<String, dynamic>())).input(),
      connectionId: (map['connectionId'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      members: ((map['members'] as List).cast<String>()).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      role: (map['role'] as String).input(),
    );
  }
}

