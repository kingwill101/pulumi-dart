// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ActionGroupAzureFunctionReceiver {
  /// The Azure resource ID of the function app.
  final pulumi.Input<String> functionAppResourceId;
  /// The function name in the function app.
  final pulumi.Input<String> functionName;
  /// The HTTP trigger url where HTTP request sent to.
  final pulumi.Input<String> httpTriggerUrl;
  /// The name of the Azure Function receiver.
  final pulumi.Input<String> name;
  /// Enables or disables the common alert schema.
  final pulumi.Input<bool>? useCommonAlertSchema;

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
      functionAppResourceId: pulumi.Input.fromValue(map['functionAppResourceId'] as String),
      functionName: pulumi.Input.fromValue(map['functionName'] as String),
      httpTriggerUrl: pulumi.Input.fromValue(map['httpTriggerUrl'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      useCommonAlertSchema: (() { final guardedValue = map['useCommonAlertSchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

