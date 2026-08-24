// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_origin_ca_certificate_filter.dart';

/// {@template pulumi_index_get_origin_ca_certificate_get_origin_ca_certificate_args_doc}
/// Arguments for getOriginCaCertificate.
/// {@endtemplate}
/// {@macro pulumi_index_get_origin_ca_certificate_get_origin_ca_certificate_args_doc}
class GetOriginCaCertificateArgs {
  /// Identifier.
  final pulumi.Input<String?>? certificateId;
  final pulumi.Input<GetOriginCaCertificateFilter?>? filter;

  /// Creates a new [GetOriginCaCertificateArgs].
  /// [certificateId] Identifier.
  /// [filter] Optional.
  const GetOriginCaCertificateArgs({
    this.certificateId,
    this.filter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateId': ?certificateId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetOriginCaCertificateFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
    };
  }

  factory GetOriginCaCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetOriginCaCertificateArgs(
      certificateId: (() { final guardedValue = map['certificateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetOriginCaCertificateFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
