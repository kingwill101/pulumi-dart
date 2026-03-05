// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SettingsApplicationSettingsAttributePropagationSettings {
  /// Whether the provided attribute propagation settings should be evaluated on user requests.
  /// If set to true, attributes returned from the expression will be propagated in the set output credentials.
  final pulumi.Input<bool>? enable;
  /// Raw string CEL expression. Must return a list of attributes. A maximum of 45 attributes can
  /// be selected. Expressions can select different attribute types from attributes:
  /// attributes.saml_attributes, attributes.iap_attributes.
  final pulumi.Input<String>? expression;
  /// Which output credentials attributes selected by the CEL expression should be propagated in.
  /// All attributes will be fully duplicated in each selected output credential.
  /// Possible values are:
  /// * `HEADER`: Propagate attributes in the headers with "x-goog-iap-attr-" prefix.
  /// * `JWT`: Propagate attributes in the JWT of the form:
  /// "additional_claims": { "my_attribute": ["value1", "value2"] }
  /// * `RCTOKEN`: Propagate attributes in the RCToken of the form: "
  /// additional_claims": { "my_attribute": ["value1", "value2"] }
  /// Each value may be one of: `HEADER`, `JWT`, `RCTOKEN`.
  final pulumi.Input<List<String>>? outputCredentials;

  /// Creates a new [SettingsApplicationSettingsAttributePropagationSettings].
  /// [enable] Whether the provided attribute propagation settings should be evaluated on user requests.
  /// [expression] Raw string CEL expression. Must return a list of attributes. A maximum of 45 attributes can
  /// [outputCredentials] Which output credentials attributes selected by the CEL expression should be propagated in.
  SettingsApplicationSettingsAttributePropagationSettings({
    this.enable,
    this.expression,
    this.outputCredentials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
      'expression': ?expression,
      'outputCredentials': ?outputCredentials,
    };
  }

  factory SettingsApplicationSettingsAttributePropagationSettings.fromMap(Map<String, dynamic> map) {
    return SettingsApplicationSettingsAttributePropagationSettings(
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      expression: (() { final guardedValue = map['expression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputCredentials: (() { final guardedValue = map['outputCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

