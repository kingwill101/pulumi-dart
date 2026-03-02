// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_tls_policy_client_certificate.dart';
import 'client_tls_policy_server_validation_ca.dart';

/// {@template pulumi_networksecurity_client_tls_policy_client_tls_policy_args_doc}
/// The set of arguments for ClientTlsPolicy.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_client_tls_policy_client_tls_policy_args_doc}
class ClientTlsPolicyArgs {
  /// Defines a mechanism to provision client identity (public and private keys) for peer to peer authentication. The presence of this dictates mTLS.
  /// Structure is documented below.
  final pulumi.Input<ClientTlsPolicyClientCertificate>? clientCertificate;
  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;
  /// Set of label tags associated with the ClientTlsPolicy resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location of the client tls policy.
  /// The default value is `global`.
  final pulumi.Input<String>? location;
  /// Name of the ClientTlsPolicy resource.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Defines the mechanism to obtain the Certificate Authority certificate to validate the server certificate. If empty, client does not validate the server certificate.
  /// Structure is documented below.
  final pulumi.Input<List<ClientTlsPolicyServerValidationCa>>? serverValidationCas;
  /// Server Name Indication string to present to the server during TLS handshake. E.g: "secure.example.com".
  final pulumi.Input<String>? sni;

  /// Creates a new [ClientTlsPolicyArgs].
  /// [clientCertificate] Defines a mechanism to provision client identity (public and private keys) for peer to peer authentication. The presence of this dictates mTLS.
  /// [description] A free-text description of the resource. Max length 1024 characters.
  /// [labels] Set of label tags associated with the ClientTlsPolicy resource.
  /// [location] The location of the client tls policy.
  /// [name] Name of the ClientTlsPolicy resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [serverValidationCas] Defines the mechanism to obtain the Certificate Authority certificate to validate the server certificate. If empty, client does not validate the server certificate.
  /// [sni] Server Name Indication string to present to the server during TLS handshake. E.g: "secure.example.com".
  ClientTlsPolicyArgs({
    this.clientCertificate,
    this.description,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.serverValidationCas,
    this.sni,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientCertificate': ?pulumi.Input.mapOptionalInputValue<ClientTlsPolicyClientCertificate, Map<String, dynamic>>(clientCertificate, (value) => value.toMap()),
      'description': ?description,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'serverValidationCas': ?pulumi.Input.mapOptionalInputValue<List<ClientTlsPolicyServerValidationCa>, List<Map<String, dynamic>>>(serverValidationCas, (value) => pulumi.Input.encodeList<ClientTlsPolicyServerValidationCa, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sni': ?sni,
    };
  }

  factory ClientTlsPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ClientTlsPolicyArgs(
      clientCertificate: map['clientCertificate'] == null ? null : (ClientTlsPolicyClientCertificate.fromMap((map['clientCertificate'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      serverValidationCas: map['serverValidationCas'] == null ? null : (pulumi.Input.decodeList<ClientTlsPolicyServerValidationCa>(map['serverValidationCas'], (value) => ClientTlsPolicyServerValidationCa.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sni: map['sni'] == null ? null : (map['sni'] as String).input(),
    );
  }
}

