// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableReferenceResponse {
  /// [Required] The ID of the dataset containing this table.
  final pulumi.Input<String> datasetId;
  /// [Required] The ID of the project containing this table.
  final pulumi.Input<String> project;
  /// [Required] The ID of the table. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 1,024 characters.
  final pulumi.Input<String> tableId;

  /// Creates a new [TableReferenceResponse].
  /// [datasetId] [Required] The ID of the dataset containing this table.
  /// [project] [Required] The ID of the project containing this table.
  /// [tableId] [Required] The ID of the table. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 1,024 characters.
  TableReferenceResponse({
    required this.datasetId,
    required this.project,
    required this.tableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'project': project,
      'tableId': tableId,
    };
  }

  factory TableReferenceResponse.fromMap(Map<String, dynamic> map) {
    return TableReferenceResponse(
      datasetId: (map['datasetId'] as String).input(),
      project: (map['project'] as String).input(),
      tableId: (map['tableId'] as String).input(),
    );
  }
}

