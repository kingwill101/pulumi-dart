// ignore_for_file: unused_element, unnecessary_cast


class GetApplicationGatewayGlobal {
  /// Whether Application Gateway's Request buffer is enabled.
  final bool requestBufferingEnabled;
  /// Whether Application Gateway's Response buffer is enabled.
  final bool responseBufferingEnabled;

  /// Creates a new [GetApplicationGatewayGlobal].
  /// [requestBufferingEnabled] Whether Application Gateway's Request buffer is enabled.
  /// [responseBufferingEnabled] Whether Application Gateway's Response buffer is enabled.
  GetApplicationGatewayGlobal({
    required this.requestBufferingEnabled,
    required this.responseBufferingEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestBufferingEnabled': requestBufferingEnabled,
      'responseBufferingEnabled': responseBufferingEnabled,
    };
  }

  factory GetApplicationGatewayGlobal.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayGlobal(
      requestBufferingEnabled: map['requestBufferingEnabled'] as bool,
      responseBufferingEnabled: map['responseBufferingEnabled'] as bool,
    );
  }
}

