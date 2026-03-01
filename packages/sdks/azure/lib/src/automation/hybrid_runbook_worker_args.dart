// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_hybrid_runbook_worker_hybrid_runbook_worker_args_doc}
/// The set of arguments for HybridRunbookWorker.
/// {@endtemplate}
/// {@macro pulumi_automation_hybrid_runbook_worker_hybrid_runbook_worker_args_doc}
class HybridRunbookWorkerArgs {
  /// The name of the automation account in which the Hybrid Worker is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> automationAccountName;
  /// The name of the Resource Group where the Automation should exist. Changing this forces a new Automation to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The ID of the virtual machine used for this HybridWorker. Changing this forces a new Automation to be created.
  final pulumi.Input<String> vmResourceId;
  /// The name of the HybridWorker Group. Changing this forces a new Automation to be created.
  final pulumi.Input<String> workerGroupName;
  /// Specify the ID of this HybridWorker in UUID notation. Changing this forces a new Automation to be created.
  final pulumi.Input<String> workerId;

  /// Creates a new [HybridRunbookWorkerArgs].
  /// [automationAccountName] The name of the automation account in which the Hybrid Worker is created. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the Automation should exist. Changing this forces a new Automation to be created.
  /// [vmResourceId] The ID of the virtual machine used for this HybridWorker. Changing this forces a new Automation to be created.
  /// [workerGroupName] The name of the HybridWorker Group. Changing this forces a new Automation to be created.
  /// [workerId] Specify the ID of this HybridWorker in UUID notation. Changing this forces a new Automation to be created.
  HybridRunbookWorkerArgs({
    required pulumi.Output<String> automationAccountName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> vmResourceId,
    required pulumi.Output<String> workerGroupName,
    required pulumi.Output<String> workerId,
  }) :
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      vmResourceId = pulumi.Input.asInput<String>(vmResourceId),
      workerGroupName = pulumi.Input.asInput<String>(workerGroupName),
      workerId = pulumi.Input.asInput<String>(workerId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'resourceGroupName': resourceGroupName,
      'vmResourceId': vmResourceId,
      'workerGroupName': workerGroupName,
      'workerId': workerId,
    };
  }

  factory HybridRunbookWorkerArgs.fromMap(Map<String, dynamic> map) {
    return HybridRunbookWorkerArgs(
      automationAccountName: pulumi.Output.create<String>(map['automationAccountName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      vmResourceId: pulumi.Output.create<String>(map['vmResourceId'] as String),
      workerGroupName: pulumi.Output.create<String>(map['workerGroupName'] as String),
      workerId: pulumi.Output.create<String>(map['workerId'] as String),
    );
  }
}

