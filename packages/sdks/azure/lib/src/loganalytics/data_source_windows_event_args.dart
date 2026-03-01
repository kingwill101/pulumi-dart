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
    required pulumi.Output<String> eventLogName,
    required pulumi.Output<List<String>> eventTypes,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      eventLogName = pulumi.Input.asInput<String>(eventLogName),
      eventTypes = pulumi.Input.asInput<List<String>>(eventTypes),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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
      eventLogName: pulumi.Output.create<String>(map['eventLogName'] as String),
      eventTypes: pulumi.Output.create<List<String>>((map['eventTypes'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

