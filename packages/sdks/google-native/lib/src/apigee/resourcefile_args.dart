// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_resourcefile_args_doc}
/// The set of arguments for Resourcefile.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_resourcefile_args_doc}
class ResourcefileArgs {
  /// The HTTP Content-Type header value specifying the content type of the body.
  final pulumi.Input<String>? contentType;
  /// The HTTP request/response body as raw binary.
  final pulumi.Input<String>? data;
  final pulumi.Input<String> environmentId;
  /// Application specific response metadata. Must be set in the first response for streaming APIs.
  final pulumi.Input<List<Map<String, String>>>? extensions;
  /// File to upload.
  final pulumi.Input<dynamic>? file;
  /// Required. Name of the resource file. Must match the regular expression: [a-zA-Z0-9:/\\!@#$%^&{}\[\]()+\-=,.~'` ]{1,255}
  final pulumi.Input<String> name;
  final pulumi.Input<String> organizationId;
  /// Required. Resource file type. {{ resource_file_type }}
  final pulumi.Input<String> type;

  /// Creates a new [ResourcefileArgs].
  /// [contentType] The HTTP Content-Type header value specifying the content type of the body.
  /// [data] The HTTP request/response body as raw binary.
  /// [environmentId] Required.
  /// [extensions] Application specific response metadata. Must be set in the first response for streaming APIs.
  /// [file] File to upload.
  /// [name] Required. Name of the resource file. Must match the regular expression: [a-zA-Z0-9:/\\!@#$%^&{}\[\]()+\-=,.~'` ]{1,255}
  /// [organizationId] Required.
  /// [type] Required. Resource file type. {{ resource_file_type }}
  ResourcefileArgs({
    pulumi.Output<String>? contentType,
    pulumi.Output<String>? data,
    required pulumi.Output<String> environmentId,
    pulumi.Output<List<Map<String, String>>>? extensions,
    pulumi.Output<dynamic>? file,
    required pulumi.Output<String> name,
    required pulumi.Output<String> organizationId,
    required pulumi.Output<String> type,
  }) :
      contentType = pulumi.Input.asOptionalInput<String>(contentType),
      data = pulumi.Input.asOptionalInput<String>(data),
      environmentId = pulumi.Input.asInput<String>(environmentId),
      extensions = pulumi.Input.asOptionalInput<List<Map<String, String>>>(extensions),
      file = pulumi.Input.asOptionalInput<dynamic>(file),
      name = pulumi.Input.asInput<String>(name),
      organizationId = pulumi.Input.asInput<String>(organizationId),
      type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentType': ?contentType,
      'data': ?data,
      'environmentId': environmentId,
      'extensions': ?extensions,
      'file': ?file,
      'name': name,
      'organizationId': organizationId,
      'type': type,
    };
  }

  factory ResourcefileArgs.fromMap(Map<String, dynamic> map) {
    return ResourcefileArgs(
      contentType: map['contentType'] == null ? null : pulumi.Output.create<String>(map['contentType'] as String),
      data: map['data'] == null ? null : pulumi.Output.create<String>(map['data'] as String),
      environmentId: pulumi.Output.create<String>(map['environmentId'] as String),
      extensions: map['extensions'] == null ? null : pulumi.Output.create<List<Map<String, String>>>((map['extensions'] as List).cast<Map<String, String>>()),
      file: map['file'] == null ? null : pulumi.Output.create<dynamic>(map['file']),
      name: pulumi.Output.create<String>(map['name'] as String),
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
      type: pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

