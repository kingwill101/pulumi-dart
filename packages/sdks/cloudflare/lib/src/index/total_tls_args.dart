// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_total_tls_total_tls_args_doc}
/// The set of arguments for TotalTls.
/// {@endtemplate}
/// {@macro pulumi_index_total_tls_total_tls_args_doc}
class TotalTlsArgs {
  /// The Certificate Authority that Total TLS certificates will be issued through.
  /// Available values: "google", "lets*encrypt", "ssl*com".
  final pulumi.Input<String?>? certificateAuthority;
  /// If enabled, Total TLS will order a hostname specific TLS certificate for any proxied A, AAAA, or CNAME record in your zone.
  final pulumi.Input<bool> enabled;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [TotalTlsArgs].
  /// [certificateAuthority] The Certificate Authority that Total TLS certificates will be issued through.
  /// [enabled] If enabled, Total TLS will order a hostname specific TLS certificate for any proxied A, AAAA, or CNAME record in your zone.
  /// [zoneId] Identifier.
  const TotalTlsArgs({
    this.certificateAuthority,
    required this.enabled,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthority': ?certificateAuthority,
      'enabled': enabled,
      'zoneId': zoneId,
    };
  }

  factory TotalTlsArgs.fromMap(Map<String, dynamic> map) {
    return TotalTlsArgs(
      certificateAuthority: (() { final guardedValue = map['certificateAuthority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
