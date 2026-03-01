// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_tls_policy_client_certificate.dart';
import 'client_tls_policy_server_validation_ca.dart';

/// Input properties used for looking up and filtering ClientTlsPolicy resources.
class ClientTlsPolicyState {
  /// Defines a mechanism to provision client identity (public and private keys) for peer to peer authentication. The presence of this dictates mTLS.
  /// Structure is documented below.
  final pulumi.Input<ClientTlsPolicyClientCertificate>? clientCertificate;
  /// Time the ClientTlsPolicy was created in UTC.
  final pulumi.Input<String>? createTime;
  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
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
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Defines the mechanism to obtain the Certificate Authority certificate to validate the server certificate. If empty, client does not validate the server certificate.
  /// Structure is documented below.
  final pulumi.Input<List<ClientTlsPolicyServerValidationCa>>? serverValidationCas;
  /// Server Name Indication string to present to the server during TLS handshake. E.g: "secure.example.com".
  final pulumi.Input<String>? sni;
  /// Time the ClientTlsPolicy was updated in UTC.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [ClientTlsPolicyState].
  /// [clientCertificate] Defines a mechanism to provision client identity (public and private keys) for peer to peer authentication. The presence of this dictates mTLS.
  /// [createTime] Time the ClientTlsPolicy was created in UTC.
  /// [description] A free-text description of the resource. Max length 1024 characters.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Set of label tags associated with the ClientTlsPolicy resource.
  /// [location] The location of the client tls policy.
  /// [name] Name of the ClientTlsPolicy resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [serverValidationCas] Defines the mechanism to obtain the Certificate Authority certificate to validate the server certificate. If empty, client does not validate the server certificate.
  /// [sni] Server Name Indication string to present to the server during TLS handshake. E.g: "secure.example.com".
  /// [updateTime] Time the ClientTlsPolicy was updated in UTC.
  ClientTlsPolicyState({
    pulumi.Output<ClientTlsPolicyClientCertificate>? clientCertificate,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<List<ClientTlsPolicyServerValidationCa>>? serverValidationCas,
    pulumi.Output<String>? sni,
    pulumi.Output<String>? updateTime,
  }) :
      clientCertificate = pulumi.Input.asOptionalInput<ClientTlsPolicyClientCertificate>(clientCertificate),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      serverValidationCas = pulumi.Input.asOptionalInput<List<ClientTlsPolicyServerValidationCa>>(serverValidationCas),
      sni = pulumi.Input.asOptionalInput<String>(sni),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientCertificate': ?pulumi.Input.mapOptionalInputValue<ClientTlsPolicyClientCertificate, Map<String, dynamic>>(clientCertificate, (value) => value.toMap()),
      'createTime': ?createTime,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'serverValidationCas': ?pulumi.Input.mapOptionalInputValue<List<ClientTlsPolicyServerValidationCa>, List<Map<String, dynamic>>>(serverValidationCas, (value) => pulumi.Input.encodeList<ClientTlsPolicyServerValidationCa, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sni': ?sni,
      'updateTime': ?updateTime,
    };
  }

  factory ClientTlsPolicyState.fromMap(Map<String, dynamic> map) {
    return ClientTlsPolicyState(
      clientCertificate: map['clientCertificate'] == null ? null : pulumi.Output.create<ClientTlsPolicyClientCertificate>(ClientTlsPolicyClientCertificate.fromMap((map['clientCertificate'] as Map).cast<String, dynamic>())),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      serverValidationCas: map['serverValidationCas'] == null ? null : pulumi.Output.create<List<ClientTlsPolicyServerValidationCa>>(pulumi.Input.decodeList<ClientTlsPolicyServerValidationCa>(map['serverValidationCas'], (value) => ClientTlsPolicyServerValidationCa.fromMap((value as Map).cast<String, dynamic>()))),
      sni: map['sni'] == null ? null : pulumi.Output.create<String>(map['sni'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

