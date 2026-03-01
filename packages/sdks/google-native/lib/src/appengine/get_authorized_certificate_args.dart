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

  factory GetAuthorizedCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetAuthorizedCertificateArgs(
      appId: pulumi.Output.create<String>(map['appId'] as String),
      authorizedCertificateId: pulumi.Output.create<String>(map['authorizedCertificateId'] as String),
      view: map['view'] == null ? null : pulumi.Output.create<String>(map['view'] as String),
    );
  }
}

