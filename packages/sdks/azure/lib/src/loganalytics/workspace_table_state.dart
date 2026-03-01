// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WorkspaceTable resources.
class WorkspaceTableState {
  /// Specifies the name of a table in a Log Analytics Workspace.
  final pulumi.Input<String>? name;
  /// Specify the system how to handle and charge the logs ingested to the table. Possible values are `Analytics` and `Basic`. Defaults to `Analytics`.
  ///
  /// > **Note:** The `name` of tables currently supported by the `Basic` plan can be found [here](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/basic-logs-azure-tables).
  final pulumi.Input<String>? plan;
  /// The table's retention in days. Possible values are either `8` (Basic Tier only) or range between `4` and `730`.
  final pulumi.Input<int>? retentionInDays;
  /// The table's total retention in days. Possible values range between `4` and `730`; or `1095`, `1460`, `1826`, `2191`, `2556`, `2922`, `3288`, `3653`, `4018`, or `4383`.
  ///
  /// > **Note:** `retention_in_days` and `total_retention_in_days` will revert back to the value of azure.operationalinsights.AnalyticsWorkspace retention_in_days when a azure.loganalytics.WorkspaceTable is deleted.
  ///
  /// > **Note:** The `retention_in_days` cannot be specified when `plan` is `Basic` because the retention is fixed at eight days.
  final pulumi.Input<int>? totalRetentionInDays;
  /// The object ID of the Log Analytics Workspace that contains the table.
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [WorkspaceTableState].
  /// [name] Specifies the name of a table in a Log Analytics Workspace.
  /// [plan] Specify the system how to handle and charge the logs ingested to the table. Possible values are `Analytics` and `Basic`. Defaults to `Analytics`.
  /// [retentionInDays] The table's retention in days. Possible values are either `8` (Basic Tier only) or range between `4` and `730`.
  /// [totalRetentionInDays] The table's total retention in days. Possible values range between `4` and `730`; or `1095`, `1460`, `1826`, `2191`, `2556`, `2922`, `3288`, `3653`, `4018`, or `4383`.
  /// [workspaceId] The object ID of the Log Analytics Workspace that contains the table.
  WorkspaceTableState({
    pulumi.Output<String>? name,
    pulumi.Output<String>? plan,
    pulumi.Output<int>? retentionInDays,
    pulumi.Output<int>? totalRetentionInDays,
    pulumi.Output<String>? workspaceId,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      plan = pulumi.Input.asOptionalInput<String>(plan),
      retentionInDays = pulumi.Input.asOptionalInput<int>(retentionInDays),
      totalRetentionInDays = pulumi.Input.asOptionalInput<int>(totalRetentionInDays),
      workspaceId = pulumi.Input.asOptionalInput<String>(workspaceId);

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
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      plan: map['plan'] == null ? null : pulumi.Output.create<String>(map['plan'] as String),
      retentionInDays: map['retentionInDays'] == null ? null : pulumi.Output.create<int>(map['retentionInDays'] as int),
      totalRetentionInDays: map['totalRetentionInDays'] == null ? null : pulumi.Output.create<int>(map['totalRetentionInDays'] as int),
      workspaceId: map['workspaceId'] == null ? null : pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}

