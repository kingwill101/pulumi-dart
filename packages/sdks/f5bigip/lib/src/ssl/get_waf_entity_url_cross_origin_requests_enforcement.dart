// ignore_for_file: unused_element, unnecessary_cast


class GetWafEntityUrlCrossOriginRequestsEnforcement {
  /// Determines whether the subdomains are allowed to receive data from the web application.
  final bool? includeSubdomains;
  /// Specifies the name of the origin with which you want to share your data.
  final String originName;
  /// Specifies the port that other web applications are allowed to use to request data from your web application.
  final String originPort;
  /// Specifies the protocol that other web applications are allowed to use to request data from your web application.
  final String originProtocol;

  /// Creates a new [GetWafEntityUrlCrossOriginRequestsEnforcement].
  /// [includeSubdomains] Determines whether the subdomains are allowed to receive data from the web application.
  /// [originName] Specifies the name of the origin with which you want to share your data.
  /// [originPort] Specifies the port that other web applications are allowed to use to request data from your web application.
  /// [originProtocol] Specifies the protocol that other web applications are allowed to use to request data from your web application.
  GetWafEntityUrlCrossOriginRequestsEnforcement({
    this.includeSubdomains,
    required this.originName,
    required this.originPort,
    required this.originProtocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeSubdomains': ?includeSubdomains,
      'originName': originName,
      'originPort': originPort,
      'originProtocol': originProtocol,
    };
  }

  factory GetWafEntityUrlCrossOriginRequestsEnforcement.fromMap(Map<String, dynamic> map) {
    return GetWafEntityUrlCrossOriginRequestsEnforcement(
      includeSubdomains: map['includeSubdomains'] == null ? null : map['includeSubdomains'] as bool,
      originName: map['originName'] as String,
      originPort: map['originPort'] as String,
      originProtocol: map['originProtocol'] as String,
    );
  }
}

