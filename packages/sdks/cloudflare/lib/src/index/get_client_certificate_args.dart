// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_client_certificate_filter.dart';

/// {@template pulumi_index_get_client_certificate_get_client_certificate_args_doc}
/// Arguments for getClientCertificate.
/// {@endtemplate}
/// {@macro pulumi_index_get_client_certificate_get_client_certificate_args_doc}
class GetClientCertificateArgs {
  /// Identifier.
  final pulumi.Input<String?>? clientCertificateId;
  final pulumi.Input<GetClientCertificateFilter?>? filter;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetClientCertificateArgs].
  /// [clientCertificateId] Identifier.
  /// [filter] Optional.
  /// [zoneId] Identifier.
  const GetClientCertificateArgs({
    this.clientCertificateId,
    this.filter,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientCertificateId': ?clientCertificateId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetClientCertificateFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'zoneId': ?zoneId,
    };
  }

  factory GetClientCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetClientCertificateArgs(
      clientCertificateId: (() { final guardedValue = map['clientCertificateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetClientCertificateFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
