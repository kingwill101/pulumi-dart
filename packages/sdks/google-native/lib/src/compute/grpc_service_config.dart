// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'call_credentials.dart';
import 'channel_credentials.dart';

/// [Deprecated] gRPC config to access the SDS server. gRPC config to access the SDS server.
class GrpcServiceConfig {
  /// The call credentials to access the SDS server.
  final pulumi.Input<CallCredentials>? callCredentials;
  /// The channel credentials to access the SDS server.
  final pulumi.Input<ChannelCredentials>? channelCredentials;
  /// The target URI of the SDS server.
  final pulumi.Input<String>? targetUri;

  /// Creates a new [GrpcServiceConfig].
  /// [callCredentials] The call credentials to access the SDS server.
  /// [channelCredentials] The channel credentials to access the SDS server.
  /// [targetUri] The target URI of the SDS server.
  GrpcServiceConfig({
    this.callCredentials,
    this.channelCredentials,
    this.targetUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'callCredentials': ?pulumi.Input.mapOptionalInputValue<CallCredentials, Map<String, dynamic>>(callCredentials, (value) => value.toMap()),
      'channelCredentials': ?pulumi.Input.mapOptionalInputValue<ChannelCredentials, Map<String, dynamic>>(channelCredentials, (value) => value.toMap()),
      'targetUri': ?targetUri,
    };
  }

  factory GrpcServiceConfig.fromMap(Map<String, dynamic> map) {
    return GrpcServiceConfig(
      callCredentials: map['callCredentials'] == null ? null : (CallCredentials.fromMap((map['callCredentials']! as Map).cast<String, dynamic>())).input(),
      channelCredentials: map['channelCredentials'] == null ? null : (ChannelCredentials.fromMap((map['channelCredentials']! as Map).cast<String, dynamic>())).input(),
      targetUri: map['targetUri'] == null ? null : (map['targetUri']! as String).input(),
    );
  }
}

