// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_iam_binding_condition.dart';

/// {@template pulumi_bigtable_table_iam_binding_table_iam_binding_args_doc}
/// The set of arguments for TableIamBinding.
/// {@endtemplate}
/// {@macro pulumi_bigtable_table_iam_binding_table_iam_binding_args_doc}
class TableIamBindingArgs {
  final pulumi.Input<TableIamBindingCondition>? condition;
  /// The name or relative resource id of the instance that owns the table.
  final pulumi.Input<String> instanceName;
  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final pulumi.Input<List<String>> members;
  /// The project in which the table belongs. If it
  /// is not provided, this provider will use the provider default.
  final pulumi.Input<String>? project;
  /// The role that should be applied. Only one
  /// `gcp.bigtable.TableIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`. Read more about roles [here](https://cloud.google.com/bigtable/docs/access-control#roles).
  ///
  /// `gcp.bigtable.TableIamPolicy` only:
  final pulumi.Input<String> role;
  /// The name or relative resource id of the table to manage IAM policies for.
  ///
  /// For `gcp.bigtable.TableIamMember` or `gcp.bigtable.TableIamBinding`:
  final pulumi.Input<String> table;

  /// Creates a new [TableIamBindingArgs].
  /// [condition] Optional.
  /// [instanceName] The name or relative resource id of the instance that owns the table.
  /// [members] Identities that will be granted the privilege in `role`.
  /// [project] The project in which the table belongs. If it
  /// [role] The role that should be applied. Only one
  /// [table] The name or relative resource id of the table to manage IAM policies for.
  const TableIamBindingArgs({
    this.condition,
    required this.instanceName,
    required this.members,
    this.project,
    required this.role,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<TableIamBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'instanceName': instanceName,
      'members': members,
      'project': ?project,
      'role': role,
      'table': table,
    };
  }

  factory TableIamBindingArgs.fromMap(Map<String, dynamic> map) {
    return TableIamBindingArgs(
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceName: pulumi.Input.fromValue(map['instanceName'] as String),
      members: pulumi.Input.fromValue((map['members'] as List).cast<String>()),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: pulumi.Input.fromValue(map['role'] as String),
      table: pulumi.Input.fromValue(map['table'] as String),
    );
  }
}

