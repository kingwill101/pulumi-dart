// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServicePrincipalTokenSigningCertificate resources.
class ServicePrincipalTokenSigningCertificateState {
  /// Specifies a friendly name for the certificate. Must start with `CN=`. Changing this field forces a new resource to be created.
  ///
  /// > If not specified, it will default to `CN=Microsoft Azure Federated SSO Certificate`.
  final pulumi.Input<String>? displayName;
  /// The end date until which the token signing certificate is valid, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`). Changing this field forces a new resource to be created.
  final pulumi.Input<String>? endDate;
  /// A UUID used to uniquely identify the verify certificate.
  final pulumi.Input<String>? keyId;
  /// The ID of the service principal for which this certificate should be created. Changing this field forces a new resource to be created.
  final pulumi.Input<String>? servicePrincipalId;
  /// The start date from which the certificate is valid, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`).
  final pulumi.Input<String>? startDate;
  /// A SHA-1 generated thumbprint of the token signing certificate, which can be used to set the preferred signing certificate for a service principal.
  final pulumi.Input<String>? thumbprint;
  /// The certificate data, which is PEM encoded but does not include the header `-----BEGIN CERTIFICATE-----\n` or the footer `\n-----END CERTIFICATE-----`.
  final pulumi.Input<String>? value;

  /// Creates a new [ServicePrincipalTokenSigningCertificateState].
  /// [displayName] Specifies a friendly name for the certificate. Must start with `CN=`. Changing this field forces a new resource to be created.
  /// [endDate] The end date until which the token signing certificate is valid, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`). Changing this field forces a new resource to be created.
  /// [keyId] A UUID used to uniquely identify the verify certificate.
  /// [servicePrincipalId] The ID of the service principal for which this certificate should be created. Changing this field forces a new resource to be created.
  /// [startDate] The start date from which the certificate is valid, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`).
  /// [thumbprint] A SHA-1 generated thumbprint of the token signing certificate, which can be used to set the preferred signing certificate for a service principal.
  /// [value] The certificate data, which is PEM encoded but does not include the header `-----BEGIN CERTIFICATE-----\n` or the footer `\n-----END CERTIFICATE-----`.
  ServicePrincipalTokenSigningCertificateState({
    this.displayName,
    this.endDate,
    this.keyId,
    this.servicePrincipalId,
    this.startDate,
    this.thumbprint,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'endDate': ?endDate,
      'keyId': ?keyId,
      'servicePrincipalId': ?servicePrincipalId,
      'startDate': ?startDate,
      'thumbprint': ?thumbprint,
      'value': ?value,
    };
  }

  factory ServicePrincipalTokenSigningCertificateState.fromMap(Map<String, dynamic> map) {
    return ServicePrincipalTokenSigningCertificateState(
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      endDate: map['endDate'] == null ? null : (map['endDate']! as String).input(),
      keyId: map['keyId'] == null ? null : (map['keyId']! as String).input(),
      servicePrincipalId: map['servicePrincipalId'] == null ? null : (map['servicePrincipalId']! as String).input(),
      startDate: map['startDate'] == null ? null : (map['startDate']! as String).input(),
      thumbprint: map['thumbprint'] == null ? null : (map['thumbprint']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

