// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_table_microsoft_column.dart';
import 'workspace_table_microsoft_standard_column.dart';

/// Input properties used for looking up and filtering WorkspaceTableMicrosoft resources.
class WorkspaceTableMicrosoftState {
  /// One or more `column` blocks as defined below.
  final pulumi.Input<List<WorkspaceTableMicrosoftColumn>?>? columns;
  /// A description of the table.
  final pulumi.Input<String?>? description;
  /// The display name of the table.
  final pulumi.Input<String?>? displayName;
  /// Specifies a list of table labels.
  final pulumi.Input<List<String>?>? labels;
  /// The name which should be used for this Log Analytics Workspace Table Microsoft. Possible values are `Alert`, `AppCenterError`, `ComputerGroup`, `InsightsMetrics`, `Operation` and `Usage`. Changing this forces a new Log Analytics Workspace Table Microsoft to be created.
  final pulumi.Input<String?>? name;
  /// The table retention in days, between `4` and `730`.
  ///
  /// &gt; **Note:** `retentionInDays` must be less than or equal to `totalRetentionInDays`.
  final pulumi.Input<int?>? retentionInDays;
  /// The list of solutions associated with this table.
  final pulumi.Input<List<String>?>? solutions;
  /// A `standardColumn` block as defined below.
  final pulumi.Input<List<WorkspaceTableMicrosoftStandardColumn>?>? standardColumns;
  /// The table total retention in days, between `4` and `4383`.
  final pulumi.Input<int?>? totalRetentionInDays;
  /// The ID of the Log Analytics Workspace. Changing this forces a new Log Analytics Workspace Table Microsoft to be created.
  final pulumi.Input<String?>? workspaceId;

  /// Creates a new [WorkspaceTableMicrosoftState].
  /// [columns] One or more `column` blocks as defined below.
  /// [description] A description of the table.
  /// [displayName] The display name of the table.
  /// [labels] Specifies a list of table labels.
  /// [name] The name which should be used for this Log Analytics Workspace Table Microsoft. Possible values are `Alert`, `AppCenterError`, `ComputerGroup`, `InsightsMetrics`, `Operation` and `Usage`. Changing this forces a new Log Analytics Workspace Table Microsoft to be created.
  /// [retentionInDays] The table retention in days, between `4` and `730`.
  /// [solutions] The list of solutions associated with this table.
  /// [standardColumns] A `standardColumn` block as defined below.
  /// [totalRetentionInDays] The table total retention in days, between `4` and `4383`.
  /// [workspaceId] The ID of the Log Analytics Workspace. Changing this forces a new Log Analytics Workspace Table Microsoft to be created.
  const WorkspaceTableMicrosoftState({
    this.columns,
    this.description,
    this.displayName,
    this.labels,
    this.name,
    this.retentionInDays,
    this.solutions,
    this.standardColumns,
    this.totalRetentionInDays,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': ?pulumi.Input.mapOptionalInputValue<List<WorkspaceTableMicrosoftColumn>, List<Map<String, dynamic>>>(columns, (value) => pulumi.Input.encodeList<WorkspaceTableMicrosoftColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'displayName': ?displayName,
      'labels': ?labels,
      'name': ?name,
      'retentionInDays': ?retentionInDays,
      'solutions': ?solutions,
      'standardColumns': ?pulumi.Input.mapOptionalInputValue<List<WorkspaceTableMicrosoftStandardColumn>, List<Map<String, dynamic>>>(standardColumns, (value) => pulumi.Input.encodeList<WorkspaceTableMicrosoftStandardColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'totalRetentionInDays': ?totalRetentionInDays,
      'workspaceId': ?workspaceId,
    };
  }

  factory WorkspaceTableMicrosoftState.fromMap(Map<String, dynamic> map) {
    return WorkspaceTableMicrosoftState(
      columns: (() { final guardedValue = map['columns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkspaceTableMicrosoftColumn>(guardedValue, (value) => WorkspaceTableMicrosoftColumn.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retentionInDays: (() { final guardedValue = map['retentionInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      solutions: (() { final guardedValue = map['solutions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      standardColumns: (() { final guardedValue = map['standardColumns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkspaceTableMicrosoftStandardColumn>(guardedValue, (value) => WorkspaceTableMicrosoftStandardColumn.fromMap((value as Map).cast<String, dynamic>()))); })(),
      totalRetentionInDays: (() { final guardedValue = map['totalRetentionInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      workspaceId: (() { final guardedValue = map['workspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
