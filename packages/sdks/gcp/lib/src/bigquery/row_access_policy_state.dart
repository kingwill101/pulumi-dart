// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RowAccessPolicy resources.
class RowAccessPolicyState {
  /// The time when this row access policy was created, in milliseconds since
  /// the epoch.
  final pulumi.Input<String?>? creationTime;
  /// The ID of the dataset containing this row access policy.
  final pulumi.Input<String?>? datasetId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A SQL boolean expression that represents the rows defined by this row
  /// access policy, similar to the boolean expression in a WHERE clause of a
  /// SELECT query on a table.
  /// References to other tables, routines, and temporary functions are not
  /// supported.
  /// Examples: region="EU"
  /// dateField = CAST('2019-9-27' as DATE)
  /// nullableField is not NULL
  /// numericField BETWEEN 1.0 AND 5.0
  final pulumi.Input<String?>? filterPredicate;
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
  final pulumi.Input<List<String>?>? grantees;
  /// The time when this row access policy was last modified, in milliseconds
  /// since the epoch.
  final pulumi.Input<String?>? lastModifiedTime;
  /// The ID of the row access policy. The ID must contain only
  /// letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum
  /// length is 256 characters.
  final pulumi.Input<String?>? policyId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The ID of the table containing this row access policy.
  final pulumi.Input<String?>? tableId;

  /// Creates a new [RowAccessPolicyState].
  /// [creationTime] The time when this row access policy was created, in milliseconds since
  /// [datasetId] The ID of the dataset containing this row access policy.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [filterPredicate] A SQL boolean expression that represents the rows defined by this row
  /// [grantees] Input only. The optional list of iamMember users or groups that specifies the initial
  /// [lastModifiedTime] The time when this row access policy was last modified, in milliseconds
  /// [policyId] The ID of the row access policy. The ID must contain only
  /// [project] The ID of the project in which the resource belongs.
  /// [tableId] The ID of the table containing this row access policy.
  const RowAccessPolicyState({
    this.creationTime,
    this.datasetId,
    this.deletionPolicy,
    this.filterPredicate,
    this.grantees,
    this.lastModifiedTime,
    this.policyId,
    this.project,
    this.tableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTime': ?creationTime,
      'datasetId': ?datasetId,
      'deletionPolicy': ?deletionPolicy,
      'filterPredicate': ?filterPredicate,
      'grantees': ?grantees,
      'lastModifiedTime': ?lastModifiedTime,
      'policyId': ?policyId,
      'project': ?project,
      'tableId': ?tableId,
    };
  }

  factory RowAccessPolicyState.fromMap(Map<String, dynamic> map) {
    return RowAccessPolicyState(
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      datasetId: (() { final guardedValue = map['datasetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filterPredicate: (() { final guardedValue = map['filterPredicate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      grantees: (() { final guardedValue = map['grantees']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyId: (() { final guardedValue = map['policyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tableId: (() { final guardedValue = map['tableId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
