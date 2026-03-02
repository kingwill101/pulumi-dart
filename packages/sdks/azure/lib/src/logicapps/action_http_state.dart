// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_http_run_after.dart';

/// Input properties used for looking up and filtering ActionHttp resources.
class ActionHttpState {
  /// Specifies the HTTP Body that should be sent to the `uri` when this HTTP Action is triggered.
  final pulumi.Input<String>? body;
  /// Specifies a Map of Key-Value Pairs that should be sent to the `uri` when this HTTP Action is triggered.
  final pulumi.Input<Map<String, String>>? headers;
  /// Specifies the ID of the Logic App Workflow. Changing this forces a new resource to be created.
  final pulumi.Input<String>? logicAppId;
  /// Specifies the HTTP Method which should be used for this HTTP Action. Possible values include `DELETE`, `GET`, `PATCH`, `POST` and `PUT`.
  final pulumi.Input<String>? method;
  /// Specifies the name of the HTTP Action to be created within the Logic App Workflow. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** This name must be unique across all Actions within the Logic App Workflow.
  final pulumi.Input<String>? name;
  /// Specifies a Map of Key-Value Pairs that should be sent to the `uri` when this HTTP Action is triggered.
  final pulumi.Input<Map<String, String>>? queries;
  /// Specifies the place of the HTTP Action in the Logic App Workflow. If not specified, the HTTP Action is right after the Trigger. A `run_after` block is as defined below.
  final pulumi.Input<List<ActionHttpRunAfter>>? runAfters;
  /// Specifies the URI which will be called when this HTTP Action is triggered.
  final pulumi.Input<String>? uri;

  /// Creates a new [ActionHttpState].
  /// [body] Specifies the HTTP Body that should be sent to the `uri` when this HTTP Action is triggered.
  /// [headers] Specifies a Map of Key-Value Pairs that should be sent to the `uri` when this HTTP Action is triggered.
  /// [logicAppId] Specifies the ID of the Logic App Workflow. Changing this forces a new resource to be created.
  /// [method] Specifies the HTTP Method which should be used for this HTTP Action. Possible values include `DELETE`, `GET`, `PATCH`, `POST` and `PUT`.
  /// [name] Specifies the name of the HTTP Action to be created within the Logic App Workflow. Changing this forces a new resource to be created.
  /// [queries] Specifies a Map of Key-Value Pairs that should be sent to the `uri` when this HTTP Action is triggered.
  /// [runAfters] Specifies the place of the HTTP Action in the Logic App Workflow. If not specified, the HTTP Action is right after the Trigger. A `run_after` block is as defined below.
  /// [uri] Specifies the URI which will be called when this HTTP Action is triggered.
  ActionHttpState({
    this.body,
    this.headers,
    this.logicAppId,
    this.method,
    this.name,
    this.queries,
    this.runAfters,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'body': ?body,
      'headers': ?headers,
      'logicAppId': ?logicAppId,
      'method': ?method,
      'name': ?name,
      'queries': ?queries,
      'runAfters': ?pulumi.Input.mapOptionalInputValue<List<ActionHttpRunAfter>, List<Map<String, dynamic>>>(runAfters, (value) => pulumi.Input.encodeList<ActionHttpRunAfter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'uri': ?uri,
    };
  }

  factory ActionHttpState.fromMap(Map<String, dynamic> map) {
    return ActionHttpState(
      body: map['body'] == null ? null : (map['body']! as String).input(),
      headers: map['headers'] == null ? null : ((map['headers']! as Map).cast<String, String>()).input(),
      logicAppId: map['logicAppId'] == null ? null : (map['logicAppId']! as String).input(),
      method: map['method'] == null ? null : (map['method']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      queries: map['queries'] == null ? null : ((map['queries']! as Map).cast<String, String>()).input(),
      runAfters: map['runAfters'] == null ? null : (pulumi.Input.decodeList<ActionHttpRunAfter>(map['runAfters']!, (value) => ActionHttpRunAfter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      uri: map['uri'] == null ? null : (map['uri']! as String).input(),
    );
  }
}

