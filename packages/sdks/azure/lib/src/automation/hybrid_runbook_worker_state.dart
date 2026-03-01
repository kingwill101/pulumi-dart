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
    pulumi.Output<String>? automationAccountName,
    pulumi.Output<String>? ip,
    pulumi.Output<String>? lastSeenDateTime,
    pulumi.Output<String>? registrationDateTime,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? vmResourceId,
    pulumi.Output<String>? workerGroupName,
    pulumi.Output<String>? workerId,
    pulumi.Output<String>? workerName,
    pulumi.Output<String>? workerType,
  }) :
      automationAccountName = pulumi.Input.asOptionalInput<String>(automationAccountName),
      ip = pulumi.Input.asOptionalInput<String>(ip),
      lastSeenDateTime = pulumi.Input.asOptionalInput<String>(lastSeenDateTime),
      registrationDateTime = pulumi.Input.asOptionalInput<String>(registrationDateTime),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      vmResourceId = pulumi.Input.asOptionalInput<String>(vmResourceId),
      workerGroupName = pulumi.Input.asOptionalInput<String>(workerGroupName),
      workerId = pulumi.Input.asOptionalInput<String>(workerId),
      workerName = pulumi.Input.asOptionalInput<String>(workerName),
      workerType = pulumi.Input.asOptionalInput<String>(workerType);

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
      automationAccountName: map['automationAccountName'] == null ? null : pulumi.Output.create<String>(map['automationAccountName'] as String),
      ip: map['ip'] == null ? null : pulumi.Output.create<String>(map['ip'] as String),
      lastSeenDateTime: map['lastSeenDateTime'] == null ? null : pulumi.Output.create<String>(map['lastSeenDateTime'] as String),
      registrationDateTime: map['registrationDateTime'] == null ? null : pulumi.Output.create<String>(map['registrationDateTime'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      vmResourceId: map['vmResourceId'] == null ? null : pulumi.Output.create<String>(map['vmResourceId'] as String),
      workerGroupName: map['workerGroupName'] == null ? null : pulumi.Output.create<String>(map['workerGroupName'] as String),
      workerId: map['workerId'] == null ? null : pulumi.Output.create<String>(map['workerId'] as String),
      workerName: map['workerName'] == null ? null : pulumi.Output.create<String>(map['workerName'] as String),
      workerType: map['workerType'] == null ? null : pulumi.Output.create<String>(map['workerType'] as String),
    );
  }
}

