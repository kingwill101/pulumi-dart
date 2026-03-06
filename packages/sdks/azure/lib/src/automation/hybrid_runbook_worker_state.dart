// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HybridRunbookWorker resources.
class HybridRunbookWorkerState {
  /// The name of the automation account in which the Hybrid Worker is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? automationAccountName;
  /// The IP address of assigned machine.
  final pulumi.Input<String>? ip;
  /// Last Heartbeat from the Worker.
  final pulumi.Input<String>? lastSeenDateTime;
  /// The registration time of the worker machine.
  final pulumi.Input<String>? registrationDateTime;
  /// The name of the Resource Group where the Automation should exist. Changing this forces a new Automation to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The ID of the virtual machine used for this HybridWorker. Changing this forces a new Automation to be created.
  final pulumi.Input<String>? vmResourceId;
  /// The name of the HybridWorker Group. Changing this forces a new Automation to be created.
  final pulumi.Input<String>? workerGroupName;
  /// Specify the ID of this HybridWorker in UUID notation. Changing this forces a new Automation to be created.
  final pulumi.Input<String>? workerId;
  /// The name of HybridWorker.
  final pulumi.Input<String>? workerName;
  /// The type of the HybridWorker, the possible values are `HybridV1` and `HybridV2`.
  final pulumi.Input<String>? workerType;

  /// Creates a new [HybridRunbookWorkerState].
  /// [automationAccountName] The name of the automation account in which the Hybrid Worker is created. Changing this forces a new resource to be created.
  /// [ip] The IP address of assigned machine.
  /// [lastSeenDateTime] Last Heartbeat from the Worker.
  /// [registrationDateTime] The registration time of the worker machine.
  /// [resourceGroupName] The name of the Resource Group where the Automation should exist. Changing this forces a new Automation to be created.
  /// [vmResourceId] The ID of the virtual machine used for this HybridWorker. Changing this forces a new Automation to be created.
  /// [workerGroupName] The name of the HybridWorker Group. Changing this forces a new Automation to be created.
  /// [workerId] Specify the ID of this HybridWorker in UUID notation. Changing this forces a new Automation to be created.
  /// [workerName] The name of HybridWorker.
  /// [workerType] The type of the HybridWorker, the possible values are `HybridV1` and `HybridV2`.
  const HybridRunbookWorkerState({
    this.automationAccountName,
    this.ip,
    this.lastSeenDateTime,
    this.registrationDateTime,
    this.resourceGroupName,
    this.vmResourceId,
    this.workerGroupName,
    this.workerId,
    this.workerName,
    this.workerType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': ?automationAccountName,
      'ip': ?ip,
      'lastSeenDateTime': ?lastSeenDateTime,
      'registrationDateTime': ?registrationDateTime,
      'resourceGroupName': ?resourceGroupName,
      'vmResourceId': ?vmResourceId,
      'workerGroupName': ?workerGroupName,
      'workerId': ?workerId,
      'workerName': ?workerName,
      'workerType': ?workerType,
    };
  }

  factory HybridRunbookWorkerState.fromMap(Map<String, dynamic> map) {
    return HybridRunbookWorkerState(
      automationAccountName: (() { final guardedValue = map['automationAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastSeenDateTime: (() { final guardedValue = map['lastSeenDateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registrationDateTime: (() { final guardedValue = map['registrationDateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmResourceId: (() { final guardedValue = map['vmResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workerGroupName: (() { final guardedValue = map['workerGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workerId: (() { final guardedValue = map['workerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workerName: (() { final guardedValue = map['workerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workerType: (() { final guardedValue = map['workerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

