// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_table_custom_log_column.dart';
import 'workspace_table_custom_log_standard_column.dart';

/// Input properties used for looking up and filtering WorkspaceTableCustomLog resources.
class WorkspaceTableCustomLogState {
  /// One or more `column` blocks as defined below.
  final pulumi.Input<List<WorkspaceTableCustomLogColumn>?>? columns;
  /// The description of the table.
  final pulumi.Input<String?>? description;
  /// The display name of the table.
  final pulumi.Input<String?>? displayName;
  /// Specifies the name of the Log Analytics Workspace Table Custom Log. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** `name` must end with `_CL`.
  final pulumi.Input<String?>? name;
  /// Specify the system how to handle and charge the logs ingested to the table. Possible values are `Analytics` and `Basic`. Defaults to `Analytics`.
  ///
  /// &gt; **Note:** Changing the table's `plan` is limited to once a week.
  final pulumi.Input<String?>? plan;
  /// The table's retention in days. Possible values range between `4` and `730`.
  ///
  /// &gt; **Note:** `retentionInDays` cannot be set when `plan` is set to `Basic` because the retention is fixed.
  final pulumi.Input<int?>? retentionInDays;
  /// A list of solutions associated with the table.
  final pulumi.Input<List<String>?>? solutions;
  /// One or more `standardColumn` blocks as defined below.
  final pulumi.Input<List<WorkspaceTableCustomLogStandardColumn>?>? standardColumns;
  /// The table's total retention in days. Possible values range between `4` and `730`; or `1095`, `1460`, `1826`, `2191`, `2556`, `2922`, `3288`, `3653`, `4018`, or `4383`.
  final pulumi.Input<int?>? totalRetentionInDays;
  /// The object ID of the Log Analytics Workspace that contains the table. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? workspaceId;

  /// Creates a new [WorkspaceTableCustomLogState].
  /// [columns] One or more `column` blocks as defined below.
  /// [description] The description of the table.
  /// [displayName] The display name of the table.
  /// [name] Specifies the name of the Log Analytics Workspace Table Custom Log. Changing this forces a new resource to be created.
  /// [plan] Specify the system how to handle and charge the logs ingested to the table. Possible values are `Analytics` and `Basic`. Defaults to `Analytics`.
  /// [retentionInDays] The table's retention in days. Possible values range between `4` and `730`.
  /// [solutions] A list of solutions associated with the table.
  /// [standardColumns] One or more `standardColumn` blocks as defined below.
  /// [totalRetentionInDays] The table's total retention in days. Possible values range between `4` and `730`; or `1095`, `1460`, `1826`, `2191`, `2556`, `2922`, `3288`, `3653`, `4018`, or `4383`.
  /// [workspaceId] The object ID of the Log Analytics Workspace that contains the table. Changing this forces a new resource to be created.
  const WorkspaceTableCustomLogState({
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
      columns: (() { final guardedValue = map['columns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkspaceTableCustomLogColumn>(guardedValue, (value) => WorkspaceTableCustomLogColumn.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      plan: (() { final guardedValue = map['plan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retentionInDays: (() { final guardedValue = map['retentionInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      solutions: (() { final guardedValue = map['solutions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      standardColumns: (() { final guardedValue = map['standardColumns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkspaceTableCustomLogStandardColumn>(guardedValue, (value) => WorkspaceTableCustomLogStandardColumn.fromMap((value as Map).cast<String, dynamic>()))); })(),
      totalRetentionInDays: (() { final guardedValue = map['totalRetentionInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      workspaceId: (() { final guardedValue = map['workspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
