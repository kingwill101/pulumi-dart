// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EnvironmentDebugmask resources.
class EnvironmentDebugmaskState {
  /// The Apigee environment associated with the debug mask, in the format
  /// `organizations/{{org_name}}/environments/{{env_name}}`.
  ///
  /// - - -
  final pulumi.Input<String>? envId;
  /// List of XPath expressions that specify the XML elements or attributes that the
  /// debug mask applies to for fault messages.
  final pulumi.Input<List<String>>? faultXPaths;
  /// The fully qualified name of the debug mask, in the format
  /// `organizations/{{org_name}}/environments/{{env_name}}/debugmask`.
  final pulumi.Input<String>? name;
  /// Map of namespace prefixes to URIs used to evaluate the configured XPath
  /// expressions.
  final pulumi.Input<Map<String, String>>? namespaces;
  /// List of JSONPath expressions that specify the JSON elements or attributes that
  /// the debug mask applies to for request messages.
  final pulumi.Input<List<String>>? requestJsonPaths;
  /// List of XPath expressions that specify the XML elements or attributes that the
  /// debug mask applies to for request messages.
  final pulumi.Input<List<String>>? requestXPaths;
  /// List of JSONPath expressions that specify the JSON elements or attributes that
  /// the debug mask applies to for response messages.
  final pulumi.Input<List<String>>? responseJsonPaths;
  /// List of XPath expressions that specify the XML elements or attributes that the
  /// debug mask applies to for response messages.
  final pulumi.Input<List<String>>? responseXPaths;
  /// List of flow variables that the debug mask applies to.
  final pulumi.Input<List<String>>? variables;

  /// Creates a new [EnvironmentDebugmaskState].
  /// [envId] The Apigee environment associated with the debug mask, in the format
  /// [faultXPaths] List of XPath expressions that specify the XML elements or attributes that the
  /// [name] The fully qualified name of the debug mask, in the format
  /// [namespaces] Map of namespace prefixes to URIs used to evaluate the configured XPath
  /// [requestJsonPaths] List of JSONPath expressions that specify the JSON elements or attributes that
  /// [requestXPaths] List of XPath expressions that specify the XML elements or attributes that the
  /// [responseJsonPaths] List of JSONPath expressions that specify the JSON elements or attributes that
  /// [responseXPaths] List of XPath expressions that specify the XML elements or attributes that the
  /// [variables] List of flow variables that the debug mask applies to.
  const EnvironmentDebugmaskState({
    this.envId,
    this.faultXPaths,
    this.name,
    this.namespaces,
    this.requestJsonPaths,
    this.requestXPaths,
    this.responseJsonPaths,
    this.responseXPaths,
    this.variables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'envId': ?envId,
      'faultXPaths': ?faultXPaths,
      'name': ?name,
      'namespaces': ?namespaces,
      'requestJsonPaths': ?requestJsonPaths,
      'requestXPaths': ?requestXPaths,
      'responseJsonPaths': ?responseJsonPaths,
      'responseXPaths': ?responseXPaths,
      'variables': ?variables,
    };
  }

  factory EnvironmentDebugmaskState.fromMap(Map<String, dynamic> map) {
    return EnvironmentDebugmaskState(
      envId: (() { final guardedValue = map['envId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      faultXPaths: (() { final guardedValue = map['faultXPaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaces: (() { final guardedValue = map['namespaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      requestJsonPaths: (() { final guardedValue = map['requestJsonPaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      requestXPaths: (() { final guardedValue = map['requestXPaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      responseJsonPaths: (() { final guardedValue = map['responseJsonPaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      responseXPaths: (() { final guardedValue = map['responseXPaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      variables: (() { final guardedValue = map['variables']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
