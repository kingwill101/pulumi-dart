// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_iam_member_condition.dart';

/// Input properties used for looking up and filtering TableIamMember resources.
class TableIamMemberState {
  final pulumi.Input<TableIamMemberCondition>? condition;
  /// (Computed) The etag of the tables's IAM policy.
  final pulumi.Input<String>? etag;
  /// The name or relative resource id of the instance that owns the table.
  final pulumi.Input<String>? instanceName;
  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final pulumi.Input<String>? member;
  /// The project in which the table belongs. If it
  /// is not provided, this provider will use the provider default.
  final pulumi.Input<String>? project;
  /// The role that should be applied. Only one
  /// `gcp.bigtable.TableIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`. Read more about roles [here](https://cloud.google.com/bigtable/docs/access-control#roles).
  ///
  /// `gcp.bigtable.TableIamPolicy` only:
  final pulumi.Input<String>? role;
  /// The name or relative resource id of the table to manage IAM policies for.
  ///
  /// For `gcp.bigtable.TableIamMember` or `gcp.bigtable.TableIamBinding`:
  final pulumi.Input<String>? table;

  /// Creates a new [TableIamMemberState].
  /// [condition] Optional.
  /// [etag] (Computed) The etag of the tables's IAM policy.
  /// [instanceName] The name or relative resource id of the instance that owns the table.
  /// [member] Identities that will be granted the privilege in `role`.
  /// [project] The project in which the table belongs. If it
  /// [role] The role that should be applied. Only one
  /// [table] The name or relative resource id of the table to manage IAM policies for.
  TableIamMemberState({
    pulumi.Output<TableIamMemberCondition>? condition,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? instanceName,
    pulumi.Output<String>? member,
    pulumi.Output<String>? project,
    pulumi.Output<String>? role,
    pulumi.Output<String>? table,
  }) :
      condition = pulumi.Input.asOptionalInput<TableIamMemberCondition>(condition),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      instanceName = pulumi.Input.asOptionalInput<String>(instanceName),
      member = pulumi.Input.asOptionalInput<String>(member),
      project = pulumi.Input.asOptionalInput<String>(project),
      role = pulumi.Input.asOptionalInput<String>(role),
      table = pulumi.Input.asOptionalInput<String>(table);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<TableIamMemberCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'etag': ?etag,
      'instanceName': ?instanceName,
      'member': ?member,
      'project': ?project,
      'role': ?role,
      'table': ?table,
    };
  }

  factory TableIamMemberState.fromMap(Map<String, dynamic> map) {
    return TableIamMemberState(
      condition: map['condition'] == null ? null : pulumi.Output.create<TableIamMemberCondition>(TableIamMemberCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      instanceName: map['instanceName'] == null ? null : pulumi.Output.create<String>(map['instanceName'] as String),
      member: map['member'] == null ? null : pulumi.Output.create<String>(map['member'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
      table: map['table'] == null ? null : pulumi.Output.create<String>(map['table'] as String),
    );
  }
}

