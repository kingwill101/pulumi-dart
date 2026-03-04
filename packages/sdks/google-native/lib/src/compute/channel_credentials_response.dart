// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tls_certificate_paths_response.dart';

/// [Deprecated] gRPC channel credentials to access the SDS server. gRPC channel credentials to access the SDS server.
class ChannelCredentialsResponse {
  /// The call credentials to access the SDS server.
  final pulumi.Input<TlsCertificatePathsResponse> certificates;

  /// The channel credentials to access the SDS server. This field can be set to one of the following: CERTIFICATES: Use TLS certificates to access the SDS server. GCE_VM: Use local GCE VM credentials to access the SDS server.
  final pulumi.Input<String> channelCredentialType;

  /// Creates a new [ChannelCredentialsResponse].
  /// [certificates] The call credentials to access the SDS server.
  /// [channelCredentialType] The channel credentials to access the SDS server. This field can be set to one of the following: CERTIFICATES: Use TLS certificates to access the SDS server. GCE_VM: Use local GCE VM credentials to access the SDS server.
  ChannelCredentialsResponse({
    required this.certificates,
    required this.channelCredentialType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificates':
          pulumi.Input.mapInputValue<
            TlsCertificatePathsResponse,
            Map<String, dynamic>
          >(certificates, (value) => value.toMap()),
      'channelCredentialType': channelCredentialType,
    };
  }

  factory ChannelCredentialsResponse.fromMap(Map<String, dynamic> map) {
    return ChannelCredentialsResponse(
      certificates: pulumi.Input.fromValue(
        TlsCertificatePathsResponse.fromMap(
          (map['certificates']! as Map).cast<String, dynamic>(),
        ),
      ),
      channelCredentialType: pulumi.Input.fromValue(
        map['channelCredentialType'] as String,
      ),
    );
  }
}
