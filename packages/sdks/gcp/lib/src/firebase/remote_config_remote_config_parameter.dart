// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'remote_config_remote_config_parameter_conditional_value.dart';
import 'remote_config_remote_config_parameter_default_value.dart';

class RemoteConfigRemoteConfigParameter {
  /// The conditionName of the highest priority
  /// (the one listed first in the RemoteConfig's conditions list) determines
  /// the value of this parameter.
  /// Only one of useInAppDefault or value may be specified.
  /// Structure is documented below.
  final pulumi.Input<List<RemoteConfigRemoteConfigParameterConditionalValue>>? conditionalValues;
  /// Value to set the parameter to, when none of the named conditions evaluate to true.
  /// Only one of useInAppDefault or value may be specified.
  /// Structure is documented below.
  final pulumi.Input<RemoteConfigRemoteConfigParameterDefaultValue>? defaultValue;
  /// A description for this Parameter. Its length must be less than or equal to
  /// 256 characters . A description may contain any Unicode characters.
  final pulumi.Input<String>? description;
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> parameterName;
  /// The data type for all values of this parameter in the current version of
  /// the template.
  /// Default value is `STRING`.
  /// Possible values are: `STRING`, `BOOLEAN`, `NUMBER`, `JSON`.
  final pulumi.Input<String>? valueType;

  /// Creates a new [RemoteConfigRemoteConfigParameter].
  /// [conditionalValues] The conditionName of the highest priority
  /// [defaultValue] Value to set the parameter to, when none of the named conditions evaluate to true.
  /// [description] A description for this Parameter. Its length must be less than or equal to
  /// [parameterName] The identifier for this object. Format specified above.
  /// [valueType] The data type for all values of this parameter in the current version of
  const RemoteConfigRemoteConfigParameter({
    this.conditionalValues,
    this.defaultValue,
    this.description,
    required this.parameterName,
    this.valueType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionalValues': ?pulumi.Input.mapOptionalInputValue<List<RemoteConfigRemoteConfigParameterConditionalValue>, List<Map<String, dynamic>>>(conditionalValues, (value) => pulumi.Input.encodeList<RemoteConfigRemoteConfigParameterConditionalValue, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultValue': ?pulumi.Input.mapOptionalInputValue<RemoteConfigRemoteConfigParameterDefaultValue, Map<String, dynamic>>(defaultValue, (value) => value.toMap()),
      'description': ?description,
      'parameterName': parameterName,
      'valueType': ?valueType,
    };
  }

  factory RemoteConfigRemoteConfigParameter.fromMap(Map<String, dynamic> map) {
    return RemoteConfigRemoteConfigParameter(
      conditionalValues: (() { final guardedValue = map['conditionalValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RemoteConfigRemoteConfigParameterConditionalValue>(guardedValue, (value) => RemoteConfigRemoteConfigParameterConditionalValue.fromMap((value as Map).cast<String, dynamic>()))); })(),
      defaultValue: (() { final guardedValue = map['defaultValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RemoteConfigRemoteConfigParameterDefaultValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameterName: pulumi.Input.fromValue(map['parameterName'] as String),
      valueType: (() { final guardedValue = map['valueType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
