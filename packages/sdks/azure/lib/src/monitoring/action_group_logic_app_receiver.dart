// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ActionGroupLogicAppReceiver {
  /// The callback url where HTTP request sent to.
  final pulumi.Input<String> callbackUrl;
  /// The name of the logic app receiver.
  final pulumi.Input<String> name;
  /// The Azure resource ID of the logic app.
  final pulumi.Input<String> resourceId;
  /// Enables or disables the common alert schema.
  final pulumi.Input<bool>? useCommonAlertSchema;

  /// Creates a new [ActionGroupLogicAppReceiver].
  /// [callbackUrl] The callback url where HTTP request sent to.
  /// [name] The name of the logic app receiver.
  /// [resourceId] The Azure resource ID of the logic app.
  /// [useCommonAlertSchema] Enables or disables the common alert schema.
  ActionGroupLogicAppReceiver({
    required this.callbackUrl,
    required this.name,
    required this.resourceId,
    this.useCommonAlertSchema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'callbackUrl': callbackUrl,
      'name': name,
      'resourceId': resourceId,
      'useCommonAlertSchema': ?useCommonAlertSchema,
    };
  }

  factory ActionGroupLogicAppReceiver.fromMap(Map<String, dynamic> map) {
    return ActionGroupLogicAppReceiver(
      callbackUrl: pulumi.Input.fromValue(map['callbackUrl'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
      useCommonAlertSchema: (() { final guardedValue = map['useCommonAlertSchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

