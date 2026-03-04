// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appengine_v1_get_authorized_certificate_args_doc}
/// Arguments for getAuthorizedCertificate.
/// {@endtemplate}
/// {@macro pulumi_appengine_v1_get_authorized_certificate_args_doc}
class GetAuthorizedCertificateArgs {
  final pulumi.Input<String> appId;
  final pulumi.Input<String> authorizedCertificateId;
  final pulumi.Input<String>? view;

  /// Creates a new [GetAuthorizedCertificateArgs].
  /// [appId] Required.
  /// [authorizedCertificateId] Required.
  /// [view] Optional.
  GetAuthorizedCertificateArgs({
    required this.appId,
    required this.authorizedCertificateId,
    this.view,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'authorizedCertificateId': authorizedCertificateId,
      'view': ?view,
    };
  }

  factory GetAuthorizedCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetAuthorizedCertificateArgs(
      appId: pulumi.Input.fromValue(map['appId'] as String),
      authorizedCertificateId: pulumi.Input.fromValue(
        map['authorizedCertificateId'] as String,
      ),
      view: (() {
        final guardedValue = map['view'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
