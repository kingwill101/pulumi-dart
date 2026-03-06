// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_alias_args_doc}
/// The set of arguments for Alias.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_alias_args_doc}
class AliasArgs {
  /// Alias for the key/certificate pair. Values must match the regular expression `[\w\s-.]{1,255}`. This must be provided for all formats except `selfsignedcert`; self-signed certs may specify the alias in either this parameter or the JSON body.
  final pulumi.Input<String>? alias;
  /// The HTTP Content-Type header value specifying the content type of the body.
  final pulumi.Input<String>? contentType;
  /// The HTTP request/response body as raw binary.
  final pulumi.Input<String>? data;
  final pulumi.Input<String> environmentId;
  /// Application specific response metadata. Must be set in the first response for streaming APIs.
  final pulumi.Input<List<Map<String, String>>>? extensions;
  /// File to upload.
  final pulumi.Input<dynamic>? file;
  /// Required. Format of the data. Valid values include: `selfsignedcert`, `keycertfile`, or `pkcs12`
  final pulumi.Input<String> format;
  /// Flag that specifies whether to ignore expiry validation. If set to `true`, no expiry validation will be performed.
  final pulumi.Input<bool>? ignoreExpiryValidation;
  /// Flag that specifies whether to ignore newline validation. If set to `true`, no error is thrown when the file contains a certificate chain with no newline between each certificate. Defaults to `false`.
  final pulumi.Input<bool>? ignoreNewlineValidation;
  final pulumi.Input<String> keystoreId;
  final pulumi.Input<String> organizationId;
  /// DEPRECATED: For improved security, specify the password in the request body instead of using the query parameter. To specify the password in the request body, set `Content-type: multipart/form-data` part with name `password`. Password for the private key file, if required.
  final pulumi.Input<String>? password;

  /// Creates a new [AliasArgs].
  /// [alias] Alias for the key/certificate pair. Values must match the regular expression `[\w\s-.]{1,255}`. This must be provided for all formats except `selfsignedcert`; self-signed certs may specify the alias in either this parameter or the JSON body.
  /// [contentType] The HTTP Content-Type header value specifying the content type of the body.
  /// [data] The HTTP request/response body as raw binary.
  /// [environmentId] Required.
  /// [extensions] Application specific response metadata. Must be set in the first response for streaming APIs.
  /// [file] File to upload.
  /// [format] Required. Format of the data. Valid values include: `selfsignedcert`, `keycertfile`, or `pkcs12`
  /// [ignoreExpiryValidation] Flag that specifies whether to ignore expiry validation. If set to `true`, no expiry validation will be performed.
  /// [ignoreNewlineValidation] Flag that specifies whether to ignore newline validation. If set to `true`, no error is thrown when the file contains a certificate chain with no newline between each certificate. Defaults to `false`.
  /// [keystoreId] Required.
  /// [organizationId] Required.
  /// [password] DEPRECATED: For improved security, specify the password in the request body instead of using the query parameter. To specify the password in the request body, set `Content-type: multipart/form-data` part with name `password`. Password for the private key file, if required.
  const AliasArgs({
    this.alias,
    this.contentType,
    this.data,
    required this.environmentId,
    this.extensions,
    this.file,
    required this.format,
    this.ignoreExpiryValidation,
    this.ignoreNewlineValidation,
    required this.keystoreId,
    required this.organizationId,
    this.password,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': ?alias,
      'contentType': ?contentType,
      'data': ?data,
      'environmentId': environmentId,
      'extensions': ?extensions,
      'file': ?file,
      'format': format,
      'ignoreExpiryValidation': ?ignoreExpiryValidation,
      'ignoreNewlineValidation': ?ignoreNewlineValidation,
      'keystoreId': keystoreId,
      'organizationId': organizationId,
      'password': ?password,
    };
  }

  factory AliasArgs.fromMap(Map<String, dynamic> map) {
    return AliasArgs(
      alias: (() { final guardedValue = map['alias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      data: (() { final guardedValue = map['data']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      extensions: (() { final guardedValue = map['extensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<Map<String, String>>()); })(),
      file: (() { final guardedValue = map['file']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      format: pulumi.Input.fromValue(map['format'] as String),
      ignoreExpiryValidation: (() { final guardedValue = map['ignoreExpiryValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ignoreNewlineValidation: (() { final guardedValue = map['ignoreNewlineValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      keystoreId: pulumi.Input.fromValue(map['keystoreId'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

