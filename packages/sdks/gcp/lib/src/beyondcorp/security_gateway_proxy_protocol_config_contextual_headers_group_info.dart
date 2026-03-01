// ignore_for_file: unused_element, unnecessary_cast


class SecurityGatewayProxyProtocolConfigContextualHeadersGroupInfo {
  /// The output type of the delegated group info.
  /// Possible values are: `PROTOBUF`, `JSON`, `NONE`.
  final String? outputType;

  /// Creates a new [SecurityGatewayProxyProtocolConfigContextualHeadersGroupInfo].
  /// [outputType] The output type of the delegated group info.
  SecurityGatewayProxyProtocolConfigContextualHeadersGroupInfo({
    this.outputType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outputType': ?outputType,
    };
  }

  factory SecurityGatewayProxyProtocolConfigContextualHeadersGroupInfo.fromMap(Map<String, dynamic> map) {
    return SecurityGatewayProxyProtocolConfigContextualHeadersGroupInfo(
      outputType: map['outputType'] == null ? null : map['outputType'] as String,
    );
  }
}

