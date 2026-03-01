// ignore_for_file: unused_element, unnecessary_cast


class GetActionGroupAzureFunctionReceiver {
  /// The Azure resource ID of the function app.
  final String functionAppResourceId;
  /// The function name in the function app.
  final String functionName;
  /// The HTTP trigger url where HTTP request sent to.
  final String httpTriggerUrl;
  /// Specifies the name of the Action Group.
  final String name;
  /// Indicates whether to use common alert schema.
  final bool useCommonAlertSchema;

  /// Creates a new [GetActionGroupAzureFunctionReceiver].
  /// [functionAppResourceId] The Azure resource ID of the function app.
  /// [functionName] The function name in the function app.
  /// [httpTriggerUrl] The HTTP trigger url where HTTP request sent to.
  /// [name] Specifies the name of the Action Group.
  /// [useCommonAlertSchema] Indicates whether to use common alert schema.
  GetActionGroupAzureFunctionReceiver({
    required this.functionAppResourceId,
    required this.functionName,
    required this.httpTriggerUrl,
    required this.name,
    required this.useCommonAlertSchema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionAppResourceId': functionAppResourceId,
      'functionName': functionName,
      'httpTriggerUrl': httpTriggerUrl,
      'name': name,
      'useCommonAlertSchema': useCommonAlertSchema,
    };
  }

  factory GetActionGroupAzureFunctionReceiver.fromMap(Map<String, dynamic> map) {
    return GetActionGroupAzureFunctionReceiver(
      functionAppResourceId: map['functionAppResourceId'] as String,
      functionName: map['functionName'] as String,
      httpTriggerUrl: map['httpTriggerUrl'] as String,
      name: map['name'] as String,
      useCommonAlertSchema: map['useCommonAlertSchema'] as bool,
    );
  }
}

