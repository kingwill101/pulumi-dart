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
  /// &gt; **NOTE:** This name must be unique across all Actions within the Logic App Workflow.
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
      body: (() { final guardedValue = map['body']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      logicAppId: (() { final guardedValue = map['logicAppId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      method: (() { final guardedValue = map['method']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queries: (() { final guardedValue = map['queries']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      runAfters: (() { final guardedValue = map['runAfters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ActionHttpRunAfter>(guardedValue, (value) => ActionHttpRunAfter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

