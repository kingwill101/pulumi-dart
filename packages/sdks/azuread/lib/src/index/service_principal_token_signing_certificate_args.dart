// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_service_principal_token_signing_certificate_service_principal_token_signing_certificate_args_doc}
/// The set of arguments for ServicePrincipalTokenSigningCertificate.
/// {@endtemplate}
/// {@macro pulumi_index_service_principal_token_signing_certificate_service_principal_token_signing_certificate_args_doc}
class ServicePrincipalTokenSigningCertificateArgs {
  /// Specifies a friendly name for the certificate. Must start with `CN=`. Changing this field forces a new resource to be created.
  ///
  /// &gt; If not specified, it will default to `CN=Microsoft Azure Federated SSO Certificate`.
  final pulumi.Input<String>? displayName;

  /// The end date until which the token signing certificate is valid, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`). Changing this field forces a new resource to be created.
  final pulumi.Input<String>? endDate;

  /// The ID of the service principal for which this certificate should be created. Changing this field forces a new resource to be created.
  final pulumi.Input<String> servicePrincipalId;

  /// Creates a new [ServicePrincipalTokenSigningCertificateArgs].
  /// [displayName] Specifies a friendly name for the certificate. Must start with `CN=`. Changing this field forces a new resource to be created.
  /// [endDate] The end date until which the token signing certificate is valid, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`). Changing this field forces a new resource to be created.
  /// [servicePrincipalId] The ID of the service principal for which this certificate should be created. Changing this field forces a new resource to be created.
  ServicePrincipalTokenSigningCertificateArgs({
    this.displayName,
    this.endDate,
    required this.servicePrincipalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'endDate': ?endDate,
      'servicePrincipalId': servicePrincipalId,
    };
  }

  factory ServicePrincipalTokenSigningCertificateArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServicePrincipalTokenSigningCertificateArgs(
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endDate: (() {
        final guardedValue = map['endDate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      servicePrincipalId: pulumi.Input.fromValue(
        map['servicePrincipalId'] as String,
      ),
    );
  }
}
