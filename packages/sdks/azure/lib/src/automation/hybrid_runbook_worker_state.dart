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
  HybridRunbookWorkerState({
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
      automationAccountName: map['automationAccountName'] == null ? null : (map['automationAccountName'] as String).input(),
      ip: map['ip'] == null ? null : (map['ip'] as String).input(),
      lastSeenDateTime: map['lastSeenDateTime'] == null ? null : (map['lastSeenDateTime'] as String).input(),
      registrationDateTime: map['registrationDateTime'] == null ? null : (map['registrationDateTime'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      vmResourceId: map['vmResourceId'] == null ? null : (map['vmResourceId'] as String).input(),
      workerGroupName: map['workerGroupName'] == null ? null : (map['workerGroupName'] as String).input(),
      workerId: map['workerId'] == null ? null : (map['workerId'] as String).input(),
      workerName: map['workerName'] == null ? null : (map['workerName'] as String).input(),
      workerType: map['workerType'] == null ? null : (map['workerType'] as String).input(),
    );
  }
}

