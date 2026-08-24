// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_authenticated_origin_pulls_certificate_get_authenticated_origin_pulls_certificate_args_doc}
/// Arguments for getAuthenticatedOriginPullsCertificate.
/// {@endtemplate}
/// {@macro pulumi_index_get_authenticated_origin_pulls_certificate_get_authenticated_origin_pulls_certificate_args_doc}
class GetAuthenticatedOriginPullsCertificateArgs {
  /// Identifier.
  final pulumi.Input<String> certificateId;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetAuthenticatedOriginPullsCertificateArgs].
  /// [certificateId] Identifier.
  /// [zoneId] Identifier.
  const GetAuthenticatedOriginPullsCertificateArgs({
    required this.certificateId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateId': certificateId,
      'zoneId': zoneId,
    };
  }

  factory GetAuthenticatedOriginPullsCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetAuthenticatedOriginPullsCertificateArgs(
      certificateId: pulumi.Input.fromValue(map['certificateId'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
