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
    required pulumi.Output<String> counterName,
    required pulumi.Output<String> instanceName,
    required pulumi.Output<int> intervalSeconds,
    pulumi.Output<String>? name,
    required pulumi.Output<String> objectName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      counterName = pulumi.Input.asInput<String>(counterName),
      instanceName = pulumi.Input.asInput<String>(instanceName),
      intervalSeconds = pulumi.Input.asInput<int>(intervalSeconds),
      name = pulumi.Input.asOptionalInput<String>(name),
      objectName = pulumi.Input.asInput<String>(objectName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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
      counterName: pulumi.Output.create<String>(map['counterName'] as String),
      instanceName: pulumi.Output.create<String>(map['instanceName'] as String),
      intervalSeconds: pulumi.Output.create<int>(map['intervalSeconds'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      objectName: pulumi.Output.create<String>(map['objectName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

