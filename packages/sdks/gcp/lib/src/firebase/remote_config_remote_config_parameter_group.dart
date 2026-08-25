// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'remote_config_remote_config_parameter_group_parameter.dart';

class RemoteConfigRemoteConfigParameterGroup {
  /// A description for the group. Its length must be less than or equal to 256
  /// characters. A description may contain any Unicode characters.
  final pulumi.Input<String?>? description;
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> parameterGroupName;
  /// Map of parameter keys to their optional default values and optional
  /// conditional values for parameters that belong to this group.
  /// A parameter only appears once per RemoteConfig: an ungrouped parameter
  /// appears at the top level; a parameter organized within a group appears
  /// within its group's map of parameters.
  /// Structure is documented below.
  final pulumi.Input<List<RemoteConfigRemoteConfigParameterGroupParameter>?>? parameters;

  /// Creates a new [RemoteConfigRemoteConfigParameterGroup].
  /// [description] A description for the group. Its length must be less than or equal to 256
  /// [parameterGroupName] The identifier for this object. Format specified above.
  /// [parameters] Map of parameter keys to their optional default values and optional
  const RemoteConfigRemoteConfigParameterGroup({
    this.description,
    required this.parameterGroupName,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'parameterGroupName': parameterGroupName,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<RemoteConfigRemoteConfigParameterGroupParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<RemoteConfigRemoteConfigParameterGroupParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RemoteConfigRemoteConfigParameterGroup.fromMap(Map<String, dynamic> map) {
    return RemoteConfigRemoteConfigParameterGroup(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameterGroupName: pulumi.Input.fromValue(map['parameterGroupName'] as String),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RemoteConfigRemoteConfigParameterGroupParameter>(guardedValue, (value) => RemoteConfigRemoteConfigParameterGroupParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
