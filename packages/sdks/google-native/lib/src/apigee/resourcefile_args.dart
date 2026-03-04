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
    this.contentType,
    this.data,
    required this.environmentId,
    this.extensions,
    this.file,
    required this.name,
    required this.organizationId,
    required this.type,
  });

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
      contentType: (() {
        final guardedValue = map['contentType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      data: (() {
        final guardedValue = map['data'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      extensions: (() {
        final guardedValue = map['extensions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as List).cast<Map<String, String>>(),
        );
      })(),
      file: (() {
        final guardedValue = map['file'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
