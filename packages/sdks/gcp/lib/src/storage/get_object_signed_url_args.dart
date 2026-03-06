// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_object_signed_url_get_object_signed_url_args_doc}
/// Arguments for getObjectSignedUrl.
/// {@endtemplate}
/// {@macro pulumi_storage_get_object_signed_url_get_object_signed_url_args_doc}
class GetObjectSignedUrlArgs {
  /// The name of the bucket to read the object from
  final pulumi.Input<String> bucket;
  /// The [MD5 digest](https://cloud.google.com/storage/docs/hashes-etags#_MD5) value in Base64.
  /// Typically retrieved from `google_storage_bucket_object.object.md5hash` attribute.
  /// If you provide this in the datasource, the client (e.g. browser, curl) must provide the `Content-MD5` HTTP header with this same value in its request.
  final pulumi.Input<String>? contentMd5;
  /// If you specify this in the datasource, the client must provide the `Content-Type` HTTP header with the same value in its request.
  final pulumi.Input<String>? contentType;
  /// What Google service account credentials json should be used to sign the URL.
  /// This data source checks the following locations for credentials, in order of preference: data source `credentials` attribute, provider `credentials` attribute and finally the GOOGLE_APPLICATION_CREDENTIALS environment variable.
  ///
  /// &gt; **NOTE** the default google credentials configured by `gcloud` sdk or the service account associated with a compute instance cannot be used, because these do not include the private key required to sign the URL. A valid `json` service account credentials key file must be used, as generated via Google cloud console.
  final pulumi.Input<String>? credentials;
  /// For how long shall the signed URL be valid (defaults to 1 hour - i.e. `1h`).
  /// See [here](https://golang.org/pkg/time/#ParseDuration) for info on valid duration formats.
  final pulumi.Input<String>? duration;
  /// As needed. The server checks to make sure that the client provides matching values in requests using the signed URL.
  /// Any header starting with `x-goog-` is accepted but see the [Google Docs](https://cloud.google.com/storage/docs/xml-api/reference-headers) for list of headers that are supported by Google.
  final pulumi.Input<Map<String, String>>? extensionHeaders;
  /// What HTTP Method will the signed URL allow (defaults to `GET`)
  final pulumi.Input<String>? httpMethod;
  /// The full path to the object inside the bucket
  final pulumi.Input<String> path;

  /// Creates a new [GetObjectSignedUrlArgs].
  /// [bucket] The name of the bucket to read the object from
  /// [contentMd5] The [MD5 digest](https://cloud.google.com/storage/docs/hashes-etags#_MD5) value in Base64.
  /// [contentType] If you specify this in the datasource, the client must provide the `Content-Type` HTTP header with the same value in its request.
  /// [credentials] What Google service account credentials json should be used to sign the URL.
  /// [duration] For how long shall the signed URL be valid (defaults to 1 hour - i.e. `1h`).
  /// [extensionHeaders] As needed. The server checks to make sure that the client provides matching values in requests using the signed URL.
  /// [httpMethod] What HTTP Method will the signed URL allow (defaults to `GET`)
  /// [path] The full path to the object inside the bucket
  const GetObjectSignedUrlArgs({
    required this.bucket,
    this.contentMd5,
    this.contentType,
    this.credentials,
    this.duration,
    this.extensionHeaders,
    this.httpMethod,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'contentMd5': ?contentMd5,
      'contentType': ?contentType,
      'credentials': ?credentials,
      'duration': ?duration,
      'extensionHeaders': ?extensionHeaders,
      'httpMethod': ?httpMethod,
      'path': path,
    };
  }

  factory GetObjectSignedUrlArgs.fromMap(Map<String, dynamic> map) {
    return GetObjectSignedUrlArgs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      contentMd5: (() { final guardedValue = map['contentMd5']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      credentials: (() { final guardedValue = map['credentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extensionHeaders: (() { final guardedValue = map['extensionHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      httpMethod: (() { final guardedValue = map['httpMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}

