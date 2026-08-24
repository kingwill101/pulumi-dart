// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_total_tls_get_total_tls_args_doc}
/// Arguments for getTotalTls.
/// {@endtemplate}
/// {@macro pulumi_index_get_total_tls_get_total_tls_args_doc}
class GetTotalTlsArgs {
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetTotalTlsArgs].
  /// [zoneId] Identifier.
  const GetTotalTlsArgs({
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zoneId': ?zoneId,
    };
  }

  factory GetTotalTlsArgs.fromMap(Map<String, dynamic> map) {
    return GetTotalTlsArgs(
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
