// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_custom_ssl_filter.dart';

/// {@template pulumi_index_get_custom_ssl_get_custom_ssl_args_doc}
/// Arguments for getCustomSsl.
/// {@endtemplate}
/// {@macro pulumi_index_get_custom_ssl_get_custom_ssl_args_doc}
class GetCustomSslArgs {
  /// Identifier.
  final pulumi.Input<String?>? customCertificateId;
  final pulumi.Input<GetCustomSslFilter?>? filter;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetCustomSslArgs].
  /// [customCertificateId] Identifier.
  /// [filter] Optional.
  /// [zoneId] Identifier.
  const GetCustomSslArgs({
    this.customCertificateId,
    this.filter,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customCertificateId': ?customCertificateId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetCustomSslFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'zoneId': ?zoneId,
    };
  }

  factory GetCustomSslArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomSslArgs(
      customCertificateId: (() { final guardedValue = map['customCertificateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetCustomSslFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
