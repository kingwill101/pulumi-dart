// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_provider_instance.dart';
import 'google_cloud_networksecurity_v1_grpc_endpoint.dart';

/// Specification of certificate provider. Defines the mechanism to obtain the certificate and private key for peer to peer authentication.
class GoogleCloudNetworksecurityV1CertificateProvider {
  /// The certificate provider instance specification that will be passed to the data plane, which will be used to load necessary credential information.
  final pulumi.Input<CertificateProviderInstance>? certificateProviderInstance;
  /// gRPC specific configuration to access the gRPC server to obtain the cert and private key.
  final pulumi.Input<GoogleCloudNetworksecurityV1GrpcEndpoint>? grpcEndpoint;

  /// Creates a new [GoogleCloudNetworksecurityV1CertificateProvider].
  /// [certificateProviderInstance] The certificate provider instance specification that will be passed to the data plane, which will be used to load necessary credential information.
  /// [grpcEndpoint] gRPC specific configuration to access the gRPC server to obtain the cert and private key.
  GoogleCloudNetworksecurityV1CertificateProvider({
    this.certificateProviderInstance,
    this.grpcEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateProviderInstance': ?pulumi.Input.mapOptionalInputValue<CertificateProviderInstance, Map<String, dynamic>>(certificateProviderInstance, (value) => value.toMap()),
      'grpcEndpoint': ?pulumi.Input.mapOptionalInputValue<GoogleCloudNetworksecurityV1GrpcEndpoint, Map<String, dynamic>>(grpcEndpoint, (value) => value.toMap()),
    };
  }

  factory GoogleCloudNetworksecurityV1CertificateProvider.fromMap(Map<String, dynamic> map) {
    return GoogleCloudNetworksecurityV1CertificateProvider(
      certificateProviderInstance: map['certificateProviderInstance'] == null ? null : (CertificateProviderInstance.fromMap((map['certificateProviderInstance']! as Map).cast<String, dynamic>())).input(),
      grpcEndpoint: map['grpcEndpoint'] == null ? null : (GoogleCloudNetworksecurityV1GrpcEndpoint.fromMap((map['grpcEndpoint']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

