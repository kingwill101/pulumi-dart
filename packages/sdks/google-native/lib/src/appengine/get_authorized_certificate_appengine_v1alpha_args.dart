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
    required pulumi.Output<String> appId,
    required pulumi.Output<String> authorizedCertificateId,
    pulumi.Output<String>? view,
  }) :
      appId = pulumi.Input.asInput<String>(appId),
      authorizedCertificateId = pulumi.Input.asInput<String>(authorizedCertificateId),
      view = pulumi.Input.asOptionalInput<String>(view);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'authorizedCertificateId': authorizedCertificateId,
      'view': ?view,
    };
  }

  factory GetAuthorizedCertificateAppengineV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return GetAuthorizedCertificateAppengineV1alphaArgs(
      appId: pulumi.Output.create<String>(map['appId'] as String),
      authorizedCertificateId: pulumi.Output.create<String>(map['authorizedCertificateId'] as String),
      view: map['view'] == null ? null : pulumi.Output.create<String>(map['view'] as String),
    );
  }
}

