// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_table_custom_log_column.dart';
import 'workspace_table_custom_log_standard_column.dart';

/// Input properties used for looking up and filtering WorkspaceTableCustomLog resources.
class WorkspaceTableCustomLogState {
  /// One or more `column` blocks as defined below.
  final pulumi.Input<List<WorkspaceTableCustomLogColumn>>? columns;
  /// The description of the table.
  final pulumi.Input<String>? description;
  /// The display name of the table.
  final pulumi.Input<String>? displayName;
  /// Specifies the name of the Log Analytics Workspace Table Custom Log. Changing this forces a new resource to be created.
  ///
  /// > **Note:** `name` must end with `_CL`.
  final pulumi.Input<String>? name;
  /// Specify the system how to handle and charge the logs ingested to the table. Possible values are `Analytics` and `Basic`. Defaults to `Analytics`.
  ///
  /// > **Note:** Changing the table's `plan` is limited to once a week.
  final pulumi.Input<String>? plan;
  /// The table's retention in days. Possible values range between `4` and `730`.
  ///
  /// > **Note:** `retention_in_days` cannot be set when `plan` is set to `Basic` because the retention is fixed.
  final pulumi.Input<int>? retentionInDays;
  /// A list of solutions associated with the table.
  final pulumi.Input<List<String>>? solutions;
  /// One or more `standard_column` blocks as defined below.
  final pulumi.Input<List<WorkspaceTableCustomLogStandardColumn>>? standardColumns;
  /// The table's total retention in days. Possible values range between `4` and `730`; or `1095`, `1460`, `1826`, `2191`, `2556`, `2922`, `3288`, `3653`, `4018`, or `4383`.
  final pulumi.Input<int>? totalRetentionInDays;
  /// The object ID of the Log Analytics Workspace that contains the table. Changing this forces a new resource to be created.
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [WorkspaceTableCustomLogState].
  /// [columns] One or more `column` blocks as defined below.
  /// [description] The description of the table.
  /// [displayName] The display name of the table.
  /// [name] Specifies the name of the Log Analytics Workspace Table Custom Log. Changing this forces a new resource to be created.
  /// [plan] Specify the system how to handle and charge the logs ingested to the table. Possible values are `Analytics` and `Basic`. Defaults to `Analytics`.
  /// [retentionInDays] The table's retention in days. Possible values range between `4` and `730`.
  /// [solutions] A list of solutions associated with the table.
  /// [standardColumns] One or more `standard_column` blocks as defined below.
  /// [totalRetentionInDays] The table's total retention in days. Possible values range between `4` and `730`; or `1095`, `1460`, `1826`, `2191`, `2556`, `2922`, `3288`, `3653`, `4018`, or `4383`.
  /// [workspaceId] The object ID of the Log Analytics Workspace that contains the table. Changing this forces a new resource to be created.
  WorkspaceTableCustomLogState({
    this.columns,
    this.description,
    this.displayName,
    this.name,
    this.plan,
    this.retentionInDays,
    this.solutions,
    this.standardColumns,
    this.totalRetentionInDays,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': ?pulumi.Input.mapOptionalInputValue<List<WorkspaceTableCustomLogColumn>, List<Map<String, dynamic>>>(columns, (value) => pulumi.Input.encodeList<WorkspaceTableCustomLogColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'displayName': ?displayName,
      'name': ?name,
      'plan': ?plan,
      'retentionInDays': ?retentionInDays,
      'solutions': ?solutions,
      'standardColumns': ?pulumi.Input.mapOptionalInputValue<List<WorkspaceTableCustomLogStandardColumn>, List<Map<String, dynamic>>>(standardColumns, (value) => pulumi.Input.encodeList<WorkspaceTableCustomLogStandardColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'totalRetentionInDays': ?totalRetentionInDays,
      'workspaceId': ?workspaceId,
    };
  }

  factory WorkspaceTableCustomLogState.fromMap(Map<String, dynamic> map) {
    return WorkspaceTableCustomLogState(
      columns: map['columns'] == null ? null : (pulumi.Input.decodeList<WorkspaceTableCustomLogColumn>(map['columns']!, (value) => WorkspaceTableCustomLogColumn.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      plan: map['plan'] == null ? null : (map['plan']! as String).input(),
      retentionInDays: map['retentionInDays'] == null ? null : (map['retentionInDays']! as int).input(),
      solutions: map['solutions'] == null ? null : ((map['solutions']! as List).cast<String>()).input(),
      standardColumns: map['standardColumns'] == null ? null : (pulumi.Input.decodeList<WorkspaceTableCustomLogStandardColumn>(map['standardColumns']!, (value) => WorkspaceTableCustomLogStandardColumn.fromMap((value as Map).cast<String, dynamic>()))).input(),
      totalRetentionInDays: map['totalRetentionInDays'] == null ? null : (map['totalRetentionInDays']! as int).input(),
      workspaceId: map['workspaceId'] == null ? null : (map['workspaceId']! as String).input(),
    );
  }
}

