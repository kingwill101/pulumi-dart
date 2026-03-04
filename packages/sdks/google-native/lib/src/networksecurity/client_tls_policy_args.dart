// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_networksecurity_v1_certificate_provider.dart';
import 'validation_ca.dart';

/// {@template pulumi_networksecurity_v1_client_tls_policy_args_doc}
/// The set of arguments for ClientTlsPolicy.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1_client_tls_policy_args_doc}
class ClientTlsPolicyArgs {
  /// Optional. Defines a mechanism to provision client identity (public and private keys) for peer to peer authentication. The presence of this dictates mTLS.
  final pulumi.Input<GoogleCloudNetworksecurityV1CertificateProvider>?
  clientCertificate;

  /// Required. Short name of the ClientTlsPolicy resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "client_mtls_policy".
  final pulumi.Input<String> clientTlsPolicyId;

  /// Optional. Free-text description of the resource.
  final pulumi.Input<String>? description;

  /// Optional. Set of label tags associated with the resource.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Name of the ClientTlsPolicy resource. It matches the pattern `projects/*/locations/{location}/clientTlsPolicies/{client_tls_policy}`
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Optional. Defines the mechanism to obtain the Certificate Authority certificate to validate the server certificate. If empty, client does not validate the server certificate.
  final pulumi.Input<List<ValidationCA>>? serverValidationCa;

  /// Optional. Server Name Indication string to present to the server during TLS handshake. E.g: "secure.example.com".
  final pulumi.Input<String>? sni;

  /// Creates a new [ClientTlsPolicyArgs].
  /// [clientCertificate] Optional. Defines a mechanism to provision client identity (public and private keys) for peer to peer authentication. The presence of this dictates mTLS.
  /// [clientTlsPolicyId] Required. Short name of the ClientTlsPolicy resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "client_mtls_policy".
  /// [description] Optional. Free-text description of the resource.
  /// [labels] Optional. Set of label tags associated with the resource.
  /// [location] Optional.
  /// [name] Name of the ClientTlsPolicy resource. It matches the pattern `projects/*/locations/{location}/clientTlsPolicies/{client_tls_policy}`
  /// [project] Optional.
  /// [serverValidationCa] Optional. Defines the mechanism to obtain the Certificate Authority certificate to validate the server certificate. If empty, client does not validate the server certificate.
  /// [sni] Optional. Server Name Indication string to present to the server during TLS handshake. E.g: "secure.example.com".
  ClientTlsPolicyArgs({
    this.clientCertificate,
    required this.clientTlsPolicyId,
    this.description,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.serverValidationCa,
    this.sni,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientCertificate':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudNetworksecurityV1CertificateProvider,
            Map<String, dynamic>
          >(clientCertificate, (value) => value.toMap()),
      'clientTlsPolicyId': clientTlsPolicyId,
      'description': ?description,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'serverValidationCa':
          ?pulumi.Input.mapOptionalInputValue<
            List<ValidationCA>,
            List<Map<String, dynamic>>
          >(
            serverValidationCa,
            (value) =>
                pulumi.Input.encodeList<ValidationCA, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'sni': ?sni,
    };
  }

  factory ClientTlsPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ClientTlsPolicyArgs(
      clientCertificate: (() {
        final guardedValue = map['clientCertificate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudNetworksecurityV1CertificateProvider.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      clientTlsPolicyId: pulumi.Input.fromValue(
        map['clientTlsPolicyId'] as String,
      ),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serverValidationCa: (() {
        final guardedValue = map['serverValidationCa'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ValidationCA>(
            guardedValue,
            (value) =>
                ValidationCA.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      sni: (() {
        final guardedValue = map['sni'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
