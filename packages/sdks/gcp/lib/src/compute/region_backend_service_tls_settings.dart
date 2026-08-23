// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_backend_service_tls_settings_subject_alt_name.dart';

class RegionBackendServiceTlsSettings {
  /// Reference to the BackendAuthenticationConfig resource from the networksecurity.googleapis.com namespace.
  /// Can be used in authenticating TLS connections to the backend, as specified by the authenticationMode field.
  /// Can only be specified if authenticationMode is not NONE.
  final pulumi.Input<String>? authenticationConfig;
  /// Server Name Indication - see RFC3546 section 3.1. If set, the load balancer sends this string as the SNI hostname in the
  /// TLS connection to the backend, and requires that this string match a Subject Alternative Name (SAN) in the backend's
  /// server certificate. With a Regional Internet NEG backend, if the SNI is specified here, the load balancer uses it
  /// regardless of whether the Regional Internet NEG is specified with FQDN or IP address and port.
  final pulumi.Input<String>? sni;
  /// A list of Subject Alternative Names (SANs) that the Load Balancer verifies during a TLS handshake with the backend.
  /// When the server presents its X.509 certificate to the Load Balancer, the Load Balancer inspects the certificate's SAN field,
  /// and requires that at least one SAN match one of the subjectAltNames in the list. This field is limited to 5 entries.
  /// When both sni and subjectAltNames are specified, the load balancer matches the backend certificate's SAN only to
  /// subjectAltNames.
  /// Structure is documented below.
  final pulumi.Input<List<RegionBackendServiceTlsSettingsSubjectAltName>>? subjectAltNames;

  /// Creates a new [RegionBackendServiceTlsSettings].
  /// [authenticationConfig] Reference to the BackendAuthenticationConfig resource from the networksecurity.googleapis.com namespace.
  /// [sni] Server Name Indication - see RFC3546 section 3.1. If set, the load balancer sends this string as the SNI hostname in the
  /// [subjectAltNames] A list of Subject Alternative Names (SANs) that the Load Balancer verifies during a TLS handshake with the backend.
  const RegionBackendServiceTlsSettings({
    this.authenticationConfig,
    this.sni,
    this.subjectAltNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationConfig': ?authenticationConfig,
      'sni': ?sni,
      'subjectAltNames': ?pulumi.Input.mapOptionalInputValue<List<RegionBackendServiceTlsSettingsSubjectAltName>, List<Map<String, dynamic>>>(subjectAltNames, (value) => pulumi.Input.encodeList<RegionBackendServiceTlsSettingsSubjectAltName, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RegionBackendServiceTlsSettings.fromMap(Map<String, dynamic> map) {
    return RegionBackendServiceTlsSettings(
      authenticationConfig: (() { final guardedValue = map['authenticationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sni: (() { final guardedValue = map['sni']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subjectAltNames: (() { final guardedValue = map['subjectAltNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegionBackendServiceTlsSettingsSubjectAltName>(guardedValue, (value) => RegionBackendServiceTlsSettingsSubjectAltName.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
