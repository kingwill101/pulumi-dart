// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_authenticated_origin_pulls_certificates_get_authenticated_origin_pulls_certificates_args_doc}
/// Arguments for getAuthenticatedOriginPullsCertificates.
/// {@endtemplate}
/// {@macro pulumi_index_get_authenticated_origin_pulls_certificates_get_authenticated_origin_pulls_certificates_args_doc}
class GetAuthenticatedOriginPullsCertificatesArgs {
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetAuthenticatedOriginPullsCertificatesArgs].
  /// [maxItems] Max items to fetch, default: 1000
  /// [zoneId] Identifier.
  const GetAuthenticatedOriginPullsCertificatesArgs({
    this.maxItems,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxItems': ?maxItems,
      'zoneId': zoneId,
    };
  }

  factory GetAuthenticatedOriginPullsCertificatesArgs.fromMap(Map<String, dynamic> map) {
    return GetAuthenticatedOriginPullsCertificatesArgs(
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
