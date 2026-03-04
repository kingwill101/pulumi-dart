// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// S3CompatibleMetadata contains the metadata fields that apply to the basic types of S3-compatible data providers.
class S3CompatibleMetadataResponse {
  /// Specifies the authentication and authorization method used by the storage service. When not specified, Transfer Service will attempt to determine right auth method to use.
  final pulumi.Input<String> authMethod;

  /// The Listing API to use for discovering objects. When not specified, Transfer Service will attempt to determine the right API to use.
  final pulumi.Input<String> listApi;

  /// Specifies the network protocol of the agent. When not specified, the default value of NetworkProtocol NETWORK_PROTOCOL_HTTPS is used.
  final pulumi.Input<String> protocol;

  /// Specifies the API request model used to call the storage service. When not specified, the default value of RequestModel REQUEST_MODEL_VIRTUAL_HOSTED_STYLE is used.
  final pulumi.Input<String> requestModel;

  /// Creates a new [S3CompatibleMetadataResponse].
  /// [authMethod] Specifies the authentication and authorization method used by the storage service. When not specified, Transfer Service will attempt to determine right auth method to use.
  /// [listApi] The Listing API to use for discovering objects. When not specified, Transfer Service will attempt to determine the right API to use.
  /// [protocol] Specifies the network protocol of the agent. When not specified, the default value of NetworkProtocol NETWORK_PROTOCOL_HTTPS is used.
  /// [requestModel] Specifies the API request model used to call the storage service. When not specified, the default value of RequestModel REQUEST_MODEL_VIRTUAL_HOSTED_STYLE is used.
  S3CompatibleMetadataResponse({
    required this.authMethod,
    required this.listApi,
    required this.protocol,
    required this.requestModel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authMethod': authMethod,
      'listApi': listApi,
      'protocol': protocol,
      'requestModel': requestModel,
    };
  }

  factory S3CompatibleMetadataResponse.fromMap(Map<String, dynamic> map) {
    return S3CompatibleMetadataResponse(
      authMethod: pulumi.Input.fromValue(map['authMethod'] as String),
      listApi: pulumi.Input.fromValue(map['listApi'] as String),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      requestModel: pulumi.Input.fromValue(map['requestModel'] as String),
    );
  }
}
