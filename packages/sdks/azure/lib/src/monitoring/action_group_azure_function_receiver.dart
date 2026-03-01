// ignore_for_file: unused_element, unnecessary_cast


class ActionGroupAzureFunctionReceiver {
  /// The Azure resource ID of the function app.
  final String functionAppResourceId;
  /// The function name in the function app.
  final String functionName;
  /// The HTTP trigger url where HTTP request sent to.
  final String httpTriggerUrl;
  /// The name of the Azure Function receiver.
  final String name;
  /// Enables or disables the common alert schema.
  final bool? useCommonAlertSchema;

  /// Creates a new [ActionGroupAzureFunctionReceiver].
  /// [functionAppResourceId] The Azure resource ID of the function app.
  /// [functionName] The function name in the function app.
  /// [httpTriggerUrl] The HTTP trigger url where HTTP request sent to.
  /// [name] The name of the Azure Function receiver.
  /// [useCommonAlertSchema] Enables or disables the common alert schema.
  ActionGroupAzureFunctionReceiver({
    required this.functionAppResourceId,
    required this.functionName,
    required this.httpTriggerUrl,
    required this.name,
    this.useCommonAlertSchema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionAppResourceId': functionAppResourceId,
      'functionName': functionName,
      'httpTriggerUrl': httpTriggerUrl,
      'name': name,
      'useCommonAlertSchema': ?useCommonAlertSchema,
    };
  }

  factory ActionGroupAzureFunctionReceiver.fromMap(Map<String, dynamic> map) {
    return ActionGroupAzureFunctionReceiver(
      functionAppResourceId: map['functionAppResourceId'] as String,
      functionName: map['functionName'] as String,
      httpTriggerUrl: map['httpTriggerUrl'] as String,
      name: map['name'] as String,
      useCommonAlertSchema: map['useCommonAlertSchema'] == null ? null : map['useCommonAlertSchema'] as bool,
    );
  }
}

