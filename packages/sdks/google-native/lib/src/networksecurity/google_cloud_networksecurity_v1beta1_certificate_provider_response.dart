// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_provider_instance_response_networksecurity_v1beta1.dart';
import 'google_cloud_networksecurity_v1beta1_grpc_endpoint_response.dart';

/// Specification of certificate provider. Defines the mechanism to obtain the certificate and private key for peer to peer authentication.
class GoogleCloudNetworksecurityV1beta1CertificateProviderResponse {
  /// The certificate provider instance specification that will be passed to the data plane, which will be used to load necessary credential information.
  final pulumi.Input<CertificateProviderInstanceResponseNetworksecurityV1beta1> certificateProviderInstance;
  /// gRPC specific configuration to access the gRPC server to obtain the cert and private key.
  final pulumi.Input<GoogleCloudNetworksecurityV1beta1GrpcEndpointResponse> grpcEndpoint;

  /// Creates a new [GoogleCloudNetworksecurityV1beta1CertificateProviderResponse].
  /// [certificateProviderInstance] The certificate provider instance specification that will be passed to the data plane, which will be used to load necessary credential information.
  /// [grpcEndpoint] gRPC specific configuration to access the gRPC server to obtain the cert and private key.
  const GoogleCloudNetworksecurityV1beta1CertificateProviderResponse({
    required this.certificateProviderInstance,
    required this.grpcEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateProviderInstance': pulumi.Input.mapInputValue<CertificateProviderInstanceResponseNetworksecurityV1beta1, Map<String, dynamic>>(certificateProviderInstance, (value) => value.toMap()),
      'grpcEndpoint': pulumi.Input.mapInputValue<GoogleCloudNetworksecurityV1beta1GrpcEndpointResponse, Map<String, dynamic>>(grpcEndpoint, (value) => value.toMap()),
    };
  }

  factory GoogleCloudNetworksecurityV1beta1CertificateProviderResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudNetworksecurityV1beta1CertificateProviderResponse(
      certificateProviderInstance: pulumi.Input.fromValue(CertificateProviderInstanceResponseNetworksecurityV1beta1.fromMap((map['certificateProviderInstance']! as Map).cast<String, dynamic>())),
      grpcEndpoint: pulumi.Input.fromValue(GoogleCloudNetworksecurityV1beta1GrpcEndpointResponse.fromMap((map['grpcEndpoint']! as Map).cast<String, dynamic>())),
    );
  }
}
