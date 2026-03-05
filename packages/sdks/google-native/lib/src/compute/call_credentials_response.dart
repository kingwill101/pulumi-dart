// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_credentials_from_plugin_response.dart';

/// [Deprecated] gRPC call credentials to access the SDS server. gRPC call credentials to access the SDS server.
class CallCredentialsResponse {
  /// The type of call credentials to use for GRPC requests to the SDS server. This field can be set to one of the following: - GCE_VM: The local GCE VM service account credentials are used to access the SDS server. - FROM_PLUGIN: Custom authenticator credentials are used to access the SDS server.
  final pulumi.Input<String> callCredentialType;
  /// Custom authenticator credentials. Valid if callCredentialType is FROM_PLUGIN.
  final pulumi.Input<MetadataCredentialsFromPluginResponse> fromPlugin;

  /// Creates a new [CallCredentialsResponse].
  /// [callCredentialType] The type of call credentials to use for GRPC requests to the SDS server. This field can be set to one of the following: - GCE_VM: The local GCE VM service account credentials are used to access the SDS server. - FROM_PLUGIN: Custom authenticator credentials are used to access the SDS server.
  /// [fromPlugin] Custom authenticator credentials. Valid if callCredentialType is FROM_PLUGIN.
  CallCredentialsResponse({
    required this.callCredentialType,
    required this.fromPlugin,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'callCredentialType': callCredentialType,
      'fromPlugin': pulumi.Input.mapInputValue<MetadataCredentialsFromPluginResponse, Map<String, dynamic>>(fromPlugin, (value) => value.toMap()),
    };
  }

  factory CallCredentialsResponse.fromMap(Map<String, dynamic> map) {
    return CallCredentialsResponse(
      callCredentialType: pulumi.Input.fromValue(map['callCredentialType'] as String),
      fromPlugin: pulumi.Input.fromValue(MetadataCredentialsFromPluginResponse.fromMap((map['fromPlugin']! as Map).cast<String, dynamic>())),
    );
  }
}

