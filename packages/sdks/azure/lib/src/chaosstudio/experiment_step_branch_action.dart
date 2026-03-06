// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExperimentStepBranchAction {
  /// The type of action that should be added to the experiment. Possible values are `continuous`, `delay` and `discrete`.
  final pulumi.Input<String> actionType;
  /// An ISO8601 formatted string specifying the duration for a `delay` or `continuous` action.
  final pulumi.Input<String>? duration;
  /// A key-value map of additional parameters to configure the action. The values that are accepted by this depend on the `urn` i.e. the capability/fault that is applied. Possible parameter values can be found in this [documentation](https://learn.microsoft.com/azure/chaos-studio/chaos-studio-fault-library)
  final pulumi.Input<Map<String, String>>? parameters;
  /// The name of the Selector to which this action should apply to. This must be specified if the `action_type` is `continuous` or `discrete`.
  final pulumi.Input<String>? selectorName;
  /// The Unique Resource Name of the action, this value is provided by the `azure.chaosstudio.Capability` resource e.g. `azurerm_chaos_studio_capability.example.urn`. This must be specified if the `action_type` is `continuous` or `discrete`.
  final pulumi.Input<String>? urn;

  /// Creates a new [ExperimentStepBranchAction].
  /// [actionType] The type of action that should be added to the experiment. Possible values are `continuous`, `delay` and `discrete`.
  /// [duration] An ISO8601 formatted string specifying the duration for a `delay` or `continuous` action.
  /// [parameters] A key-value map of additional parameters to configure the action. The values that are accepted by this depend on the `urn` i.e. the capability/fault that is applied. Possible parameter values can be found in this [documentation](https://learn.microsoft.com/azure/chaos-studio/chaos-studio-fault-library)
  /// [selectorName] The name of the Selector to which this action should apply to. This must be specified if the `action_type` is `continuous` or `discrete`.
  /// [urn] The Unique Resource Name of the action, this value is provided by the `azure.chaosstudio.Capability` resource e.g. `azurerm_chaos_studio_capability.example.urn`. This must be specified if the `action_type` is `continuous` or `discrete`.
  const ExperimentStepBranchAction({
    required this.actionType,
    this.duration,
    this.parameters,
    this.selectorName,
    this.urn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': actionType,
      'duration': ?duration,
      'parameters': ?parameters,
      'selectorName': ?selectorName,
      'urn': ?urn,
    };
  }

  factory ExperimentStepBranchAction.fromMap(Map<String, dynamic> map) {
    return ExperimentStepBranchAction(
      actionType: pulumi.Input.fromValue(map['actionType'] as String),
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      selectorName: (() { final guardedValue = map['selectorName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      urn: (() { final guardedValue = map['urn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

