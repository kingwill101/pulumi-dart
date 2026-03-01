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
    pulumi.Output<String>? automationAccountName,
    pulumi.Output<String>? credentialName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
  }) :
      automationAccountName = pulumi.Input.asOptionalInput<String>(automationAccountName),
      credentialName = pulumi.Input.asOptionalInput<String>(credentialName),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName);

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
      automationAccountName: map['automationAccountName'] == null ? null : pulumi.Output.create<String>(map['automationAccountName'] as String),
      credentialName: map['credentialName'] == null ? null : pulumi.Output.create<String>(map['credentialName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

