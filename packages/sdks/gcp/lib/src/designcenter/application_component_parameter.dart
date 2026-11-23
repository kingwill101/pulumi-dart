// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_component_parameter_parameter.dart';

class ApplicationComponentParameter {
  /// The URI of the component that the parameters belong to.
  final pulumi.Input<String> component;
  /// A list of parameters associated with the component.
  /// Structure is documented below.
  final pulumi.Input<List<ApplicationComponentParameterParameter>?>? parameters;
  /// (Output)
  /// The deployment state of the component.
  final pulumi.Input<String?>? state;

  /// Creates a new [ApplicationComponentParameter].
  /// [component] The URI of the component that the parameters belong to.
  /// [parameters] A list of parameters associated with the component.
  /// [state] (Output)
  const ApplicationComponentParameter({
    required this.component,
    this.parameters,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'component': component,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<ApplicationComponentParameterParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<ApplicationComponentParameterParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'state': ?state,
    };
  }

  factory ApplicationComponentParameter.fromMap(Map<String, dynamic> map) {
    return ApplicationComponentParameter(
      component: pulumi.Input.fromValue(map['component'] as String),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationComponentParameterParameter>(guardedValue, (value) => ApplicationComponentParameterParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
