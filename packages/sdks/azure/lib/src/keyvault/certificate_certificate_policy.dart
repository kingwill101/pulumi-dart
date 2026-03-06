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
  const CertificateCertificatePolicy({
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
      issuerParameters: pulumi.Input.fromValue(CertificateCertificatePolicyIssuerParameters.fromMap((map['issuerParameters']! as Map).cast<String, dynamic>())),
      keyProperties: pulumi.Input.fromValue(CertificateCertificatePolicyKeyProperties.fromMap((map['keyProperties']! as Map).cast<String, dynamic>())),
      lifetimeActions: (() { final guardedValue = map['lifetimeActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CertificateCertificatePolicyLifetimeAction>(guardedValue, (value) => CertificateCertificatePolicyLifetimeAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      secretProperties: pulumi.Input.fromValue(CertificateCertificatePolicySecretProperties.fromMap((map['secretProperties']! as Map).cast<String, dynamic>())),
      x509CertificateProperties: (() { final guardedValue = map['x509CertificateProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CertificateCertificatePolicyX509CertificateProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

