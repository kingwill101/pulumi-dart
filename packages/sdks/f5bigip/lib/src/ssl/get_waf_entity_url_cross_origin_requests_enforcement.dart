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
      includeSubdomains: map['includeSubdomains'] == null ? null : (map['includeSubdomains']! as bool).input(),
      originName: (map['originName'] as String).input(),
      originPort: (map['originPort'] as String).input(),
      originProtocol: (map['originProtocol'] as String).input(),
    );
  }
}

