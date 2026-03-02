// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_certificate_policy_issuer_parameters.dart';
import 'certificate_certificate_policy_key_properties.dart';
import 'certificate_certificate_policy_lifetime_action.dart';
import 'certificate_certificate_policy_secret_properties.dart';
import 'certificate_certificate_policy_x509_certificate_properties.dart';

class CertificateCertificatePolicy {
  /// A `issuer_parameters` block as defined below.
  final pulumi.Input<CertificateCertificatePolicyIssuerParameters> issuerParameters;
  /// A `key_properties` block as defined below.
  final pulumi.Input<CertificateCertificatePolicyKeyProperties> keyProperties;
  /// A `lifetime_action` block as defined below.
  final pulumi.Input<List<CertificateCertificatePolicyLifetimeAction>>? lifetimeActions;
  /// A `secret_properties` block as defined below.
  final pulumi.Input<CertificateCertificatePolicySecretProperties> secretProperties;
  /// A `x509_certificate_properties` block as defined below. Required when `certificate` block is not specified.
  final pulumi.Input<CertificateCertificatePolicyX509CertificateProperties>? x509CertificateProperties;

  /// Creates a new [CertificateCertificatePolicy].
  /// [issuerParameters] A `issuer_parameters` block as defined below.
  /// [keyProperties] A `key_properties` block as defined below.
  /// [lifetimeActions] A `lifetime_action` block as defined below.
  /// [secretProperties] A `secret_properties` block as defined below.
  /// [x509CertificateProperties] A `x509_certificate_properties` block as defined below. Required when `certificate` block is not specified.
  CertificateCertificatePolicy({
    required this.issuerParameters,
    required this.keyProperties,
    this.lifetimeActions,
    required this.secretProperties,
    this.x509CertificateProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issuerParameters': pulumi.Input.mapInputValue<CertificateCertificatePolicyIssuerParameters, Map<String, dynamic>>(issuerParameters, (value) => value.toMap()),
      'keyProperties': pulumi.Input.mapInputValue<CertificateCertificatePolicyKeyProperties, Map<String, dynamic>>(keyProperties, (value) => value.toMap()),
      'lifetimeActions': ?pulumi.Input.mapOptionalInputValue<List<CertificateCertificatePolicyLifetimeAction>, List<Map<String, dynamic>>>(lifetimeActions, (value) => pulumi.Input.encodeList<CertificateCertificatePolicyLifetimeAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secretProperties': pulumi.Input.mapInputValue<CertificateCertificatePolicySecretProperties, Map<String, dynamic>>(secretProperties, (value) => value.toMap()),
      'x509CertificateProperties': ?pulumi.Input.mapOptionalInputValue<CertificateCertificatePolicyX509CertificateProperties, Map<String, dynamic>>(x509CertificateProperties, (value) => value.toMap()),
    };
  }

  factory CertificateCertificatePolicy.fromMap(Map<String, dynamic> map) {
    return CertificateCertificatePolicy(
      issuerParameters: (CertificateCertificatePolicyIssuerParameters.fromMap((map['issuerParameters'] as Map).cast<String, dynamic>())).input(),
      keyProperties: (CertificateCertificatePolicyKeyProperties.fromMap((map['keyProperties'] as Map).cast<String, dynamic>())).input(),
      lifetimeActions: map['lifetimeActions'] == null ? null : (pulumi.Input.decodeList<CertificateCertificatePolicyLifetimeAction>(map['lifetimeActions']!, (value) => CertificateCertificatePolicyLifetimeAction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      secretProperties: (CertificateCertificatePolicySecretProperties.fromMap((map['secretProperties'] as Map).cast<String, dynamic>())).input(),
      x509CertificateProperties: map['x509CertificateProperties'] == null ? null : (CertificateCertificatePolicyX509CertificateProperties.fromMap((map['x509CertificateProperties']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

