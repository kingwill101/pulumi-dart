// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TriggerHttpRequest resources.
class TriggerHttpRequestState {
  /// The URL of the Trigger within the Logic App Workflow. For use with certain resources like monitor_action_group and security_center_automation.
  final pulumi.Input<String>? callbackUrl;
  /// Specifies the ID of the Logic App Workflow. Changing this forces a new resource to be created.
  final pulumi.Input<String>? logicAppId;
  /// Specifies the HTTP Method which the request be using. Possible values include `DELETE`, `GET`, `PATCH`, `POST` or `PUT`.
  final pulumi.Input<String>? method;
  /// Specifies the name of the HTTP Request Trigger to be created within the Logic App Workflow. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** This name must be unique across all Triggers within the Logic App Workflow.
  final pulumi.Input<String>? name;
  /// Specifies the Relative Path used for this Request.
  ///
  /// > **NOTE:** When `relative_path` is set a `method` must also be set.
  final pulumi.Input<String>? relativePath;
  /// A JSON Blob defining the Schema of the incoming request. This needs to be valid JSON.
  final pulumi.Input<String>? schema;

  /// Creates a new [TriggerHttpRequestState].
  /// [callbackUrl] The URL of the Trigger within the Logic App Workflow. For use with certain resources like monitor_action_group and security_center_automation.
  /// [logicAppId] Specifies the ID of the Logic App Workflow. Changing this forces a new resource to be created.
  /// [method] Specifies the HTTP Method which the request be using. Possible values include `DELETE`, `GET`, `PATCH`, `POST` or `PUT`.
  /// [name] Specifies the name of the HTTP Request Trigger to be created within the Logic App Workflow. Changing this forces a new resource to be created.
  /// [relativePath] Specifies the Relative Path used for this Request.
  /// [schema] A JSON Blob defining the Schema of the incoming request. This needs to be valid JSON.
  TriggerHttpRequestState({
    this.callbackUrl,
    this.logicAppId,
    this.method,
    this.name,
    this.relativePath,
    this.schema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'callbackUrl': ?callbackUrl,
      'logicAppId': ?logicAppId,
      'method': ?method,
      'name': ?name,
      'relativePath': ?relativePath,
      'schema': ?schema,
    };
  }

  factory TriggerHttpRequestState.fromMap(Map<String, dynamic> map) {
    return TriggerHttpRequestState(
      callbackUrl: map['callbackUrl'] == null ? null : (map['callbackUrl'] as String).input(),
      logicAppId: map['logicAppId'] == null ? null : (map['logicAppId'] as String).input(),
      method: map['method'] == null ? null : (map['method'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      relativePath: map['relativePath'] == null ? null : (map['relativePath'] as String).input(),
      schema: map['schema'] == null ? null : (map['schema'] as String).input(),
    );
  }
}

