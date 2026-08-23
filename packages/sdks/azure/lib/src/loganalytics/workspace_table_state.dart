// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WorkspaceTable resources.
class WorkspaceTableState {
  /// Specifies the name of a table in a Log Analytics Workspace.
  final pulumi.Input<String>? name;
  /// Specify the system how to handle and charge the logs ingested to the table. Possible values are `Analytics` and `Basic`. Defaults to `Analytics`.
  ///
  /// &gt; **Note:** The `name` of tables currently supported by the `Basic` plan can be found [here](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/basic-logs-azure-tables).
  final pulumi.Input<String>? plan;
  /// The table's retention in days. Possible values are between `4` and `730`.
  ///
  /// &gt; **Note:** The `retentionInDays` is fixed to `30` when `plan` is `Basic`. More details could be found [here](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/data-retention-configure?tabs=portal%2Cportal-1#analytics-long-term-and-total-retention).
  final pulumi.Input<int>? retentionInDays;
  /// The table's total retention in days. Possible values range between `4` and `730`; or `1095`, `1460`, `1826`, `2191`, `2556`, `2922`, `3288`, `3653`, `4018`, or `4383`.
  ///
  /// &gt; **Note:** `retentionInDays` and `totalRetentionInDays` will revert back to the value of azure.operationalinsights.AnalyticsWorkspace retention_in_days when a azure.loganalytics.WorkspaceTable is deleted.
  ///
  /// &gt; **Note:** The `retentionInDays` cannot be specified when `plan` is `Basic` because the retention is fixed at eight days.
  final pulumi.Input<int>? totalRetentionInDays;
  /// The object ID of the Log Analytics Workspace that contains the table.
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [WorkspaceTableState].
  /// [name] Specifies the name of a table in a Log Analytics Workspace.
  /// [plan] Specify the system how to handle and charge the logs ingested to the table. Possible values are `Analytics` and `Basic`. Defaults to `Analytics`.
  /// [retentionInDays] The table's retention in days. Possible values are between `4` and `730`.
  /// [totalRetentionInDays] The table's total retention in days. Possible values range between `4` and `730`; or `1095`, `1460`, `1826`, `2191`, `2556`, `2922`, `3288`, `3653`, `4018`, or `4383`.
  /// [workspaceId] The object ID of the Log Analytics Workspace that contains the table.
  const WorkspaceTableState({
    this.name,
    this.plan,
    this.retentionInDays,
    this.totalRetentionInDays,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'plan': ?plan,
      'retentionInDays': ?retentionInDays,
      'totalRetentionInDays': ?totalRetentionInDays,
      'workspaceId': ?workspaceId,
    };
  }

  factory WorkspaceTableState.fromMap(Map<String, dynamic> map) {
    return WorkspaceTableState(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      plan: (() { final guardedValue = map['plan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retentionInDays: (() { final guardedValue = map['retentionInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      totalRetentionInDays: (() { final guardedValue = map['totalRetentionInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      workspaceId: (() { final guardedValue = map['workspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
