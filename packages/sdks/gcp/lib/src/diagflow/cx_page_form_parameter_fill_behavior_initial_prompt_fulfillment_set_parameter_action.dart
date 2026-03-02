// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxPageFormParameterFillBehaviorInitialPromptFulfillmentSetParameterAction {
  /// Display name of the parameter.
  final pulumi.Input<String>? parameter;
  /// The new JSON-encoded value of the parameter. A null value clears the parameter.
  final pulumi.Input<String>? value;

  /// Creates a new [CxPageFormParameterFillBehaviorInitialPromptFulfillmentSetParameterAction].
  /// [parameter] Display name of the parameter.
  /// [value] The new JSON-encoded value of the parameter. A null value clears the parameter.
  CxPageFormParameterFillBehaviorInitialPromptFulfillmentSetParameterAction({
    this.parameter,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameter': ?parameter,
      'value': ?value,
    };
  }

  factory CxPageFormParameterFillBehaviorInitialPromptFulfillmentSetParameterAction.fromMap(Map<String, dynamic> map) {
    return CxPageFormParameterFillBehaviorInitialPromptFulfillmentSetParameterAction(
      parameter: map['parameter'] == null ? null : (map['parameter'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

