// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_networksecurity_v1_certificate_provider_response.dart';
import 'validation_caresponse.dart';

/// Result data returned by getClientTlsPolicy.
class GetClientTlsPolicyResult {
  /// Optional. Defines a mechanism to provision client identity (public and private keys) for peer to peer authentication. The presence of this dictates mTLS.
  final GoogleCloudNetworksecurityV1CertificateProviderResponse clientCertificate;
  /// The timestamp when the resource was created.
  final String createTime;
  /// Optional. Free-text description of the resource.
  final String description;
  /// Optional. Set of label tags associated with the resource.
  final Map<String, String> labels;
  /// Name of the ClientTlsPolicy resource. It matches the pattern `projects/*/locations/{location}/clientTlsPolicies/{client_tls_policy}`
  final String name;
  /// Optional. Defines the mechanism to obtain the Certificate Authority certificate to validate the server certificate. If empty, client does not validate the server certificate.
  final List<ValidationCAResponse> serverValidationCa;
  /// Optional. Server Name Indication string to present to the server during TLS handshake. E.g: "secure.example.com".
  final String sni;
  /// The timestamp when the resource was updated.
  final String updateTime;

  /// Creates a new [GetClientTlsPolicyResult].
  /// [clientCertificate] Optional. Defines a mechanism to provision client identity (public and private keys) for peer to peer authentication. The presence of this dictates mTLS.
  /// [createTime] The timestamp when the resource was created.
  /// [description] Optional. Free-text description of the resource.
  /// [labels] Optional. Set of label tags associated with the resource.
  /// [name] Name of the ClientTlsPolicy resource. It matches the pattern `projects/*/locations/{location}/clientTlsPolicies/{client_tls_policy}`
  /// [serverValidationCa] Optional. Defines the mechanism to obtain the Certificate Authority certificate to validate the server certificate. If empty, client does not validate the server certificate.
  /// [sni] Optional. Server Name Indication string to present to the server during TLS handshake. E.g: "secure.example.com".
  /// [updateTime] The timestamp when the resource was updated.
  const GetClientTlsPolicyResult({
    required this.clientCertificate,
    required this.createTime,
    required this.description,
    required this.labels,
    required this.name,
    required this.serverValidationCa,
    required this.sni,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientCertificate': clientCertificate.toMap(),
      'createTime': createTime,
      'description': description,
      'labels': labels,
      'name': name,
      'serverValidationCa': pulumi.Input.encodeList<ValidationCAResponse, Map<String, dynamic>>(serverValidationCa, (value) => value.toMap()),
      'sni': sni,
      'updateTime': updateTime,
    };
  }

  factory GetClientTlsPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetClientTlsPolicyResult(
      clientCertificate: GoogleCloudNetworksecurityV1CertificateProviderResponse.fromMap((map['clientCertificate']! as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      serverValidationCa: pulumi.Input.decodeList<ValidationCAResponse>(map['serverValidationCa']!, (value) => ValidationCAResponse.fromMap((value as Map).cast<String, dynamic>())),
      sni: map['sni'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
