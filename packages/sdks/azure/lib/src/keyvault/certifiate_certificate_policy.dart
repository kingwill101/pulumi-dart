// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certifiate_certificate_policy_issuer_parameters.dart';
import 'certifiate_certificate_policy_key_properties.dart';
import 'certifiate_certificate_policy_lifetime_action.dart';
import 'certifiate_certificate_policy_secret_properties.dart';
import 'certifiate_certificate_policy_x509_certificate_properties.dart';

class CertifiateCertificatePolicy {
  /// A `issuer_parameters` block as defined below.
  final pulumi.Input<CertifiateCertificatePolicyIssuerParameters> issuerParameters;
  /// A `key_properties` block as defined below.
  final pulumi.Input<CertifiateCertificatePolicyKeyProperties> keyProperties;
  /// A `lifetime_action` block as defined below.
  final pulumi.Input<List<CertifiateCertificatePolicyLifetimeAction>>? lifetimeActions;
  /// A `secret_properties` block as defined below.
  final pulumi.Input<CertifiateCertificatePolicySecretProperties> secretProperties;
  /// A `x509_certificate_properties` block as defined below. Required when `certificate` block is not specified.
  final pulumi.Input<CertifiateCertificatePolicyX509CertificateProperties>? x509CertificateProperties;

  /// Creates a new [CertifiateCertificatePolicy].
  /// [issuerParameters] A `issuer_parameters` block as defined below.
  /// [keyProperties] A `key_properties` block as defined below.
  /// [lifetimeActions] A `lifetime_action` block as defined below.
  /// [secretProperties] A `secret_properties` block as defined below.
  /// [x509CertificateProperties] A `x509_certificate_properties` block as defined below. Required when `certificate` block is not specified.
  const CertifiateCertificatePolicy({
    required this.issuerParameters,
    required this.keyProperties,
    this.lifetimeActions,
    required this.secretProperties,
    this.x509CertificateProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issuerParameters': pulumi.Input.mapInputValue<CertifiateCertificatePolicyIssuerParameters, Map<String, dynamic>>(issuerParameters, (value) => value.toMap()),
      'keyProperties': pulumi.Input.mapInputValue<CertifiateCertificatePolicyKeyProperties, Map<String, dynamic>>(keyProperties, (value) => value.toMap()),
      'lifetimeActions': ?pulumi.Input.mapOptionalInputValue<List<CertifiateCertificatePolicyLifetimeAction>, List<Map<String, dynamic>>>(lifetimeActions, (value) => pulumi.Input.encodeList<CertifiateCertificatePolicyLifetimeAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secretProperties': pulumi.Input.mapInputValue<CertifiateCertificatePolicySecretProperties, Map<String, dynamic>>(secretProperties, (value) => value.toMap()),
      'x509CertificateProperties': ?pulumi.Input.mapOptionalInputValue<CertifiateCertificatePolicyX509CertificateProperties, Map<String, dynamic>>(x509CertificateProperties, (value) => value.toMap()),
    };
  }

  factory CertifiateCertificatePolicy.fromMap(Map<String, dynamic> map) {
    return CertifiateCertificatePolicy(
      issuerParameters: pulumi.Input.fromValue(CertifiateCertificatePolicyIssuerParameters.fromMap((map['issuerParameters']! as Map).cast<String, dynamic>())),
      keyProperties: pulumi.Input.fromValue(CertifiateCertificatePolicyKeyProperties.fromMap((map['keyProperties']! as Map).cast<String, dynamic>())),
      lifetimeActions: (() { final guardedValue = map['lifetimeActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CertifiateCertificatePolicyLifetimeAction>(guardedValue, (value) => CertifiateCertificatePolicyLifetimeAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      secretProperties: pulumi.Input.fromValue(CertifiateCertificatePolicySecretProperties.fromMap((map['secretProperties']! as Map).cast<String, dynamic>())),
      x509CertificateProperties: (() { final guardedValue = map['x509CertificateProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CertifiateCertificatePolicyX509CertificateProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

