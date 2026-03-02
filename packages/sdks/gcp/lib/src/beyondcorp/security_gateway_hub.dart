// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_gateway_hub_internet_gateway.dart';

class SecurityGatewayHub {
  /// Internet Gateway configuration.
  /// Structure is documented below.
  final pulumi.Input<SecurityGatewayHubInternetGateway>? internetGateway;
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> region;

  /// Creates a new [SecurityGatewayHub].
  /// [internetGateway] Internet Gateway configuration.
  /// [region] The identifier for this object. Format specified above.
  SecurityGatewayHub({
    this.internetGateway,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'internetGateway': ?pulumi.Input.mapOptionalInputValue<SecurityGatewayHubInternetGateway, Map<String, dynamic>>(internetGateway, (value) => value.toMap()),
      'region': region,
    };
  }

  factory SecurityGatewayHub.fromMap(Map<String, dynamic> map) {
    return SecurityGatewayHub(
      internetGateway: map['internetGateway'] == null ? null : (SecurityGatewayHubInternetGateway.fromMap((map['internetGateway']! as Map).cast<String, dynamic>())).input(),
      region: (map['region'] as String).input(),
    );
  }
}

