// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 's3_compatible_metadata_auth_method.dart';
import 's3_compatible_metadata_list_api.dart';
import 's3_compatible_metadata_protocol.dart';
import 's3_compatible_metadata_request_model.dart';

/// S3CompatibleMetadata contains the metadata fields that apply to the basic types of S3-compatible data providers.
class S3CompatibleMetadata {
  /// Specifies the authentication and authorization method used by the storage service. When not specified, Transfer Service will attempt to determine right auth method to use.
  final pulumi.Input<S3CompatibleMetadataAuthMethod>? authMethod;
  /// The Listing API to use for discovering objects. When not specified, Transfer Service will attempt to determine the right API to use.
  final pulumi.Input<S3CompatibleMetadataListApi>? listApi;
  /// Specifies the network protocol of the agent. When not specified, the default value of NetworkProtocol NETWORK_PROTOCOL_HTTPS is used.
  final pulumi.Input<S3CompatibleMetadataProtocol>? protocol;
  /// Specifies the API request model used to call the storage service. When not specified, the default value of RequestModel REQUEST_MODEL_VIRTUAL_HOSTED_STYLE is used.
  final pulumi.Input<S3CompatibleMetadataRequestModel>? requestModel;

  /// Creates a new [S3CompatibleMetadata].
  /// [authMethod] Specifies the authentication and authorization method used by the storage service. When not specified, Transfer Service will attempt to determine right auth method to use.
  /// [listApi] The Listing API to use for discovering objects. When not specified, Transfer Service will attempt to determine the right API to use.
  /// [protocol] Specifies the network protocol of the agent. When not specified, the default value of NetworkProtocol NETWORK_PROTOCOL_HTTPS is used.
  /// [requestModel] Specifies the API request model used to call the storage service. When not specified, the default value of RequestModel REQUEST_MODEL_VIRTUAL_HOSTED_STYLE is used.
  S3CompatibleMetadata({
    this.authMethod,
    this.listApi,
    this.protocol,
    this.requestModel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authMethod': ?pulumi.Input.mapOptionalInputValue<S3CompatibleMetadataAuthMethod, String>(authMethod, (value) => value.value),
      'listApi': ?pulumi.Input.mapOptionalInputValue<S3CompatibleMetadataListApi, String>(listApi, (value) => value.value),
      'protocol': ?pulumi.Input.mapOptionalInputValue<S3CompatibleMetadataProtocol, String>(protocol, (value) => value.value),
      'requestModel': ?pulumi.Input.mapOptionalInputValue<S3CompatibleMetadataRequestModel, String>(requestModel, (value) => value.value),
    };
  }

  factory S3CompatibleMetadata.fromMap(Map<String, dynamic> map) {
    return S3CompatibleMetadata(
      authMethod: map['authMethod'] == null ? null : (S3CompatibleMetadataAuthMethod.fromValue(map['authMethod']! as String)).input(),
      listApi: map['listApi'] == null ? null : (S3CompatibleMetadataListApi.fromValue(map['listApi']! as String)).input(),
      protocol: map['protocol'] == null ? null : (S3CompatibleMetadataProtocol.fromValue(map['protocol']! as String)).input(),
      requestModel: map['requestModel'] == null ? null : (S3CompatibleMetadataRequestModel.fromValue(map['requestModel']! as String)).input(),
    );
  }
}

