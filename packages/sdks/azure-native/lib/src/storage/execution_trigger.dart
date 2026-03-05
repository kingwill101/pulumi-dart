// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_parameters.dart';
import 'trigger_type.dart';

/// Execution trigger for storage task assignment
class ExecutionTrigger {
  /// The trigger parameters of the storage task assignment execution
  final pulumi.Input<TriggerParameters> parameters;
  /// The trigger type of the storage task assignment execution
  final pulumi.Input<TriggerType> type;

  /// Creates a new [ExecutionTrigger].
  /// [parameters] The trigger parameters of the storage task assignment execution
  /// [type] The trigger type of the storage task assignment execution
  ExecutionTrigger({
    required this.parameters,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': pulumi.Input.mapInputValue<TriggerParameters, Map<String, dynamic>>(parameters, (value) => value.toMap()),
      'type': pulumi.Input.mapInputValue<TriggerType, String>(type, (value) => value.wireValue),
    };
  }

  factory ExecutionTrigger.fromMap(Map<String, dynamic> map) {
    return ExecutionTrigger(
      parameters: pulumi.Input.fromValue(TriggerParameters.fromMap((map['parameters']! as Map).cast<String, dynamic>())),
      type: pulumi.Input.fromValue(TriggerType.fromValue(map['type']! as String)),
    );
  }
}

