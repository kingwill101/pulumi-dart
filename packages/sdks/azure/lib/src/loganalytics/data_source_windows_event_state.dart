// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DataSourceWindowsEvent resources.
class DataSourceWindowsEventState {
  /// Specifies the name of the Windows Event Log to collect events from.
  final pulumi.Input<String>? eventLogName;
  /// Specifies an array of event types applied to the specified event log. Possible values include `Error`, `Warning` and `Information`.
  final pulumi.Input<List<String>>? eventTypes;
  /// The name which should be used for this Log Analytics Windows Event DataSource. Changing this forces a new Log Analytics Windows Event DataSource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Log Analytics Windows Event DataSource should exist. Changing this forces a new Log Analytics Windows Event DataSource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The name of the Log Analytics Workspace where the Log Analytics Windows Event DataSource should exist. Changing this forces a new Log Analytics Windows Event DataSource to be created.
  final pulumi.Input<String>? workspaceName;

  /// Creates a new [DataSourceWindowsEventState].
  /// [eventLogName] Specifies the name of the Windows Event Log to collect events from.
  /// [eventTypes] Specifies an array of event types applied to the specified event log. Possible values include `Error`, `Warning` and `Information`.
  /// [name] The name which should be used for this Log Analytics Windows Event DataSource. Changing this forces a new Log Analytics Windows Event DataSource to be created.
  /// [resourceGroupName] The name of the Resource Group where the Log Analytics Windows Event DataSource should exist. Changing this forces a new Log Analytics Windows Event DataSource to be created.
  /// [workspaceName] The name of the Log Analytics Workspace where the Log Analytics Windows Event DataSource should exist. Changing this forces a new Log Analytics Windows Event DataSource to be created.
  DataSourceWindowsEventState({
    pulumi.Output<String>? eventLogName,
    pulumi.Output<List<String>>? eventTypes,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? workspaceName,
  }) :
      eventLogName = pulumi.Input.asOptionalInput<String>(eventLogName),
      eventTypes = pulumi.Input.asOptionalInput<List<String>>(eventTypes),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asOptionalInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventLogName': ?eventLogName,
      'eventTypes': ?eventTypes,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'workspaceName': ?workspaceName,
    };
  }

  factory DataSourceWindowsEventState.fromMap(Map<String, dynamic> map) {
    return DataSourceWindowsEventState(
      eventLogName: map['eventLogName'] == null ? null : pulumi.Output.create<String>(map['eventLogName'] as String),
      eventTypes: map['eventTypes'] == null ? null : pulumi.Output.create<List<String>>((map['eventTypes'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: map['workspaceName'] == null ? null : pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

