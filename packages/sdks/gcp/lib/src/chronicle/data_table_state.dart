// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_table_column_info.dart';
import 'data_table_scope_info.dart';

/// Input properties used for looking up and filtering DataTable resources.
class DataTableState {
  /// The count of rows in the data table.
  final pulumi.Input<int>? approximateRowCount;
  /// Details of all the columns in the table
  /// Structure is documented below.
  final pulumi.Input<List<DataTableColumnInfo>>? columnInfos;
  /// Table create time
  final pulumi.Input<String>? createTime;
  /// The ID to use for the data table. This is also the display name for
  /// the data table. It must satisfy the following requirements:
  /// - Starts with letter.
  /// - Contains only letters, numbers and underscore.
  /// - Must be unique and has length &lt; 256.
  final pulumi.Input<String>? dataTableId;
  /// Data table unique id
  final pulumi.Input<String>? dataTableUuid;
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
  final pulumi.Input<String>? description;
  /// The unique display name of the data table.
  final pulumi.Input<String>? displayName;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? instance;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// Identifier. The resource name of the data table
  /// Format:
  /// "{project}/locations/{region}/instances/{instance}/dataTables/{data_table}"
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// User-provided TTL of the data table.
  final pulumi.Input<String>? rowTimeToLive;
  /// Last update time of the TTL of the data table.
  final pulumi.Input<String>? rowTimeToLiveUpdateTime;
  /// The count of rules using the data table.
  final pulumi.Input<int>? ruleAssociationsCount;
  /// The resource names for the associated Rules that use this
  /// data table. Format:
  /// projects/{project}/locations/{location}/instances/{instance}/rules/{rule}.
  /// {rule} here refers to the rule id.
  final pulumi.Input<List<String>>? rules;
  /// DataTableScopeInfo specifies the scope info of the data table.
  /// Structure is documented below.
  final pulumi.Input<DataTableScopeInfo>? scopeInfo;
  /// Possible values:
  /// USER
  /// RULE
  /// SEARCH
  final pulumi.Input<String>? updateSource;
  /// Table update time
  final pulumi.Input<String>? updateTime;

  /// Creates a new [DataTableState].
  /// [approximateRowCount] The count of rows in the data table.
  /// [columnInfos] Details of all the columns in the table
  /// [createTime] Table create time
  /// [dataTableId] The ID to use for the data table. This is also the display name for
  /// [dataTableUuid] Data table unique id
  /// [deletionPolicy] The policy governing the deletion of the data table.
  /// [description] A user-provided description of the data table.
  /// [displayName] The unique display name of the data table.
  /// [instance] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Identifier. The resource name of the data table
  /// [project] The ID of the project in which the resource belongs.
  /// [rowTimeToLive] User-provided TTL of the data table.
  /// [rowTimeToLiveUpdateTime] Last update time of the TTL of the data table.
  /// [ruleAssociationsCount] The count of rules using the data table.
  /// [rules] The resource names for the associated Rules that use this
  /// [scopeInfo] DataTableScopeInfo specifies the scope info of the data table.
  /// [updateSource] Possible values:
  /// [updateTime] Table update time
  const DataTableState({
    this.approximateRowCount,
    this.columnInfos,
    this.createTime,
    this.dataTableId,
    this.dataTableUuid,
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.instance,
    this.location,
    this.name,
    this.project,
    this.rowTimeToLive,
    this.rowTimeToLiveUpdateTime,
    this.ruleAssociationsCount,
    this.rules,
    this.scopeInfo,
    this.updateSource,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approximateRowCount': ?approximateRowCount,
      'columnInfos': ?pulumi.Input.mapOptionalInputValue<List<DataTableColumnInfo>, List<Map<String, dynamic>>>(columnInfos, (value) => pulumi.Input.encodeList<DataTableColumnInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': ?createTime,
      'dataTableId': ?dataTableId,
      'dataTableUuid': ?dataTableUuid,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'instance': ?instance,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'rowTimeToLive': ?rowTimeToLive,
      'rowTimeToLiveUpdateTime': ?rowTimeToLiveUpdateTime,
      'ruleAssociationsCount': ?ruleAssociationsCount,
      'rules': ?rules,
      'scopeInfo': ?pulumi.Input.mapOptionalInputValue<DataTableScopeInfo, Map<String, dynamic>>(scopeInfo, (value) => value.toMap()),
      'updateSource': ?updateSource,
      'updateTime': ?updateTime,
    };
  }

  factory DataTableState.fromMap(Map<String, dynamic> map) {
    return DataTableState(
      approximateRowCount: (() { final guardedValue = map['approximateRowCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      columnInfos: (() { final guardedValue = map['columnInfos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataTableColumnInfo>(guardedValue, (value) => DataTableColumnInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataTableId: (() { final guardedValue = map['dataTableId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataTableUuid: (() { final guardedValue = map['dataTableUuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rowTimeToLive: (() { final guardedValue = map['rowTimeToLive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rowTimeToLiveUpdateTime: (() { final guardedValue = map['rowTimeToLiveUpdateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleAssociationsCount: (() { final guardedValue = map['ruleAssociationsCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      scopeInfo: (() { final guardedValue = map['scopeInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataTableScopeInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      updateSource: (() { final guardedValue = map['updateSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
