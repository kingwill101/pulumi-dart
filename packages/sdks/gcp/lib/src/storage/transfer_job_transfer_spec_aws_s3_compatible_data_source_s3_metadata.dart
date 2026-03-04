// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TransferJobTransferSpecAwsS3CompatibleDataSourceS3Metadata {
  /// Authentication and authorization method used by the storage service. When not specified, Transfer Service will attempt to determine right auth method to use.
  final pulumi.Input<String>? authMethod;

  /// The Listing API to use for discovering objects. When not specified, Transfer Service will attempt to determine the right API to use.
  final pulumi.Input<String>? listApi;

  /// The network protocol of the agent. When not specified, the default value of NetworkProtocol NETWORK_PROTOCOL_HTTPS is used.
  final pulumi.Input<String>? protocol;

  /// API request model used to call the storage service. When not specified, the default value of RequestModel REQUEST_MODEL_VIRTUAL_HOSTED_STYLE is used.
  final pulumi.Input<String>? requestModel;

  /// Creates a new [TransferJobTransferSpecAwsS3CompatibleDataSourceS3Metadata].
  /// [authMethod] Authentication and authorization method used by the storage service. When not specified, Transfer Service will attempt to determine right auth method to use.
  /// [listApi] The Listing API to use for discovering objects. When not specified, Transfer Service will attempt to determine the right API to use.
  /// [protocol] The network protocol of the agent. When not specified, the default value of NetworkProtocol NETWORK_PROTOCOL_HTTPS is used.
  /// [requestModel] API request model used to call the storage service. When not specified, the default value of RequestModel REQUEST_MODEL_VIRTUAL_HOSTED_STYLE is used.
  TransferJobTransferSpecAwsS3CompatibleDataSourceS3Metadata({
    this.authMethod,
    this.listApi,
    this.protocol,
    this.requestModel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authMethod': ?authMethod,
      'listApi': ?listApi,
      'protocol': ?protocol,
      'requestModel': ?requestModel,
    };
  }

  factory TransferJobTransferSpecAwsS3CompatibleDataSourceS3Metadata.fromMap(
    Map<String, dynamic> map,
  ) {
    return TransferJobTransferSpecAwsS3CompatibleDataSourceS3Metadata(
      authMethod: (() {
        final guardedValue = map['authMethod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      listApi: (() {
        final guardedValue = map['listApi'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      protocol: (() {
        final guardedValue = map['protocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      requestModel: (() {
        final guardedValue = map['requestModel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
