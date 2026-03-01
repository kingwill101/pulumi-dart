// ignore_for_file: unused_element, unnecessary_cast


class GetActionGroupLogicAppReceiver {
  /// The callback url where HTTP request sent to.
  final String callbackUrl;
  /// Specifies the name of the Action Group.
  final String name;
  /// The Azure resource ID of the logic app.
  final String resourceId;
  /// Indicates whether to use common alert schema.
  final bool useCommonAlertSchema;

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
      callbackUrl: map['callbackUrl'] as String,
      name: map['name'] as String,
      resourceId: map['resourceId'] as String,
      useCommonAlertSchema: map['useCommonAlertSchema'] as bool,
    );
  }
}

