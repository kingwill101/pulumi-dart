// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'call_credentials_call_credential_type.dart';
import 'metadata_credentials_from_plugin.dart';

/// [Deprecated] gRPC call credentials to access the SDS server. gRPC call credentials to access the SDS server.
class CallCredentials {
  /// The type of call credentials to use for GRPC requests to the SDS server. This field can be set to one of the following: - GCE_VM: The local GCE VM service account credentials are used to access the SDS server. - FROM_PLUGIN: Custom authenticator credentials are used to access the SDS server.
  final pulumi.Input<CallCredentialsCallCredentialType>? callCredentialType;

  /// Custom authenticator credentials. Valid if callCredentialType is FROM_PLUGIN.
  final pulumi.Input<MetadataCredentialsFromPlugin>? fromPlugin;

  /// Creates a new [CallCredentials].
  /// [callCredentialType] The type of call credentials to use for GRPC requests to the SDS server. This field can be set to one of the following: - GCE_VM: The local GCE VM service account credentials are used to access the SDS server. - FROM_PLUGIN: Custom authenticator credentials are used to access the SDS server.
  /// [fromPlugin] Custom authenticator credentials. Valid if callCredentialType is FROM_PLUGIN.
  CallCredentials({this.callCredentialType, this.fromPlugin});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'callCredentialType':
          ?pulumi.Input.mapOptionalInputValue<
            CallCredentialsCallCredentialType,
            String
          >(callCredentialType, (value) => value.wireValue),
      'fromPlugin':
          ?pulumi.Input.mapOptionalInputValue<
            MetadataCredentialsFromPlugin,
            Map<String, dynamic>
          >(fromPlugin, (value) => value.toMap()),
    };
  }

  factory CallCredentials.fromMap(Map<String, dynamic> map) {
    return CallCredentials(
      callCredentialType: (() {
        final guardedValue = map['callCredentialType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CallCredentialsCallCredentialType.fromValue(guardedValue as String),
        );
      })(),
      fromPlugin: (() {
        final guardedValue = map['fromPlugin'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MetadataCredentialsFromPlugin.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
