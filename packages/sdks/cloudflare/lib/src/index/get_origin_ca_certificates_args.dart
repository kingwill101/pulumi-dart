// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_origin_ca_certificates_get_origin_ca_certificates_args_doc}
/// Arguments for getOriginCaCertificates.
/// {@endtemplate}
/// {@macro pulumi_index_get_origin_ca_certificates_get_origin_ca_certificates_args_doc}
class GetOriginCaCertificatesArgs {
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetOriginCaCertificatesArgs].
  /// [maxItems] Max items to fetch, default: 1000
  /// [zoneId] Identifier.
  const GetOriginCaCertificatesArgs({
    this.maxItems,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxItems': ?maxItems,
      'zoneId': zoneId,
    };
  }

  factory GetOriginCaCertificatesArgs.fromMap(Map<String, dynamic> map) {
    return GetOriginCaCertificatesArgs(
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
