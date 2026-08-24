// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificate_pack_filter.dart';

/// {@template pulumi_index_get_certificate_pack_get_certificate_pack_args_doc}
/// Arguments for getCertificatePack.
/// {@endtemplate}
/// {@macro pulumi_index_get_certificate_pack_get_certificate_pack_args_doc}
class GetCertificatePackArgs {
  /// Identifier.
  final pulumi.Input<String?>? certificatePackId;
  final pulumi.Input<GetCertificatePackFilter?>? filter;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetCertificatePackArgs].
  /// [certificatePackId] Identifier.
  /// [filter] Optional.
  /// [zoneId] Identifier.
  const GetCertificatePackArgs({
    this.certificatePackId,
    this.filter,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificatePackId': ?certificatePackId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetCertificatePackFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'zoneId': ?zoneId,
    };
  }

  factory GetCertificatePackArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificatePackArgs(
      certificatePackId: (() { final guardedValue = map['certificatePackId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetCertificatePackFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
