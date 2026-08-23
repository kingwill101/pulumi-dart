// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_chronicle_data_table_row_data_table_row_args_doc}
/// The set of arguments for DataTableRow.
/// {@endtemplate}
/// {@macro pulumi_chronicle_data_table_row_data_table_row_args_doc}
class DataTableRowArgs {
  /// The ID of the parent DataTable.
  final pulumi.Input<String> dataTableId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The Chronicle instance ID.
  final pulumi.Input<String> instance;
  /// The GCP location of the Chronicle instance.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// User-provided TTL of the data table row.
  final pulumi.Input<String>? rowTimeToLive;
  /// All column values for a single row. The values should be in the same order
  /// as the columns of the data tables.
  final pulumi.Input<List<String>> values;

  /// Creates a new [DataTableRowArgs].
  /// [dataTableId] The ID of the parent DataTable.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [instance] The Chronicle instance ID.
  /// [location] The GCP location of the Chronicle instance.
  /// [project] The ID of the project in which the resource belongs.
  /// [rowTimeToLive] User-provided TTL of the data table row.
  /// [values] All column values for a single row. The values should be in the same order
  const DataTableRowArgs({
    required this.dataTableId,
    this.deletionPolicy,
    required this.instance,
    required this.location,
    this.project,
    this.rowTimeToLive,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataTableId': dataTableId,
      'deletionPolicy': ?deletionPolicy,
      'instance': instance,
      'location': location,
      'project': ?project,
      'rowTimeToLive': ?rowTimeToLive,
      'values': values,
    };
  }

  factory DataTableRowArgs.fromMap(Map<String, dynamic> map) {
    return DataTableRowArgs(
      dataTableId: pulumi.Input.fromValue(map['dataTableId'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instance: pulumi.Input.fromValue(map['instance'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rowTimeToLive: (() { final guardedValue = map['rowTimeToLive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
