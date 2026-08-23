// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigquery_row_access_policy_row_access_policy_args_doc}
/// The set of arguments for RowAccessPolicy.
/// {@endtemplate}
/// {@macro pulumi_bigquery_row_access_policy_row_access_policy_args_doc}
class RowAccessPolicyArgs {
  /// The ID of the dataset containing this row access policy.
  final pulumi.Input<String> datasetId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// A SQL boolean expression that represents the rows defined by this row
  /// access policy, similar to the boolean expression in a WHERE clause of a
  /// SELECT query on a table.
  /// References to other tables, routines, and temporary functions are not
  /// supported.
  /// Examples: region="EU"
  /// dateField = CAST('2019-9-27' as DATE)
  /// nullableField is not NULL
  /// numericField BETWEEN 1.0 AND 5.0
  final pulumi.Input<String> filterPredicate;
  /// Input only. The optional list of iamMember users or groups that specifies the initial
  /// members that the row-level access policy should be created with.
  /// grantees types:
  /// - "user:alice@example.com": An email address that represents a specific
  /// Google account.
  /// - "serviceAccount:my-other-app@appspot.gserviceaccount.com": An email
  /// address that represents a service account.
  /// - "group:admins@example.com": An email address that represents a Google
  /// group.
  /// - "domain:example.com":The Google Workspace domain (primary) that
  /// represents all the users of that domain.
  /// - "allAuthenticatedUsers": A special identifier that represents all service
  /// accounts and all users on the internet who have authenticated with a Google
  /// Account. This identifier includes accounts that aren't connected to a
  /// Google Workspace or Cloud Identity domain, such as personal Gmail accounts.
  /// Users who aren't authenticated, such as anonymous visitors, aren't
  /// included.
  /// - "allUsers":A special identifier that represents anyone who is on
  /// the internet, including authenticated and unauthenticated users. Because
  /// BigQuery requires authentication before a user can access the service,
  /// allUsers includes only authenticated users.
  final pulumi.Input<List<String>>? grantees;
  /// The ID of the row access policy. The ID must contain only
  /// letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum
  /// length is 256 characters.
  final pulumi.Input<String> policyId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The ID of the table containing this row access policy.
  final pulumi.Input<String> tableId;

  /// Creates a new [RowAccessPolicyArgs].
  /// [datasetId] The ID of the dataset containing this row access policy.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [filterPredicate] A SQL boolean expression that represents the rows defined by this row
  /// [grantees] Input only. The optional list of iamMember users or groups that specifies the initial
  /// [policyId] The ID of the row access policy. The ID must contain only
  /// [project] The ID of the project in which the resource belongs.
  /// [tableId] The ID of the table containing this row access policy.
  const RowAccessPolicyArgs({
    required this.datasetId,
    this.deletionPolicy,
    required this.filterPredicate,
    this.grantees,
    required this.policyId,
    this.project,
    required this.tableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'deletionPolicy': ?deletionPolicy,
      'filterPredicate': filterPredicate,
      'grantees': ?grantees,
      'policyId': policyId,
      'project': ?project,
      'tableId': tableId,
    };
  }

  factory RowAccessPolicyArgs.fromMap(Map<String, dynamic> map) {
    return RowAccessPolicyArgs(
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filterPredicate: pulumi.Input.fromValue(map['filterPredicate'] as String),
      grantees: (() { final guardedValue = map['grantees']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      policyId: pulumi.Input.fromValue(map['policyId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tableId: pulumi.Input.fromValue(map['tableId'] as String),
    );
  }
}
