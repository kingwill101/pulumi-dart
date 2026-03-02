// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_loganalytics_data_source_windows_performance_counter_data_source_windows_performance_counter_args_doc}
/// The set of arguments for DataSourceWindowsPerformanceCounter.
/// {@endtemplate}
/// {@macro pulumi_loganalytics_data_source_windows_performance_counter_data_source_windows_performance_counter_args_doc}
class DataSourceWindowsPerformanceCounterArgs {
  /// The friendly name of the performance counter.
  final pulumi.Input<String> counterName;
  /// The name of the virtual machine instance to which the Windows Performance Counter DataSource be applied. Specify a `*` will apply to all instances.
  final pulumi.Input<String> instanceName;
  /// The time of sample interval in seconds. Supports values between 10 and 2147483647.
  final pulumi.Input<int> intervalSeconds;
  /// The Name which should be used for this Log Analytics Windows Performance Counter DataSource. Changing this forces a new Log Analytics Windows Performance Counter DataSource to be created.
  final pulumi.Input<String>? name;
  /// The object name of the Log Analytics Windows Performance Counter DataSource.
  final pulumi.Input<String> objectName;
  /// The name of the Resource Group where the Log Analytics Windows Performance Counter DataSource should exist. Changing this forces a new Log Analytics Windows Performance Counter DataSource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Log Analytics Workspace where the Log Analytics Windows Performance Counter DataSource should exist. Changing this forces a new Log Analytics Windows Performance Counter DataSource to be created.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [DataSourceWindowsPerformanceCounterArgs].
  /// [counterName] The friendly name of the performance counter.
  /// [instanceName] The name of the virtual machine instance to which the Windows Performance Counter DataSource be applied. Specify a `*` will apply to all instances.
  /// [intervalSeconds] The time of sample interval in seconds. Supports values between 10 and 2147483647.
  /// [name] The Name which should be used for this Log Analytics Windows Performance Counter DataSource. Changing this forces a new Log Analytics Windows Performance Counter DataSource to be created.
  /// [objectName] The object name of the Log Analytics Windows Performance Counter DataSource.
  /// [resourceGroupName] The name of the Resource Group where the Log Analytics Windows Performance Counter DataSource should exist. Changing this forces a new Log Analytics Windows Performance Counter DataSource to be created.
  /// [workspaceName] The name of the Log Analytics Workspace where the Log Analytics Windows Performance Counter DataSource should exist. Changing this forces a new Log Analytics Windows Performance Counter DataSource to be created.
  DataSourceWindowsPerformanceCounterArgs({
    required this.counterName,
    required this.instanceName,
    required this.intervalSeconds,
    this.name,
    required this.objectName,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'counterName': counterName,
      'instanceName': instanceName,
      'intervalSeconds': intervalSeconds,
      'name': ?name,
      'objectName': objectName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory DataSourceWindowsPerformanceCounterArgs.fromMap(Map<String, dynamic> map) {
    return DataSourceWindowsPerformanceCounterArgs(
      counterName: (map['counterName'] as String).input(),
      instanceName: (map['instanceName'] as String).input(),
      intervalSeconds: (map['intervalSeconds'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      objectName: (map['objectName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

