// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_hostname_ssl_custom_cert_bundle.dart';
import 'custom_hostname_ssl_settings.dart';

class CustomHostnameSsl {
  /// A ubiquitous bundle has the highest probability of being verified everywhere, even by clients using outdated or unusual trust stores. An optimal bundle uses the shortest chain and newest intermediates. And the force bundle verifies the chain, but does not otherwise modify it.
  /// Available values: "ubiquitous", "optimal", "force".
  final pulumi.Input<String?>? bundleMethod;
  /// The Certificate Authority that will issue the certificate.
  /// Available values: "digicert", "google", "lets*encrypt", "ssl*com".
  final pulumi.Input<String?>? certificateAuthority;
  /// Whether or not to add Cloudflare Branding for the order.  This will add a subdomain of sni.cloudflaressl.com as the Common Name if set to true.
  final pulumi.Input<bool?>? cloudflareBranding;
  /// Array of custom certificate and key pairs (1 or 2 pairs allowed).
  final pulumi.Input<List<CustomHostnameSslCustomCertBundle>?>? customCertBundles;
  /// If a custom uploaded certificate is used.
  final pulumi.Input<String?>? customCertificate;
  /// The identifier for the Custom CSR that was used.
  final pulumi.Input<String?>? customCsrId;
  /// The key for a custom uploaded certificate.
  final pulumi.Input<String?>? customKey;
  /// Domain control validation (DCV) method used for this hostname.
  /// Available values: "http", "txt", "email".
  final pulumi.Input<String?>? method;
  /// SSL specific settings.
  final pulumi.Input<CustomHostnameSslSettings?>? settings;
  /// Level of validation to be used for this hostname. Domain validation (dv) must be used.
  /// Available values: "dv".
  final pulumi.Input<String?>? type;
  /// Indicates whether the certificate covers a wildcard.
  final pulumi.Input<bool?>? wildcard;

  /// Creates a new [CustomHostnameSsl].
  /// [bundleMethod] A ubiquitous bundle has the highest probability of being verified everywhere, even by clients using outdated or unusual trust stores. An optimal bundle uses the shortest chain and newest intermediates. And the force bundle verifies the chain, but does not otherwise modify it.
  /// [certificateAuthority] The Certificate Authority that will issue the certificate.
  /// [cloudflareBranding] Whether or not to add Cloudflare Branding for the order.  This will add a subdomain of sni.cloudflaressl.com as the Common Name if set to true.
  /// [customCertBundles] Array of custom certificate and key pairs (1 or 2 pairs allowed).
  /// [customCertificate] If a custom uploaded certificate is used.
  /// [customCsrId] The identifier for the Custom CSR that was used.
  /// [customKey] The key for a custom uploaded certificate.
  /// [method] Domain control validation (DCV) method used for this hostname.
  /// [settings] SSL specific settings.
  /// [type] Level of validation to be used for this hostname. Domain validation (dv) must be used.
  /// [wildcard] Indicates whether the certificate covers a wildcard.
  const CustomHostnameSsl({
    this.bundleMethod,
    this.certificateAuthority,
    this.cloudflareBranding,
    this.customCertBundles,
    this.customCertificate,
    this.customCsrId,
    this.customKey,
    this.method,
    this.settings,
    this.type,
    this.wildcard,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundleMethod': ?bundleMethod,
      'certificateAuthority': ?certificateAuthority,
      'cloudflareBranding': ?cloudflareBranding,
      'customCertBundles': ?pulumi.Input.mapOptionalInputValue<List<CustomHostnameSslCustomCertBundle>, List<Map<String, dynamic>>>(customCertBundles, (value) => pulumi.Input.encodeList<CustomHostnameSslCustomCertBundle, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customCertificate': ?customCertificate,
      'customCsrId': ?customCsrId,
      'customKey': ?customKey,
      'method': ?method,
      'settings': ?pulumi.Input.mapOptionalInputValue<CustomHostnameSslSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
      'type': ?type,
      'wildcard': ?wildcard,
    };
  }

  factory CustomHostnameSsl.fromMap(Map<String, dynamic> map) {
    return CustomHostnameSsl(
      bundleMethod: (() { final guardedValue = map['bundleMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateAuthority: (() { final guardedValue = map['certificateAuthority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cloudflareBranding: (() { final guardedValue = map['cloudflareBranding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      customCertBundles: (() { final guardedValue = map['customCertBundles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CustomHostnameSslCustomCertBundle>(guardedValue, (value) => CustomHostnameSslCustomCertBundle.fromMap((value as Map).cast<String, dynamic>()))); })(),
      customCertificate: (() { final guardedValue = map['customCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customCsrId: (() { final guardedValue = map['customCsrId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customKey: (() { final guardedValue = map['customKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      method: (() { final guardedValue = map['method']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomHostnameSslSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      wildcard: (() { final guardedValue = map['wildcard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
