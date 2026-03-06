// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWafEntityUrlCrossOriginRequestsEnforcement {
  /// Determines whether the subdomains are allowed to receive data from the web application.
  final pulumi.Input<bool>? includeSubdomains;
  /// Specifies the name of the origin with which you want to share your data.
  final pulumi.Input<String> originName;
  /// Specifies the port that other web applications are allowed to use to request data from your web application.
  final pulumi.Input<String> originPort;
  /// Specifies the protocol that other web applications are allowed to use to request data from your web application.
  final pulumi.Input<String> originProtocol;

  /// Creates a new [GetWafEntityUrlCrossOriginRequestsEnforcement].
  /// [includeSubdomains] Determines whether the subdomains are allowed to receive data from the web application.
  /// [originName] Specifies the name of the origin with which you want to share your data.
  /// [originPort] Specifies the port that other web applications are allowed to use to request data from your web application.
  /// [originProtocol] Specifies the protocol that other web applications are allowed to use to request data from your web application.
  const GetWafEntityUrlCrossOriginRequestsEnforcement({
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
      includeSubdomains: (() { final guardedValue = map['includeSubdomains']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      originName: pulumi.Input.fromValue(map['originName'] as String),
      originPort: pulumi.Input.fromValue(map['originPort'] as String),
      originProtocol: pulumi.Input.fromValue(map['originProtocol'] as String),
    );
  }
}

