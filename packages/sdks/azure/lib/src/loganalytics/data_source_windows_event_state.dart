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
    this.eventLogName,
    this.eventTypes,
    this.name,
    this.resourceGroupName,
    this.workspaceName,
  });

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
      eventLogName: map['eventLogName'] == null ? null : (map['eventLogName'] as String).input(),
      eventTypes: map['eventTypes'] == null ? null : ((map['eventTypes'] as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      workspaceName: map['workspaceName'] == null ? null : (map['workspaceName'] as String).input(),
    );
  }
}

