// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_loganalytics_data_source_windows_event_data_source_windows_event_args_doc}
/// The set of arguments for DataSourceWindowsEvent.
/// {@endtemplate}
/// {@macro pulumi_loganalytics_data_source_windows_event_data_source_windows_event_args_doc}
class DataSourceWindowsEventArgs {
  /// Specifies the name of the Windows Event Log to collect events from.
  final pulumi.Input<String> eventLogName;

  /// Specifies an array of event types applied to the specified event log. Possible values include `Error`, `Warning` and `Information`.
  final pulumi.Input<List<String>> eventTypes;

  /// The name which should be used for this Log Analytics Windows Event DataSource. Changing this forces a new Log Analytics Windows Event DataSource to be created.
  final pulumi.Input<String>? name;

  /// The name of the Resource Group where the Log Analytics Windows Event DataSource should exist. Changing this forces a new Log Analytics Windows Event DataSource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the Log Analytics Workspace where the Log Analytics Windows Event DataSource should exist. Changing this forces a new Log Analytics Windows Event DataSource to be created.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [DataSourceWindowsEventArgs].
  /// [eventLogName] Specifies the name of the Windows Event Log to collect events from.
  /// [eventTypes] Specifies an array of event types applied to the specified event log. Possible values include `Error`, `Warning` and `Information`.
  /// [name] The name which should be used for this Log Analytics Windows Event DataSource. Changing this forces a new Log Analytics Windows Event DataSource to be created.
  /// [resourceGroupName] The name of the Resource Group where the Log Analytics Windows Event DataSource should exist. Changing this forces a new Log Analytics Windows Event DataSource to be created.
  /// [workspaceName] The name of the Log Analytics Workspace where the Log Analytics Windows Event DataSource should exist. Changing this forces a new Log Analytics Windows Event DataSource to be created.
  DataSourceWindowsEventArgs({
    required this.eventLogName,
    required this.eventTypes,
    this.name,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventLogName': eventLogName,
      'eventTypes': eventTypes,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory DataSourceWindowsEventArgs.fromMap(Map<String, dynamic> map) {
    return DataSourceWindowsEventArgs(
      eventLogName: pulumi.Input.fromValue(map['eventLogName'] as String),
      eventTypes: pulumi.Input.fromValue(
        (map['eventTypes'] as List).cast<String>(),
      ),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
