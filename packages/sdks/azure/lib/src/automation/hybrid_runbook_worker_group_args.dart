// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_hybrid_runbook_worker_group_hybrid_runbook_worker_group_args_doc}
/// The set of arguments for HybridRunbookWorkerGroup.
/// {@endtemplate}
/// {@macro pulumi_automation_hybrid_runbook_worker_group_hybrid_runbook_worker_group_args_doc}
class HybridRunbookWorkerGroupArgs {
  /// The name of the Automation Account in which the Runbook Worker Group is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> automationAccountName;
  /// The name of resource type `azure.automation.Credential` to use for hybrid worker.
  final pulumi.Input<String>? credentialName;
  /// The name which should be used for this Automation Account Runbook Worker Group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Automation should exist. Changing this forces a new Automation to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [HybridRunbookWorkerGroupArgs].
  /// [automationAccountName] The name of the Automation Account in which the Runbook Worker Group is created. Changing this forces a new resource to be created.
  /// [credentialName] The name of resource type `azure.automation.Credential` to use for hybrid worker.
  /// [name] The name which should be used for this Automation Account Runbook Worker Group. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the Automation should exist. Changing this forces a new Automation to be created.
  HybridRunbookWorkerGroupArgs({
    required this.automationAccountName,
    this.credentialName,
    this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'credentialName': ?credentialName,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory HybridRunbookWorkerGroupArgs.fromMap(Map<String, dynamic> map) {
    return HybridRunbookWorkerGroupArgs(
      automationAccountName: (map['automationAccountName'] as String).input(),
      credentialName: map['credentialName'] == null ? null : (map['credentialName'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

