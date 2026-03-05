// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allowed_key_type.dart';
import 'certificate_extension_constraints.dart';
import 'certificate_identity_constraints.dart';
import 'issuance_modes.dart';
import 'x509_parameters.dart';

/// Defines controls over all certificate issuance within a CaPool.
class IssuancePolicy {
  /// Optional. If specified, then only methods allowed in the IssuanceModes may be used to issue Certificates.
  final pulumi.Input<IssuanceModes>? allowedIssuanceModes;
  /// Optional. If any AllowedKeyType is specified, then the certificate request's public key must match one of the key types listed here. Otherwise, any key may be used.
  final pulumi.Input<List<AllowedKeyType>>? allowedKeyTypes;
  /// Optional. A set of X.509 values that will be applied to all certificates issued through this CaPool. If a certificate request includes conflicting values for the same properties, they will be overwritten by the values defined here. If a certificate request uses a CertificateTemplate that defines conflicting predefined_values for the same properties, the certificate issuance request will fail.
  final pulumi.Input<X509Parameters>? baselineValues;
  /// Optional. Describes constraints on identities that may appear in Certificates issued through this CaPool. If this is omitted, then this CaPool will not add restrictions on a certificate's identity.
  final pulumi.Input<CertificateIdentityConstraints>? identityConstraints;
  /// Optional. The maximum lifetime allowed for issued Certificates. Note that if the issuing CertificateAuthority expires before a Certificate's requested maximum_lifetime, the effective lifetime will be explicitly truncated to match it.
  final pulumi.Input<String>? maximumLifetime;
  /// Optional. Describes the set of X.509 extensions that may appear in a Certificate issued through this CaPool. If a certificate request sets extensions that don't appear in the passthrough_extensions, those extensions will be dropped. If a certificate request uses a CertificateTemplate with predefined_values that don't appear here, the certificate issuance request will fail. If this is omitted, then this CaPool will not add restrictions on a certificate's X.509 extensions. These constraints do not apply to X.509 extensions set in this CaPool's baseline_values.
  final pulumi.Input<CertificateExtensionConstraints>? passthroughExtensions;

  /// Creates a new [IssuancePolicy].
  /// [allowedIssuanceModes] Optional. If specified, then only methods allowed in the IssuanceModes may be used to issue Certificates.
  /// [allowedKeyTypes] Optional. If any AllowedKeyType is specified, then the certificate request's public key must match one of the key types listed here. Otherwise, any key may be used.
  /// [baselineValues] Optional. A set of X.509 values that will be applied to all certificates issued through this CaPool. If a certificate request includes conflicting values for the same properties, they will be overwritten by the values defined here. If a certificate request uses a CertificateTemplate that defines conflicting predefined_values for the same properties, the certificate issuance request will fail.
  /// [identityConstraints] Optional. Describes constraints on identities that may appear in Certificates issued through this CaPool. If this is omitted, then this CaPool will not add restrictions on a certificate's identity.
  /// [maximumLifetime] Optional. The maximum lifetime allowed for issued Certificates. Note that if the issuing CertificateAuthority expires before a Certificate's requested maximum_lifetime, the effective lifetime will be explicitly truncated to match it.
  /// [passthroughExtensions] Optional. Describes the set of X.509 extensions that may appear in a Certificate issued through this CaPool. If a certificate request sets extensions that don't appear in the passthrough_extensions, those extensions will be dropped. If a certificate request uses a CertificateTemplate with predefined_values that don't appear here, the certificate issuance request will fail. If this is omitted, then this CaPool will not add restrictions on a certificate's X.509 extensions. These constraints do not apply to X.509 extensions set in this CaPool's baseline_values.
  IssuancePolicy({
    this.allowedIssuanceModes,
    this.allowedKeyTypes,
    this.baselineValues,
    this.identityConstraints,
    this.maximumLifetime,
    this.passthroughExtensions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedIssuanceModes': ?pulumi.Input.mapOptionalInputValue<IssuanceModes, Map<String, dynamic>>(allowedIssuanceModes, (value) => value.toMap()),
      'allowedKeyTypes': ?pulumi.Input.mapOptionalInputValue<List<AllowedKeyType>, List<Map<String, dynamic>>>(allowedKeyTypes, (value) => pulumi.Input.encodeList<AllowedKeyType, Map<String, dynamic>>(value, (value) => value.toMap())),
      'baselineValues': ?pulumi.Input.mapOptionalInputValue<X509Parameters, Map<String, dynamic>>(baselineValues, (value) => value.toMap()),
      'identityConstraints': ?pulumi.Input.mapOptionalInputValue<CertificateIdentityConstraints, Map<String, dynamic>>(identityConstraints, (value) => value.toMap()),
      'maximumLifetime': ?maximumLifetime,
      'passthroughExtensions': ?pulumi.Input.mapOptionalInputValue<CertificateExtensionConstraints, Map<String, dynamic>>(passthroughExtensions, (value) => value.toMap()),
    };
  }

  factory IssuancePolicy.fromMap(Map<String, dynamic> map) {
    return IssuancePolicy(
      allowedIssuanceModes: (() { final guardedValue = map['allowedIssuanceModes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IssuanceModes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      allowedKeyTypes: (() { final guardedValue = map['allowedKeyTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AllowedKeyType>(guardedValue, (value) => AllowedKeyType.fromMap((value as Map).cast<String, dynamic>()))); })(),
      baselineValues: (() { final guardedValue = map['baselineValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(X509Parameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identityConstraints: (() { final guardedValue = map['identityConstraints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CertificateIdentityConstraints.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maximumLifetime: (() { final guardedValue = map['maximumLifetime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passthroughExtensions: (() { final guardedValue = map['passthroughExtensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CertificateExtensionConstraints.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

