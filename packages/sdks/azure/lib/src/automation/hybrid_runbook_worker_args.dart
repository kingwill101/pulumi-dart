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
  const HybridRunbookWorkerArgs({
    required this.automationAccountName,
    required this.resourceGroupName,
    required this.vmResourceId,
    required this.workerGroupName,
    required this.workerId,
  });

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
      automationAccountName: pulumi.Input.fromValue(map['automationAccountName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      vmResourceId: pulumi.Input.fromValue(map['vmResourceId'] as String),
      workerGroupName: pulumi.Input.fromValue(map['workerGroupName'] as String),
      workerId: pulumi.Input.fromValue(map['workerId'] as String),
    );
  }
}

