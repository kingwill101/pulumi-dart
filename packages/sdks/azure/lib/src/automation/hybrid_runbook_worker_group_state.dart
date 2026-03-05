// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HybridRunbookWorkerGroup resources.
class HybridRunbookWorkerGroupState {
  /// The name of the Automation Account in which the Runbook Worker Group is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? automationAccountName;
  /// The name of resource type `azure.automation.Credential` to use for hybrid worker.
  final pulumi.Input<String>? credentialName;
  /// The name which should be used for this Automation Account Runbook Worker Group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Automation should exist. Changing this forces a new Automation to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [HybridRunbookWorkerGroupState].
  /// [automationAccountName] The name of the Automation Account in which the Runbook Worker Group is created. Changing this forces a new resource to be created.
  /// [credentialName] The name of resource type `azure.automation.Credential` to use for hybrid worker.
  /// [name] The name which should be used for this Automation Account Runbook Worker Group. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the Automation should exist. Changing this forces a new Automation to be created.
  HybridRunbookWorkerGroupState({
    this.automationAccountName,
    this.credentialName,
    this.name,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': ?automationAccountName,
      'credentialName': ?credentialName,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory HybridRunbookWorkerGroupState.fromMap(Map<String, dynamic> map) {
    return HybridRunbookWorkerGroupState(
      automationAccountName: (() { final guardedValue = map['automationAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      credentialName: (() { final guardedValue = map['credentialName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

