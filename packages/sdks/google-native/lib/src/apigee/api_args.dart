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
    this.action,
    this.contentType,
    this.data,
    this.extensions,
    this.file,
    this.name,
    required this.organizationId,
    this.validate,
  });

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
      action: (() {
        final guardedValue = map['action'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
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
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      validate: (() {
        final guardedValue = map['validate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
