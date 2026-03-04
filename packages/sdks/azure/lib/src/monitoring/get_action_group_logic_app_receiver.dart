// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetActionGroupLogicAppReceiver {
  /// The callback url where HTTP request sent to.
  final pulumi.Input<String> callbackUrl;

  /// Specifies the name of the Action Group.
  final pulumi.Input<String> name;

  /// The Azure resource ID of the logic app.
  final pulumi.Input<String> resourceId;

  /// Indicates whether to use common alert schema.
  final pulumi.Input<bool> useCommonAlertSchema;

  /// Creates a new [GetActionGroupLogicAppReceiver].
  /// [callbackUrl] The callback url where HTTP request sent to.
  /// [name] Specifies the name of the Action Group.
  /// [resourceId] The Azure resource ID of the logic app.
  /// [useCommonAlertSchema] Indicates whether to use common alert schema.
  GetActionGroupLogicAppReceiver({
    required this.callbackUrl,
    required this.name,
    required this.resourceId,
    required this.useCommonAlertSchema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'callbackUrl': callbackUrl,
      'name': name,
      'resourceId': resourceId,
      'useCommonAlertSchema': useCommonAlertSchema,
    };
  }

  factory GetActionGroupLogicAppReceiver.fromMap(Map<String, dynamic> map) {
    return GetActionGroupLogicAppReceiver(
      callbackUrl: pulumi.Input.fromValue(map['callbackUrl'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
      useCommonAlertSchema: pulumi.Input.fromValue(
        map['useCommonAlertSchema'] as bool,
      ),
    );
  }
}
