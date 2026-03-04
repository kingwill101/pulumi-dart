// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_parameters_response.dart';

/// Execution trigger for storage task assignment
class ExecutionTriggerResponse {
  /// The trigger parameters of the storage task assignment execution
  final pulumi.Input<TriggerParametersResponse> parameters;

  /// The trigger type of the storage task assignment execution
  final pulumi.Input<String> type;

  /// Creates a new [ExecutionTriggerResponse].
  /// [parameters] The trigger parameters of the storage task assignment execution
  /// [type] The trigger type of the storage task assignment execution
  ExecutionTriggerResponse({required this.parameters, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters':
          pulumi.Input.mapInputValue<
            TriggerParametersResponse,
            Map<String, dynamic>
          >(parameters, (value) => value.toMap()),
      'type': type,
    };
  }

  factory ExecutionTriggerResponse.fromMap(Map<String, dynamic> map) {
    return ExecutionTriggerResponse(
      parameters: pulumi.Input.fromValue(
        TriggerParametersResponse.fromMap(
          (map['parameters']! as Map).cast<String, dynamic>(),
        ),
      ),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
