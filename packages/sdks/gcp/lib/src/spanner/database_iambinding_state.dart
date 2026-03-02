// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_iambinding_condition.dart';

/// Input properties used for looking up and filtering DatabaseIAMBinding resources.
class DatabaseIAMBindingState {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  final pulumi.Input<DatabaseIAMBindingCondition>? condition;
  /// The name of the Spanner database.
  final pulumi.Input<String>? database;
  /// (Computed) The etag of the database's IAM policy.
  final pulumi.Input<String>? etag;
  /// The name of the Spanner instance the database belongs to.
  final pulumi.Input<String>? instance;
  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final pulumi.Input<List<String>>? members;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The role that should be applied. Only one
  /// `gcp.spanner.DatabaseIAMBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String>? role;

  /// Creates a new [DatabaseIAMBindingState].
  /// [condition] An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// [database] The name of the Spanner database.
  /// [etag] (Computed) The etag of the database's IAM policy.
  /// [instance] The name of the Spanner instance the database belongs to.
  /// [members] Identities that will be granted the privilege in `role`.
  /// [project] The ID of the project in which the resource belongs. If it
  /// [role] The role that should be applied. Only one
  DatabaseIAMBindingState({
    this.condition,
    this.database,
    this.etag,
    this.instance,
    this.members,
    this.project,
    this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<DatabaseIAMBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'database': ?database,
      'etag': ?etag,
      'instance': ?instance,
      'members': ?members,
      'project': ?project,
      'role': ?role,
    };
  }

  factory DatabaseIAMBindingState.fromMap(Map<String, dynamic> map) {
    return DatabaseIAMBindingState(
      condition: map['condition'] == null ? null : (DatabaseIAMBindingCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())).input(),
      database: map['database'] == null ? null : (map['database'] as String).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      instance: map['instance'] == null ? null : (map['instance'] as String).input(),
      members: map['members'] == null ? null : ((map['members'] as List).cast<String>()).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      role: map['role'] == null ? null : (map['role'] as String).input(),
    );
  }
}

