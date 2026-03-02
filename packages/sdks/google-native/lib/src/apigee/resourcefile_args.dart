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
      contentType: map['contentType'] == null ? null : (map['contentType']! as String).input(),
      data: map['data'] == null ? null : (map['data']! as String).input(),
      environmentId: (map['environmentId'] as String).input(),
      extensions: map['extensions'] == null ? null : ((map['extensions']! as List).cast<Map<String, String>>()).input(),
      file: map['file'] == null ? null : (map['file']!).input(),
      name: (map['name'] as String).input(),
      organizationId: (map['organizationId'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

