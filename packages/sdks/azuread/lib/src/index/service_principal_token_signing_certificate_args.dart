// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_service_principal_token_signing_certificate_service_principal_token_signing_certificate_args_doc}
/// The set of arguments for ServicePrincipalTokenSigningCertificate.
/// {@endtemplate}
/// {@macro pulumi_index_service_principal_token_signing_certificate_service_principal_token_signing_certificate_args_doc}
class ServicePrincipalTokenSigningCertificateArgs {
  /// Specifies a friendly name for the certificate. Must start with `CN=`. Changing this field forces a new resource to be created.
  ///
  /// > If not specified, it will default to `CN=Microsoft Azure Federated SSO Certificate`.
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
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? endDate,
    required pulumi.Output<String> servicePrincipalId,
  }) :
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      endDate = pulumi.Input.asOptionalInput<String>(endDate),
      servicePrincipalId = pulumi.Input.asInput<String>(servicePrincipalId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'endDate': ?endDate,
      'servicePrincipalId': servicePrincipalId,
    };
  }

  factory ServicePrincipalTokenSigningCertificateArgs.fromMap(Map<String, dynamic> map) {
    return ServicePrincipalTokenSigningCertificateArgs(
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      endDate: map['endDate'] == null ? null : pulumi.Output.create<String>(map['endDate'] as String),
      servicePrincipalId: pulumi.Output.create<String>(map['servicePrincipalId'] as String),
    );
  }
}

