// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_event_parameters_response.dart';

class EnterpriseCrmEventbusProtoTriggerCriteriaResponse {
  /// Standard filter expression, when true the workflow will be executed. If there's no trigger_criteria_task_implementation_class_name specified, the condition will be validated directly.
  final pulumi.Input<String> condition;

  /// Optional. To be used in TaskConfig for the implementation class.
  final pulumi.Input<EnterpriseCrmEventbusProtoEventParametersResponse>
  parameters;

  /// Optional. Implementation class name. The class should implement the “TypedTask” interface.
  final pulumi.Input<String> triggerCriteriaTaskImplementationClassName;

  /// Creates a new [EnterpriseCrmEventbusProtoTriggerCriteriaResponse].
  /// [condition] Standard filter expression, when true the workflow will be executed. If there's no trigger_criteria_task_implementation_class_name specified, the condition will be validated directly.
  /// [parameters] Optional. To be used in TaskConfig for the implementation class.
  /// [triggerCriteriaTaskImplementationClassName] Optional. Implementation class name. The class should implement the “TypedTask” interface.
  EnterpriseCrmEventbusProtoTriggerCriteriaResponse({
    required this.condition,
    required this.parameters,
    required this.triggerCriteriaTaskImplementationClassName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': condition,
      'parameters':
          pulumi.Input.mapInputValue<
            EnterpriseCrmEventbusProtoEventParametersResponse,
            Map<String, dynamic>
          >(parameters, (value) => value.toMap()),
      'triggerCriteriaTaskImplementationClassName':
          triggerCriteriaTaskImplementationClassName,
    };
  }

  factory EnterpriseCrmEventbusProtoTriggerCriteriaResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmEventbusProtoTriggerCriteriaResponse(
      condition: pulumi.Input.fromValue(map['condition'] as String),
      parameters: pulumi.Input.fromValue(
        EnterpriseCrmEventbusProtoEventParametersResponse.fromMap(
          (map['parameters']! as Map).cast<String, dynamic>(),
        ),
      ),
      triggerCriteriaTaskImplementationClassName: pulumi.Input.fromValue(
        map['triggerCriteriaTaskImplementationClassName'] as String,
      ),
    );
  }
}
