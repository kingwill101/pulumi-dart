// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_tls_policy_client_certificate_certificate_provider_instance.dart';
import 'client_tls_policy_client_certificate_grpc_endpoint.dart';

class ClientTlsPolicyClientCertificate {
  /// The certificate provider instance specification that will be passed to the data plane, which will be used to load necessary credential information.
  /// Structure is documented below.
  final pulumi.Input<ClientTlsPolicyClientCertificateCertificateProviderInstance>? certificateProviderInstance;
  /// gRPC specific configuration to access the gRPC server to obtain the cert and private key.
  /// Structure is documented below.
  final pulumi.Input<ClientTlsPolicyClientCertificateGrpcEndpoint>? grpcEndpoint;

  /// Creates a new [ClientTlsPolicyClientCertificate].
  /// [certificateProviderInstance] The certificate provider instance specification that will be passed to the data plane, which will be used to load necessary credential information.
  /// [grpcEndpoint] gRPC specific configuration to access the gRPC server to obtain the cert and private key.
  ClientTlsPolicyClientCertificate({
    this.certificateProviderInstance,
    this.grpcEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateProviderInstance': ?pulumi.Input.mapOptionalInputValue<ClientTlsPolicyClientCertificateCertificateProviderInstance, Map<String, dynamic>>(certificateProviderInstance, (value) => value.toMap()),
      'grpcEndpoint': ?pulumi.Input.mapOptionalInputValue<ClientTlsPolicyClientCertificateGrpcEndpoint, Map<String, dynamic>>(grpcEndpoint, (value) => value.toMap()),
    };
  }

  factory ClientTlsPolicyClientCertificate.fromMap(Map<String, dynamic> map) {
    return ClientTlsPolicyClientCertificate(
      certificateProviderInstance: map['certificateProviderInstance'] == null ? null : (ClientTlsPolicyClientCertificateCertificateProviderInstance.fromMap((map['certificateProviderInstance'] as Map).cast<String, dynamic>())).input(),
      grpcEndpoint: map['grpcEndpoint'] == null ? null : (ClientTlsPolicyClientCertificateGrpcEndpoint.fromMap((map['grpcEndpoint'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

