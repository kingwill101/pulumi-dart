// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_api_args_doc}
/// The set of arguments for Api.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_api_args_doc}
class ApiArgs {
  /// Action to perform when importing an API proxy configuration bundle. Set this parameter to one of the following values: * `import` to import the API proxy configuration bundle. * `validate` to validate the API proxy configuration bundle without importing it.
  final pulumi.Input<String>? action;
  /// The HTTP Content-Type header value specifying the content type of the body.
  final pulumi.Input<String>? contentType;
  /// The HTTP request/response body as raw binary.
  final pulumi.Input<String>? data;
  /// Application specific response metadata. Must be set in the first response for streaming APIs.
  final pulumi.Input<List<Map<String, String>>>? extensions;
  /// File to upload.
  final pulumi.Input<dynamic>? file;
  /// Name of the API proxy. Restrict the characters used to: A-Za-z0-9._-
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;
  /// Ignored. All uploads are validated regardless of the value of this field. Maintained for compatibility with Apigee Edge API.
  final pulumi.Input<bool>? validate;

  /// Creates a new [ApiArgs].
  /// [action] Action to perform when importing an API proxy configuration bundle. Set this parameter to one of the following values: * `import` to import the API proxy configuration bundle. * `validate` to validate the API proxy configuration bundle without importing it.
  /// [contentType] The HTTP Content-Type header value specifying the content type of the body.
  /// [data] The HTTP request/response body as raw binary.
  /// [extensions] Application specific response metadata. Must be set in the first response for streaming APIs.
  /// [file] File to upload.
  /// [name] Name of the API proxy. Restrict the characters used to: A-Za-z0-9._-
  /// [organizationId] Required.
  /// [validate] Ignored. All uploads are validated regardless of the value of this field. Maintained for compatibility with Apigee Edge API.
  ApiArgs({
    pulumi.Output<String>? action,
    pulumi.Output<String>? contentType,
    pulumi.Output<String>? data,
    pulumi.Output<List<Map<String, String>>>? extensions,
    pulumi.Output<dynamic>? file,
    pulumi.Output<String>? name,
    required pulumi.Output<String> organizationId,
    pulumi.Output<bool>? validate,
  }) :
      action = pulumi.Input.asOptionalInput<String>(action),
      contentType = pulumi.Input.asOptionalInput<String>(contentType),
      data = pulumi.Input.asOptionalInput<String>(data),
      extensions = pulumi.Input.asOptionalInput<List<Map<String, String>>>(extensions),
      file = pulumi.Input.asOptionalInput<dynamic>(file),
      name = pulumi.Input.asOptionalInput<String>(name),
      organizationId = pulumi.Input.asInput<String>(organizationId),
      validate = pulumi.Input.asOptionalInput<bool>(validate);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'contentType': ?contentType,
      'data': ?data,
      'extensions': ?extensions,
      'file': ?file,
      'name': ?name,
      'organizationId': organizationId,
      'validate': ?validate,
    };
  }

  factory ApiArgs.fromMap(Map<String, dynamic> map) {
    return ApiArgs(
      action: map['action'] == null ? null : pulumi.Output.create<String>(map['action'] as String),
      contentType: map['contentType'] == null ? null : pulumi.Output.create<String>(map['contentType'] as String),
      data: map['data'] == null ? null : pulumi.Output.create<String>(map['data'] as String),
      extensions: map['extensions'] == null ? null : pulumi.Output.create<List<Map<String, String>>>((map['extensions'] as List).cast<Map<String, String>>()),
      file: map['file'] == null ? null : pulumi.Output.create<dynamic>(map['file']),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
      validate: map['validate'] == null ? null : pulumi.Output.create<bool>(map['validate'] as bool),
    );
  }
}

