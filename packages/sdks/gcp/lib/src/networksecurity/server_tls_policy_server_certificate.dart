// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_tls_policy_server_certificate_certificate_provider_instance.dart';
import 'server_tls_policy_server_certificate_grpc_endpoint.dart';

class ServerTlsPolicyServerCertificate {
  /// Optional if policy is to be used with Traffic Director. For external HTTPS load balancer must be empty.
  /// Defines a mechanism to provision server identity (public and private keys). Cannot be combined with allowOpen as a permissive mode that allows both plain text and TLS is not supported.
  /// Structure is documented below.
  final pulumi.Input<ServerTlsPolicyServerCertificateCertificateProviderInstance>? certificateProviderInstance;
  /// gRPC specific configuration to access the gRPC server to obtain the cert and private key.
  /// Structure is documented below.
  final pulumi.Input<ServerTlsPolicyServerCertificateGrpcEndpoint>? grpcEndpoint;

  /// Creates a new [ServerTlsPolicyServerCertificate].
  /// [certificateProviderInstance] Optional if policy is to be used with Traffic Director. For external HTTPS load balancer must be empty.
  /// [grpcEndpoint] gRPC specific configuration to access the gRPC server to obtain the cert and private key.
  const ServerTlsPolicyServerCertificate({
    this.certificateProviderInstance,
    this.grpcEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateProviderInstance': ?pulumi.Input.mapOptionalInputValue<ServerTlsPolicyServerCertificateCertificateProviderInstance, Map<String, dynamic>>(certificateProviderInstance, (value) => value.toMap()),
      'grpcEndpoint': ?pulumi.Input.mapOptionalInputValue<ServerTlsPolicyServerCertificateGrpcEndpoint, Map<String, dynamic>>(grpcEndpoint, (value) => value.toMap()),
    };
  }

  factory ServerTlsPolicyServerCertificate.fromMap(Map<String, dynamic> map) {
    return ServerTlsPolicyServerCertificate(
      certificateProviderInstance: (() { final guardedValue = map['certificateProviderInstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServerTlsPolicyServerCertificateCertificateProviderInstance.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      grpcEndpoint: (() { final guardedValue = map['grpcEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServerTlsPolicyServerCertificateGrpcEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

