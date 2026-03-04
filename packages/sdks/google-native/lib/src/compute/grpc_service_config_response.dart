// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'call_credentials_response.dart';
import 'channel_credentials_response.dart';

/// [Deprecated] gRPC config to access the SDS server. gRPC config to access the SDS server.
class GrpcServiceConfigResponse {
  /// The call credentials to access the SDS server.
  final pulumi.Input<CallCredentialsResponse> callCredentials;

  /// The channel credentials to access the SDS server.
  final pulumi.Input<ChannelCredentialsResponse> channelCredentials;

  /// The target URI of the SDS server.
  final pulumi.Input<String> targetUri;

  /// Creates a new [GrpcServiceConfigResponse].
  /// [callCredentials] The call credentials to access the SDS server.
  /// [channelCredentials] The channel credentials to access the SDS server.
  /// [targetUri] The target URI of the SDS server.
  GrpcServiceConfigResponse({
    required this.callCredentials,
    required this.channelCredentials,
    required this.targetUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'callCredentials':
          pulumi.Input.mapInputValue<
            CallCredentialsResponse,
            Map<String, dynamic>
          >(callCredentials, (value) => value.toMap()),
      'channelCredentials':
          pulumi.Input.mapInputValue<
            ChannelCredentialsResponse,
            Map<String, dynamic>
          >(channelCredentials, (value) => value.toMap()),
      'targetUri': targetUri,
    };
  }

  factory GrpcServiceConfigResponse.fromMap(Map<String, dynamic> map) {
    return GrpcServiceConfigResponse(
      callCredentials: pulumi.Input.fromValue(
        CallCredentialsResponse.fromMap(
          (map['callCredentials']! as Map).cast<String, dynamic>(),
        ),
      ),
      channelCredentials: pulumi.Input.fromValue(
        ChannelCredentialsResponse.fromMap(
          (map['channelCredentials']! as Map).cast<String, dynamic>(),
        ),
      ),
      targetUri: pulumi.Input.fromValue(map['targetUri'] as String),
    );
  }
}
