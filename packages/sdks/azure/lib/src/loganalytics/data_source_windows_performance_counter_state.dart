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
  DataSourceWindowsPerformanceCounterState({
    pulumi.Output<String>? counterName,
    pulumi.Output<String>? instanceName,
    pulumi.Output<int>? intervalSeconds,
    pulumi.Output<String>? name,
    pulumi.Output<String>? objectName,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? workspaceName,
  }) :
      counterName = pulumi.Input.asOptionalInput<String>(counterName),
      instanceName = pulumi.Input.asOptionalInput<String>(instanceName),
      intervalSeconds = pulumi.Input.asOptionalInput<int>(intervalSeconds),
      name = pulumi.Input.asOptionalInput<String>(name),
      objectName = pulumi.Input.asOptionalInput<String>(objectName),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asOptionalInput<String>(workspaceName);

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
      counterName: map['counterName'] == null ? null : pulumi.Output.create<String>(map['counterName'] as String),
      instanceName: map['instanceName'] == null ? null : pulumi.Output.create<String>(map['instanceName'] as String),
      intervalSeconds: map['intervalSeconds'] == null ? null : pulumi.Output.create<int>(map['intervalSeconds'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      objectName: map['objectName'] == null ? null : pulumi.Output.create<String>(map['objectName'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: map['workspaceName'] == null ? null : pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

