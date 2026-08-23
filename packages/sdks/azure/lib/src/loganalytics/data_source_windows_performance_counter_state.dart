// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DataSourceWindowsPerformanceCounter resources.
class DataSourceWindowsPerformanceCounterState {
  /// The friendly name of the performance counter.
  final pulumi.Input<String>? counterName;
  /// The name of the virtual machine instance to which the Windows Performance Counter DataSource be applied. Specify a `*` will apply to all instances.
  final pulumi.Input<String>? instanceName;
  /// The time of sample interval in seconds. Supports values between 10 and 2147483647.
  final pulumi.Input<int>? intervalSeconds;
  /// The Name which should be used for this Log Analytics Windows Performance Counter DataSource. Changing this forces a new Log Analytics Windows Performance Counter DataSource to be created.
  final pulumi.Input<String>? name;
  /// The object name of the Log Analytics Windows Performance Counter DataSource.
  final pulumi.Input<String>? objectName;
  /// The name of the Resource Group where the Log Analytics Windows Performance Counter DataSource should exist. Changing this forces a new Log Analytics Windows Performance Counter DataSource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The name of the Log Analytics Workspace where the Log Analytics Windows Performance Counter DataSource should exist. Changing this forces a new Log Analytics Windows Performance Counter DataSource to be created.
  final pulumi.Input<String>? workspaceName;

  /// Creates a new [DataSourceWindowsPerformanceCounterState].
  /// [counterName] The friendly name of the performance counter.
  /// [instanceName] The name of the virtual machine instance to which the Windows Performance Counter DataSource be applied. Specify a `*` will apply to all instances.
  /// [intervalSeconds] The time of sample interval in seconds. Supports values between 10 and 2147483647.
  /// [name] The Name which should be used for this Log Analytics Windows Performance Counter DataSource. Changing this forces a new Log Analytics Windows Performance Counter DataSource to be created.
  /// [objectName] The object name of the Log Analytics Windows Performance Counter DataSource.
  /// [resourceGroupName] The name of the Resource Group where the Log Analytics Windows Performance Counter DataSource should exist. Changing this forces a new Log Analytics Windows Performance Counter DataSource to be created.
  /// [workspaceName] The name of the Log Analytics Workspace where the Log Analytics Windows Performance Counter DataSource should exist. Changing this forces a new Log Analytics Windows Performance Counter DataSource to be created.
  const DataSourceWindowsPerformanceCounterState({
    this.counterName,
    this.instanceName,
    this.intervalSeconds,
    this.name,
    this.objectName,
    this.resourceGroupName,
    this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'counterName': ?counterName,
      'instanceName': ?instanceName,
      'intervalSeconds': ?intervalSeconds,
      'name': ?name,
      'objectName': ?objectName,
      'resourceGroupName': ?resourceGroupName,
      'workspaceName': ?workspaceName,
    };
  }

  factory DataSourceWindowsPerformanceCounterState.fromMap(Map<String, dynamic> map) {
    return DataSourceWindowsPerformanceCounterState(
      counterName: (() { final guardedValue = map['counterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceName: (() { final guardedValue = map['instanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      intervalSeconds: (() { final guardedValue = map['intervalSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectName: (() { final guardedValue = map['objectName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceName: (() { final guardedValue = map['workspaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
