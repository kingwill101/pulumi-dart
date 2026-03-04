// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetActionGroupAzureFunctionReceiver {
  /// The Azure resource ID of the function app.
  final pulumi.Input<String> functionAppResourceId;

  /// The function name in the function app.
  final pulumi.Input<String> functionName;

  /// The HTTP trigger url where HTTP request sent to.
  final pulumi.Input<String> httpTriggerUrl;

  /// Specifies the name of the Action Group.
  final pulumi.Input<String> name;

  /// Indicates whether to use common alert schema.
  final pulumi.Input<bool> useCommonAlertSchema;

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

  factory GetActionGroupAzureFunctionReceiver.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetActionGroupAzureFunctionReceiver(
      functionAppResourceId: pulumi.Input.fromValue(
        map['functionAppResourceId'] as String,
      ),
      functionName: pulumi.Input.fromValue(map['functionName'] as String),
      httpTriggerUrl: pulumi.Input.fromValue(map['httpTriggerUrl'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      useCommonAlertSchema: pulumi.Input.fromValue(
        map['useCommonAlertSchema'] as bool,
      ),
    );
  }
}
