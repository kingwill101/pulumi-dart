// ignore_for_file: unused_element, unnecessary_cast


class ActionGroupLogicAppReceiver {
  /// The callback url where HTTP request sent to.
  final String callbackUrl;
  /// The name of the logic app receiver.
  final String name;
  /// The Azure resource ID of the logic app.
  final String resourceId;
  /// Enables or disables the common alert schema.
  final bool? useCommonAlertSchema;

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
      callbackUrl: map['callbackUrl'] as String,
      name: map['name'] as String,
      resourceId: map['resourceId'] as String,
      useCommonAlertSchema: map['useCommonAlertSchema'] == null ? null : map['useCommonAlertSchema'] as bool,
    );
  }
}

