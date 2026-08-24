// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_keyless_certificates_get_keyless_certificates_args_doc}
/// Arguments for getKeylessCertificates.
/// {@endtemplate}
/// {@macro pulumi_index_get_keyless_certificates_get_keyless_certificates_args_doc}
class GetKeylessCertificatesArgs {
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetKeylessCertificatesArgs].
  /// [maxItems] Max items to fetch, default: 1000
  /// [zoneId] Identifier.
  const GetKeylessCertificatesArgs({
    this.maxItems,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxItems': ?maxItems,
      'zoneId': ?zoneId,
    };
  }

  factory GetKeylessCertificatesArgs.fromMap(Map<String, dynamic> map) {
    return GetKeylessCertificatesArgs(
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
