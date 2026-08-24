// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTotalTls.
class GetTotalTlsResult {
  /// The Certificate Authority that Total TLS certificates will be issued through.
  /// Available values: "google", "lets*encrypt", "ssl*com".
  final String? certificateAuthority;
  /// If enabled, Total TLS will order a hostname specific TLS certificate for any proxied A, AAAA, or CNAME record in your zone.
  final bool? enabled;
  /// Identifier.
  final String? id;
  /// The validity period in days for the certificates ordered via Total TLS.
  /// Available values: 90.
  final int? validityPeriod;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetTotalTlsResult].
  /// [certificateAuthority] The Certificate Authority that Total TLS certificates will be issued through.
  /// [enabled] If enabled, Total TLS will order a hostname specific TLS certificate for any proxied A, AAAA, or CNAME record in your zone.
  /// [id] Identifier.
  /// [validityPeriod] The validity period in days for the certificates ordered via Total TLS.
  /// [zoneId] Identifier.
  const GetTotalTlsResult({
    this.certificateAuthority,
    this.enabled,
    this.id,
    this.validityPeriod,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthority': ?certificateAuthority,
      'enabled': ?enabled,
      'id': ?id,
      'validityPeriod': ?validityPeriod,
      'zoneId': ?zoneId,
    };
  }

  factory GetTotalTlsResult.fromMap(Map<String, dynamic> map) {
    return GetTotalTlsResult(
      certificateAuthority: (() { final guardedValue = map['certificateAuthority']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      validityPeriod: (() { final guardedValue = map['validityPeriod']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
