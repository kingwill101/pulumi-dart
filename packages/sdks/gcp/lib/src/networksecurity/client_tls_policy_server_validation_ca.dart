// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_tls_policy_server_validation_ca_certificate_provider_instance.dart';
import 'client_tls_policy_server_validation_ca_grpc_endpoint.dart';

class ClientTlsPolicyServerValidationCa {
  /// The certificate provider instance specification that will be passed to the data plane, which will be used to load necessary credential information.
  /// Structure is documented below.
  final pulumi.Input<ClientTlsPolicyServerValidationCaCertificateProviderInstance>? certificateProviderInstance;
  /// gRPC specific configuration to access the gRPC server to obtain the cert and private key.
  /// Structure is documented below.
  final pulumi.Input<ClientTlsPolicyServerValidationCaGrpcEndpoint>? grpcEndpoint;

  /// Creates a new [ClientTlsPolicyServerValidationCa].
  /// [certificateProviderInstance] The certificate provider instance specification that will be passed to the data plane, which will be used to load necessary credential information.
  /// [grpcEndpoint] gRPC specific configuration to access the gRPC server to obtain the cert and private key.
  ClientTlsPolicyServerValidationCa({
    this.certificateProviderInstance,
    this.grpcEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateProviderInstance': ?pulumi.Input.mapOptionalInputValue<ClientTlsPolicyServerValidationCaCertificateProviderInstance, Map<String, dynamic>>(certificateProviderInstance, (value) => value.toMap()),
      'grpcEndpoint': ?pulumi.Input.mapOptionalInputValue<ClientTlsPolicyServerValidationCaGrpcEndpoint, Map<String, dynamic>>(grpcEndpoint, (value) => value.toMap()),
    };
  }

  factory ClientTlsPolicyServerValidationCa.fromMap(Map<String, dynamic> map) {
    return ClientTlsPolicyServerValidationCa(
      certificateProviderInstance: (() { final guardedValue = map['certificateProviderInstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClientTlsPolicyServerValidationCaCertificateProviderInstance.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      grpcEndpoint: (() { final guardedValue = map['grpcEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClientTlsPolicyServerValidationCaGrpcEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

