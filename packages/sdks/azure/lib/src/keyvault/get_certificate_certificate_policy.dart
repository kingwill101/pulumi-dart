// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificate_certificate_policy_issuer_parameter.dart';
import 'get_certificate_certificate_policy_key_property.dart';
import 'get_certificate_certificate_policy_lifetime_action.dart';
import 'get_certificate_certificate_policy_secret_property.dart';
import 'get_certificate_certificate_policy_x509_certificate_property.dart';

class GetCertificateCertificatePolicy {
  /// A `issuer_parameters` block as defined below.
  final List<GetCertificateCertificatePolicyIssuerParameter> issuerParameters;
  /// A `key_properties` block as defined below.
  final List<GetCertificateCertificatePolicyKeyProperty> keyProperties;
  /// A `lifetime_action` block as defined below.
  final List<GetCertificateCertificatePolicyLifetimeAction> lifetimeActions;
  /// A `secret_properties` block as defined below.
  final List<GetCertificateCertificatePolicySecretProperty> secretProperties;
  /// An `x509_certificate_properties` block as defined below.
  final List<GetCertificateCertificatePolicyX509CertificateProperty> x509CertificateProperties;

  /// Creates a new [GetCertificateCertificatePolicy].
  /// [issuerParameters] A `issuer_parameters` block as defined below.
  /// [keyProperties] A `key_properties` block as defined below.
  /// [lifetimeActions] A `lifetime_action` block as defined below.
  /// [secretProperties] A `secret_properties` block as defined below.
  /// [x509CertificateProperties] An `x509_certificate_properties` block as defined below.
  GetCertificateCertificatePolicy({
    required this.issuerParameters,
    required this.keyProperties,
    required this.lifetimeActions,
    required this.secretProperties,
    required this.x509CertificateProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issuerParameters': pulumi.Input.encodeList<GetCertificateCertificatePolicyIssuerParameter, Map<String, dynamic>>(issuerParameters, (value) => value.toMap()),
      'keyProperties': pulumi.Input.encodeList<GetCertificateCertificatePolicyKeyProperty, Map<String, dynamic>>(keyProperties, (value) => value.toMap()),
      'lifetimeActions': pulumi.Input.encodeList<GetCertificateCertificatePolicyLifetimeAction, Map<String, dynamic>>(lifetimeActions, (value) => value.toMap()),
      'secretProperties': pulumi.Input.encodeList<GetCertificateCertificatePolicySecretProperty, Map<String, dynamic>>(secretProperties, (value) => value.toMap()),
      'x509CertificateProperties': pulumi.Input.encodeList<GetCertificateCertificatePolicyX509CertificateProperty, Map<String, dynamic>>(x509CertificateProperties, (value) => value.toMap()),
    };
  }

  factory GetCertificateCertificatePolicy.fromMap(Map<String, dynamic> map) {
    return GetCertificateCertificatePolicy(
      issuerParameters: pulumi.Input.decodeList<GetCertificateCertificatePolicyIssuerParameter>(map['issuerParameters'], (value) => GetCertificateCertificatePolicyIssuerParameter.fromMap((value as Map).cast<String, dynamic>())),
      keyProperties: pulumi.Input.decodeList<GetCertificateCertificatePolicyKeyProperty>(map['keyProperties'], (value) => GetCertificateCertificatePolicyKeyProperty.fromMap((value as Map).cast<String, dynamic>())),
      lifetimeActions: pulumi.Input.decodeList<GetCertificateCertificatePolicyLifetimeAction>(map['lifetimeActions'], (value) => GetCertificateCertificatePolicyLifetimeAction.fromMap((value as Map).cast<String, dynamic>())),
      secretProperties: pulumi.Input.decodeList<GetCertificateCertificatePolicySecretProperty>(map['secretProperties'], (value) => GetCertificateCertificatePolicySecretProperty.fromMap((value as Map).cast<String, dynamic>())),
      x509CertificateProperties: pulumi.Input.decodeList<GetCertificateCertificatePolicyX509CertificateProperty>(map['x509CertificateProperties'], (value) => GetCertificateCertificatePolicyX509CertificateProperty.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

