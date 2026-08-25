// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DataTableRow resources.
class DataTableRowState {
  /// DataTableRow create time
  final pulumi.Input<String?>? createTime;
  /// The ID of the parent DataTable.
  final pulumi.Input<String?>? dataTableId;
  /// The ID of the DataTable Row.
  final pulumi.Input<String?>? dataTableRow;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The Chronicle instance ID.
  final pulumi.Input<String?>? instance;
  /// The GCP location of the Chronicle instance.
  final pulumi.Input<String?>? location;
  /// Identifier. The resource name of the data table row.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/dataTables/{data_table_id}/dataTableRows/{data_table_row}
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// User-provided TTL of the data table row.
  final pulumi.Input<String?>? rowTimeToLive;
  /// DataTableRow update time
  final pulumi.Input<String?>? updateTime;
  /// All column values for a single row. The values should be in the same order
  /// as the columns of the data tables.
  final pulumi.Input<List<String>?>? values;

  /// Creates a new [DataTableRowState].
  /// [createTime] DataTableRow create time
  /// [dataTableId] The ID of the parent DataTable.
  /// [dataTableRow] The ID of the DataTable Row.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [instance] The Chronicle instance ID.
  /// [location] The GCP location of the Chronicle instance.
  /// [name] Identifier. The resource name of the data table row.
  /// [project] The ID of the project in which the resource belongs.
  /// [rowTimeToLive] User-provided TTL of the data table row.
  /// [updateTime] DataTableRow update time
  /// [values] All column values for a single row. The values should be in the same order
  const DataTableRowState({
    this.createTime,
    this.dataTableId,
    this.dataTableRow,
    this.deletionPolicy,
    this.instance,
    this.location,
    this.name,
    this.project,
    this.rowTimeToLive,
    this.updateTime,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'dataTableId': ?dataTableId,
      'dataTableRow': ?dataTableRow,
      'deletionPolicy': ?deletionPolicy,
      'instance': ?instance,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'rowTimeToLive': ?rowTimeToLive,
      'updateTime': ?updateTime,
      'values': ?values,
    };
  }

  factory DataTableRowState.fromMap(Map<String, dynamic> map) {
    return DataTableRowState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataTableId: (() { final guardedValue = map['dataTableId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataTableRow: (() { final guardedValue = map['dataTableRow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rowTimeToLive: (() { final guardedValue = map['rowTimeToLive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
