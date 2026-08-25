// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RemoteConfigRemoteConfigParameterDefaultValue {
  /// If true, the parameter is omitted from the parameter values returned
  /// to a client.
  final pulumi.Input<bool?>? useInAppDefault;
  /// The string value that the parameter is set to.
  final pulumi.Input<String?>? value;

  /// Creates a new [RemoteConfigRemoteConfigParameterDefaultValue].
  /// [useInAppDefault] If true, the parameter is omitted from the parameter values returned
  /// [value] The string value that the parameter is set to.
  const RemoteConfigRemoteConfigParameterDefaultValue({
    this.useInAppDefault,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'useInAppDefault': ?useInAppDefault,
      'value': ?value,
    };
  }

  factory RemoteConfigRemoteConfigParameterDefaultValue.fromMap(Map<String, dynamic> map) {
    return RemoteConfigRemoteConfigParameterDefaultValue(
      useInAppDefault: (() { final guardedValue = map['useInAppDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
