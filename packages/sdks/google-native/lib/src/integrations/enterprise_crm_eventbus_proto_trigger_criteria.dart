// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_event_parameters.dart';

class EnterpriseCrmEventbusProtoTriggerCriteria {
  /// Standard filter expression, when true the workflow will be executed. If there's no trigger_criteria_task_implementation_class_name specified, the condition will be validated directly.
  final pulumi.Input<String> condition;

  /// Optional. To be used in TaskConfig for the implementation class.
  final pulumi.Input<EnterpriseCrmEventbusProtoEventParameters>? parameters;

  /// Optional. Implementation class name. The class should implement the “TypedTask” interface.
  final pulumi.Input<String>? triggerCriteriaTaskImplementationClassName;

  /// Creates a new [EnterpriseCrmEventbusProtoTriggerCriteria].
  /// [condition] Standard filter expression, when true the workflow will be executed. If there's no trigger_criteria_task_implementation_class_name specified, the condition will be validated directly.
  /// [parameters] Optional. To be used in TaskConfig for the implementation class.
  /// [triggerCriteriaTaskImplementationClassName] Optional. Implementation class name. The class should implement the “TypedTask” interface.
  EnterpriseCrmEventbusProtoTriggerCriteria({
    required this.condition,
    this.parameters,
    this.triggerCriteriaTaskImplementationClassName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': condition,
      'parameters':
          ?pulumi.Input.mapOptionalInputValue<
            EnterpriseCrmEventbusProtoEventParameters,
            Map<String, dynamic>
          >(parameters, (value) => value.toMap()),
      'triggerCriteriaTaskImplementationClassName':
          ?triggerCriteriaTaskImplementationClassName,
    };
  }

  factory EnterpriseCrmEventbusProtoTriggerCriteria.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmEventbusProtoTriggerCriteria(
      condition: pulumi.Input.fromValue(map['condition'] as String),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EnterpriseCrmEventbusProtoEventParameters.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      triggerCriteriaTaskImplementationClassName: (() {
        final guardedValue = map['triggerCriteriaTaskImplementationClassName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
