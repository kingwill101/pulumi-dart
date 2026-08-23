// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RemoteConfigRemoteConfigParameterGroupParameterConditionalValue {
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> conditionName;
  /// If true, the parameter is omitted from the parameter values returned
  /// to a client.
  final pulumi.Input<bool>? useInAppDefault;
  /// The string value that the parameter is set to.
  final pulumi.Input<String>? value;

  /// Creates a new [RemoteConfigRemoteConfigParameterGroupParameterConditionalValue].
  /// [conditionName] The identifier for this object. Format specified above.
  /// [useInAppDefault] If true, the parameter is omitted from the parameter values returned
  /// [value] The string value that the parameter is set to.
  const RemoteConfigRemoteConfigParameterGroupParameterConditionalValue({
    required this.conditionName,
    this.useInAppDefault,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionName': conditionName,
      'useInAppDefault': ?useInAppDefault,
      'value': ?value,
    };
  }

  factory RemoteConfigRemoteConfigParameterGroupParameterConditionalValue.fromMap(Map<String, dynamic> map) {
    return RemoteConfigRemoteConfigParameterGroupParameterConditionalValue(
      conditionName: pulumi.Input.fromValue(map['conditionName'] as String),
      useInAppDefault: (() { final guardedValue = map['useInAppDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
