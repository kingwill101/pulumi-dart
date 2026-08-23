// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PluginActionsConfig {
  /// The description of the operation performed by the action.
  final pulumi.Input<String> description;
  /// The display name of the action.
  final pulumi.Input<String> displayName;
  /// The id of the action.
  final pulumi.Input<String> id;
  /// The trigger mode supported by the action.
  /// Possible values:
  /// TRIGGER_MODE_UNSPECIFIED
  /// API_HUB_ON_DEMAND_TRIGGER
  /// API_HUB_SCHEDULE_TRIGGER
  /// NON_API_HUB_MANAGED
  final pulumi.Input<String> triggerMode;

  /// Creates a new [PluginActionsConfig].
  /// [description] The description of the operation performed by the action.
  /// [displayName] The display name of the action.
  /// [id] The id of the action.
  /// [triggerMode] The trigger mode supported by the action.
  const PluginActionsConfig({
    required this.description,
    required this.displayName,
    required this.id,
    required this.triggerMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'displayName': displayName,
      'id': id,
      'triggerMode': triggerMode,
    };
  }

  factory PluginActionsConfig.fromMap(Map<String, dynamic> map) {
    return PluginActionsConfig(
      description: pulumi.Input.fromValue(map['description'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      triggerMode: pulumi.Input.fromValue(map['triggerMode'] as String),
    );
  }
}
