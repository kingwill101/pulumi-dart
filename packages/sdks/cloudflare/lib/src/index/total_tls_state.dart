// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TotalTls resources.
class TotalTlsState {
  /// The Certificate Authority that Total TLS certificates will be issued through.
  /// Available values: "google", "lets*encrypt", "ssl*com".
  final pulumi.Input<String?>? certificateAuthority;
  /// If enabled, Total TLS will order a hostname specific TLS certificate for any proxied A, AAAA, or CNAME record in your zone.
  final pulumi.Input<bool?>? enabled;
  /// The validity period in days for the certificates ordered via Total TLS.
  /// Available values: 90.
  final pulumi.Input<int?>? validityPeriod;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [TotalTlsState].
  /// [certificateAuthority] The Certificate Authority that Total TLS certificates will be issued through.
  /// [enabled] If enabled, Total TLS will order a hostname specific TLS certificate for any proxied A, AAAA, or CNAME record in your zone.
  /// [validityPeriod] The validity period in days for the certificates ordered via Total TLS.
  /// [zoneId] Identifier.
  const TotalTlsState({
    this.certificateAuthority,
    this.enabled,
    this.validityPeriod,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthority': ?certificateAuthority,
      'enabled': ?enabled,
      'validityPeriod': ?validityPeriod,
      'zoneId': ?zoneId,
    };
  }

  factory TotalTlsState.fromMap(Map<String, dynamic> map) {
    return TotalTlsState(
      certificateAuthority: (() { final guardedValue = map['certificateAuthority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      validityPeriod: (() { final guardedValue = map['validityPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
