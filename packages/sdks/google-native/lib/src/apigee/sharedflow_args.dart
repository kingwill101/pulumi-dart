// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_sharedflow_args_doc}
/// The set of arguments for Sharedflow.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_sharedflow_args_doc}
class SharedflowArgs {
  /// Required. Must be set to either `import` or `validate`.
  final pulumi.Input<String> action;
  /// The HTTP Content-Type header value specifying the content type of the body.
  final pulumi.Input<String>? contentType;
  /// The HTTP request/response body as raw binary.
  final pulumi.Input<String>? data;
  /// Application specific response metadata. Must be set in the first response for streaming APIs.
  final pulumi.Input<List<Map<String, String>>>? extensions;
  /// Required. The name to give the shared flow
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;

  /// Creates a new [SharedflowArgs].
  /// [action] Required. Must be set to either `import` or `validate`.
  /// [contentType] The HTTP Content-Type header value specifying the content type of the body.
  /// [data] The HTTP request/response body as raw binary.
  /// [extensions] Application specific response metadata. Must be set in the first response for streaming APIs.
  /// [name] Required. The name to give the shared flow
  /// [organizationId] Required.
  SharedflowArgs({
    required pulumi.Output<String> action,
    pulumi.Output<String>? contentType,
    pulumi.Output<String>? data,
    pulumi.Output<List<Map<String, String>>>? extensions,
    pulumi.Output<String>? name,
    required pulumi.Output<String> organizationId,
  }) :
      action = pulumi.Input.asInput<String>(action),
      contentType = pulumi.Input.asOptionalInput<String>(contentType),
      data = pulumi.Input.asOptionalInput<String>(data),
      extensions = pulumi.Input.asOptionalInput<List<Map<String, String>>>(extensions),
      name = pulumi.Input.asOptionalInput<String>(name),
      organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'contentType': ?contentType,
      'data': ?data,
      'extensions': ?extensions,
      'name': ?name,
      'organizationId': organizationId,
    };
  }

  factory SharedflowArgs.fromMap(Map<String, dynamic> map) {
    return SharedflowArgs(
      action: pulumi.Output.create<String>(map['action'] as String),
      contentType: map['contentType'] == null ? null : pulumi.Output.create<String>(map['contentType'] as String),
      data: map['data'] == null ? null : pulumi.Output.create<String>(map['data'] as String),
      extensions: map['extensions'] == null ? null : pulumi.Output.create<List<Map<String, String>>>((map['extensions'] as List).cast<Map<String, String>>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
    );
  }
}

