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
    required this.action,
    this.contentType,
    this.data,
    this.extensions,
    this.name,
    required this.organizationId,
  });

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
      action: (map['action'] as String).input(),
      contentType: map['contentType'] == null ? null : (map['contentType']! as String).input(),
      data: map['data'] == null ? null : (map['data']! as String).input(),
      extensions: map['extensions'] == null ? null : ((map['extensions']! as List).cast<Map<String, String>>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      organizationId: (map['organizationId'] as String).input(),
    );
  }
}

