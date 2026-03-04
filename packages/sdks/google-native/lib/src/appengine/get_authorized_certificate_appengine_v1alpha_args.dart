// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appengine_v1alpha_get_authorized_certificate_appengine_v1alpha_args_doc}
/// Arguments for getAuthorizedCertificate.
/// {@endtemplate}
/// {@macro pulumi_appengine_v1alpha_get_authorized_certificate_appengine_v1alpha_args_doc}
class GetAuthorizedCertificateAppengineV1alphaArgs {
  final pulumi.Input<String> appId;
  final pulumi.Input<String> authorizedCertificateId;
  final pulumi.Input<String>? view;

  /// Creates a new [GetAuthorizedCertificateAppengineV1alphaArgs].
  /// [appId] Required.
  /// [authorizedCertificateId] Required.
  /// [view] Optional.
  GetAuthorizedCertificateAppengineV1alphaArgs({
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

  factory GetAuthorizedCertificateAppengineV1alphaArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetAuthorizedCertificateAppengineV1alphaArgs(
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
