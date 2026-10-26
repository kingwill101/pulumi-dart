// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_networksecurity_v1beta1_certificate_provider_response.dart';
import 'validation_caresponse_networksecurity_v1beta1.dart';

/// Result data returned by getClientTlsPolicy.
class GetClientTlsPolicyNetworksecurityV1beta1Result {
  /// Optional. Defines a mechanism to provision client identity (public and private keys) for peer to peer authentication. The presence of this dictates mTLS.
  final GoogleCloudNetworksecurityV1beta1CertificateProviderResponse? clientCertificate;
  /// The timestamp when the resource was created.
  final String? createTime;
  /// Optional. Free-text description of the resource.
  final String? description;
  /// Optional. Set of label tags associated with the resource.
  final Map<String, String>? labels;
  /// Name of the ClientTlsPolicy resource. It matches the pattern `projects/*/locations/{location}/clientTlsPolicies/{client_tls_policy}`
  final String? name;
  /// Optional. Defines the mechanism to obtain the Certificate Authority certificate to validate the server certificate. If empty, client does not validate the server certificate.
  final List<ValidationCAResponseNetworksecurityV1beta1>? serverValidationCa;
  /// Optional. Server Name Indication string to present to the server during TLS handshake. E.g: "secure.example.com".
  final String? sni;
  /// The timestamp when the resource was updated.
  final String? updateTime;

  /// Creates a new [GetClientTlsPolicyNetworksecurityV1beta1Result].
  /// [clientCertificate] Optional. Defines a mechanism to provision client identity (public and private keys) for peer to peer authentication. The presence of this dictates mTLS.
  /// [createTime] The timestamp when the resource was created.
  /// [description] Optional. Free-text description of the resource.
  /// [labels] Optional. Set of label tags associated with the resource.
  /// [name] Name of the ClientTlsPolicy resource. It matches the pattern `projects/*/locations/{location}/clientTlsPolicies/{client_tls_policy}`
  /// [serverValidationCa] Optional. Defines the mechanism to obtain the Certificate Authority certificate to validate the server certificate. If empty, client does not validate the server certificate.
  /// [sni] Optional. Server Name Indication string to present to the server during TLS handshake. E.g: "secure.example.com".
  /// [updateTime] The timestamp when the resource was updated.
  const GetClientTlsPolicyNetworksecurityV1beta1Result({
    this.clientCertificate,
    this.createTime,
    this.description,
    this.labels,
    this.name,
    this.serverValidationCa,
    this.sni,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientCertificate': ?clientCertificate?.toMap(),
      'createTime': ?createTime,
      'description': ?description,
      'labels': ?labels,
      'name': ?name,
      'serverValidationCa': ?(() { final guardedValue = serverValidationCa; if (guardedValue == null) return null; return pulumi.Input.encodeList<ValidationCAResponseNetworksecurityV1beta1, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sni': ?sni,
      'updateTime': ?updateTime,
    };
  }

  factory GetClientTlsPolicyNetworksecurityV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetClientTlsPolicyNetworksecurityV1beta1Result(
      clientCertificate: (() { final guardedValue = map['clientCertificate']; if (guardedValue == null) return null; return GoogleCloudNetworksecurityV1beta1CertificateProviderResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverValidationCa: (() { final guardedValue = map['serverValidationCa']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ValidationCAResponseNetworksecurityV1beta1>(guardedValue, (value) => ValidationCAResponseNetworksecurityV1beta1.fromMap((value as Map).cast<String, dynamic>())); })(),
      sni: (() { final guardedValue = map['sni']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
