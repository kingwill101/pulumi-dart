// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_credentials_channel_credential_type.dart';
import 'tls_certificate_paths.dart';

/// [Deprecated] gRPC channel credentials to access the SDS server. gRPC channel credentials to access the SDS server.
class ChannelCredentials {
  /// The call credentials to access the SDS server.
  final pulumi.Input<TlsCertificatePaths>? certificates;
  /// The channel credentials to access the SDS server. This field can be set to one of the following: CERTIFICATES: Use TLS certificates to access the SDS server. GCE_VM: Use local GCE VM credentials to access the SDS server.
  final pulumi.Input<ChannelCredentialsChannelCredentialType>? channelCredentialType;

  /// Creates a new [ChannelCredentials].
  /// [certificates] The call credentials to access the SDS server.
  /// [channelCredentialType] The channel credentials to access the SDS server. This field can be set to one of the following: CERTIFICATES: Use TLS certificates to access the SDS server. GCE_VM: Use local GCE VM credentials to access the SDS server.
  ChannelCredentials({
    this.certificates,
    this.channelCredentialType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificates': ?pulumi.Input.mapOptionalInputValue<TlsCertificatePaths, Map<String, dynamic>>(certificates, (value) => value.toMap()),
      'channelCredentialType': ?pulumi.Input.mapOptionalInputValue<ChannelCredentialsChannelCredentialType, String>(channelCredentialType, (value) => value.wireValue),
    };
  }

  factory ChannelCredentials.fromMap(Map<String, dynamic> map) {
    return ChannelCredentials(
      certificates: (() { final guardedValue = map['certificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TlsCertificatePaths.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      channelCredentialType: (() { final guardedValue = map['channelCredentialType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelCredentialsChannelCredentialType.fromValue(guardedValue as String)); })(),
    );
  }
}

