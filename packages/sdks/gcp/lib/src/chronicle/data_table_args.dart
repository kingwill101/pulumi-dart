// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_table_column_info.dart';
import 'data_table_scope_info.dart';

/// {@template pulumi_chronicle_data_table_data_table_args_doc}
/// The set of arguments for DataTable.
/// {@endtemplate}
/// {@macro pulumi_chronicle_data_table_data_table_args_doc}
class DataTableArgs {
  /// Details of all the columns in the table
  /// Structure is documented below.
  final pulumi.Input<List<DataTableColumnInfo>>? columnInfos;
  /// The ID to use for the data table. This is also the display name for
  /// the data table. It must satisfy the following requirements:
  /// - Starts with letter.
  /// - Contains only letters, numbers and underscore.
  /// - Must be unique and has length &lt; 256.
  final pulumi.Input<String> dataTableId;
  /// The policy governing the deletion of the data table.
  /// If set to `FORCE`, allows the deletion of the data table even if it contains rows.
  /// If set to `DEFAULT`,or if the field is omitted, the data table must be empty before it can be deleted.
  ///
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", the command will behave as if set to "DEFAULT".
  ///
  /// Possible values: DEFAULT, FORCE, PREVENT, ABANDON, DELETE
  final pulumi.Input<String>? deletionPolicy;
  /// A user-provided description of the data table.
  final pulumi.Input<String> description;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> instance;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// User-provided TTL of the data table.
  final pulumi.Input<String>? rowTimeToLive;
  /// DataTableScopeInfo specifies the scope info of the data table.
  /// Structure is documented below.
  final pulumi.Input<DataTableScopeInfo>? scopeInfo;

  /// Creates a new [DataTableArgs].
  /// [columnInfos] Details of all the columns in the table
  /// [dataTableId] The ID to use for the data table. This is also the display name for
  /// [deletionPolicy] The policy governing the deletion of the data table.
  /// [description] A user-provided description of the data table.
  /// [instance] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  /// [rowTimeToLive] User-provided TTL of the data table.
  /// [scopeInfo] DataTableScopeInfo specifies the scope info of the data table.
  const DataTableArgs({
    this.columnInfos,
    required this.dataTableId,
    this.deletionPolicy,
    required this.description,
    required this.instance,
    required this.location,
    this.project,
    this.rowTimeToLive,
    this.scopeInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnInfos': ?pulumi.Input.mapOptionalInputValue<List<DataTableColumnInfo>, List<Map<String, dynamic>>>(columnInfos, (value) => pulumi.Input.encodeList<DataTableColumnInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataTableId': dataTableId,
      'deletionPolicy': ?deletionPolicy,
      'description': description,
      'instance': instance,
      'location': location,
      'project': ?project,
      'rowTimeToLive': ?rowTimeToLive,
      'scopeInfo': ?pulumi.Input.mapOptionalInputValue<DataTableScopeInfo, Map<String, dynamic>>(scopeInfo, (value) => value.toMap()),
    };
  }

  factory DataTableArgs.fromMap(Map<String, dynamic> map) {
    return DataTableArgs(
      columnInfos: (() { final guardedValue = map['columnInfos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataTableColumnInfo>(guardedValue, (value) => DataTableColumnInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dataTableId: pulumi.Input.fromValue(map['dataTableId'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: pulumi.Input.fromValue(map['description'] as String),
      instance: pulumi.Input.fromValue(map['instance'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rowTimeToLive: (() { final guardedValue = map['rowTimeToLive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopeInfo: (() { final guardedValue = map['scopeInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataTableScopeInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
