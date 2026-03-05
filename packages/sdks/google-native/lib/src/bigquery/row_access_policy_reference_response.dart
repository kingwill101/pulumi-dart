// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RowAccessPolicyReferenceResponse {
  /// The ID of the dataset containing this row access policy.
  final pulumi.Input<String> datasetId;
  /// The ID of the row access policy. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 256 characters.
  final pulumi.Input<String> policyId;
  /// The ID of the project containing this row access policy.
  final pulumi.Input<String> project;
  /// The ID of the table containing this row access policy.
  final pulumi.Input<String> tableId;

  /// Creates a new [RowAccessPolicyReferenceResponse].
  /// [datasetId] The ID of the dataset containing this row access policy.
  /// [policyId] The ID of the row access policy. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 256 characters.
  /// [project] The ID of the project containing this row access policy.
  /// [tableId] The ID of the table containing this row access policy.
  RowAccessPolicyReferenceResponse({
    required this.datasetId,
    required this.policyId,
    required this.project,
    required this.tableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'policyId': policyId,
      'project': project,
      'tableId': tableId,
    };
  }

  factory RowAccessPolicyReferenceResponse.fromMap(Map<String, dynamic> map) {
    return RowAccessPolicyReferenceResponse(
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      policyId: pulumi.Input.fromValue(map['policyId'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
      tableId: pulumi.Input.fromValue(map['tableId'] as String),
    );
  }
}

