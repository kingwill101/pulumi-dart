// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_provider_instance_response.dart';
import 'google_cloud_networksecurity_v1_grpc_endpoint_response.dart';

/// Specification of ValidationCA. Defines the mechanism to obtain the Certificate Authority certificate to validate the peer certificate.
class ValidationCAResponse {
  /// The certificate provider instance specification that will be passed to the data plane, which will be used to load necessary credential information.
  final pulumi.Input<CertificateProviderInstanceResponse> certificateProviderInstance;
  /// gRPC specific configuration to access the gRPC server to obtain the CA certificate.
  final pulumi.Input<GoogleCloudNetworksecurityV1GrpcEndpointResponse> grpcEndpoint;

  /// Creates a new [ValidationCAResponse].
  /// [certificateProviderInstance] The certificate provider instance specification that will be passed to the data plane, which will be used to load necessary credential information.
  /// [grpcEndpoint] gRPC specific configuration to access the gRPC server to obtain the CA certificate.
  const ValidationCAResponse({
    required this.certificateProviderInstance,
    required this.grpcEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateProviderInstance': pulumi.Input.mapInputValue<CertificateProviderInstanceResponse, Map<String, dynamic>>(certificateProviderInstance, (value) => value.toMap()),
      'grpcEndpoint': pulumi.Input.mapInputValue<GoogleCloudNetworksecurityV1GrpcEndpointResponse, Map<String, dynamic>>(grpcEndpoint, (value) => value.toMap()),
    };
  }

  factory ValidationCAResponse.fromMap(Map<String, dynamic> map) {
    return ValidationCAResponse(
      certificateProviderInstance: pulumi.Input.fromValue(CertificateProviderInstanceResponse.fromMap((map['certificateProviderInstance']! as Map).cast<String, dynamic>())),
      grpcEndpoint: pulumi.Input.fromValue(GoogleCloudNetworksecurityV1GrpcEndpointResponse.fromMap((map['grpcEndpoint']! as Map).cast<String, dynamic>())),
    );
  }
}

