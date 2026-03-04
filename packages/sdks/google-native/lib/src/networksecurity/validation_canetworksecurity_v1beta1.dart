// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_provider_instance_networksecurity_v1beta1.dart';
import 'google_cloud_networksecurity_v1beta1_grpc_endpoint.dart';

/// Specification of ValidationCA. Defines the mechanism to obtain the Certificate Authority certificate to validate the peer certificate.
class ValidationCANetworksecurityV1beta1 {
  /// The certificate provider instance specification that will be passed to the data plane, which will be used to load necessary credential information.
  final pulumi.Input<CertificateProviderInstanceNetworksecurityV1beta1>?
  certificateProviderInstance;

  /// gRPC specific configuration to access the gRPC server to obtain the CA certificate.
  final pulumi.Input<GoogleCloudNetworksecurityV1beta1GrpcEndpoint>?
  grpcEndpoint;

  /// Creates a new [ValidationCANetworksecurityV1beta1].
  /// [certificateProviderInstance] The certificate provider instance specification that will be passed to the data plane, which will be used to load necessary credential information.
  /// [grpcEndpoint] gRPC specific configuration to access the gRPC server to obtain the CA certificate.
  ValidationCANetworksecurityV1beta1({
    this.certificateProviderInstance,
    this.grpcEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateProviderInstance':
          ?pulumi.Input.mapOptionalInputValue<
            CertificateProviderInstanceNetworksecurityV1beta1,
            Map<String, dynamic>
          >(certificateProviderInstance, (value) => value.toMap()),
      'grpcEndpoint':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudNetworksecurityV1beta1GrpcEndpoint,
            Map<String, dynamic>
          >(grpcEndpoint, (value) => value.toMap()),
    };
  }

  factory ValidationCANetworksecurityV1beta1.fromMap(Map<String, dynamic> map) {
    return ValidationCANetworksecurityV1beta1(
      certificateProviderInstance: (() {
        final guardedValue = map['certificateProviderInstance'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CertificateProviderInstanceNetworksecurityV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      grpcEndpoint: (() {
        final guardedValue = map['grpcEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudNetworksecurityV1beta1GrpcEndpoint.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
