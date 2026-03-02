// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_provider_instance.dart';
import 'google_cloud_networksecurity_v1_grpc_endpoint.dart';

/// Specification of ValidationCA. Defines the mechanism to obtain the Certificate Authority certificate to validate the peer certificate.
class ValidationCA {
  /// The certificate provider instance specification that will be passed to the data plane, which will be used to load necessary credential information.
  final pulumi.Input<CertificateProviderInstance>? certificateProviderInstance;
  /// gRPC specific configuration to access the gRPC server to obtain the CA certificate.
  final pulumi.Input<GoogleCloudNetworksecurityV1GrpcEndpoint>? grpcEndpoint;

  /// Creates a new [ValidationCA].
  /// [certificateProviderInstance] The certificate provider instance specification that will be passed to the data plane, which will be used to load necessary credential information.
  /// [grpcEndpoint] gRPC specific configuration to access the gRPC server to obtain the CA certificate.
  ValidationCA({
    this.certificateProviderInstance,
    this.grpcEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateProviderInstance': ?pulumi.Input.mapOptionalInputValue<CertificateProviderInstance, Map<String, dynamic>>(certificateProviderInstance, (value) => value.toMap()),
      'grpcEndpoint': ?pulumi.Input.mapOptionalInputValue<GoogleCloudNetworksecurityV1GrpcEndpoint, Map<String, dynamic>>(grpcEndpoint, (value) => value.toMap()),
    };
  }

  factory ValidationCA.fromMap(Map<String, dynamic> map) {
    return ValidationCA(
      certificateProviderInstance: map['certificateProviderInstance'] == null ? null : (CertificateProviderInstance.fromMap((map['certificateProviderInstance'] as Map).cast<String, dynamic>())).input(),
      grpcEndpoint: map['grpcEndpoint'] == null ? null : (GoogleCloudNetworksecurityV1GrpcEndpoint.fromMap((map['grpcEndpoint'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

