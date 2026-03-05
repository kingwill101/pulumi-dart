// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityGatewayApplicationUpstreamEgressPolicy {
  /// Required. List of regions where the application sends traffic to.
  final pulumi.Input<List<String>> regions;

  /// Creates a new [SecurityGatewayApplicationUpstreamEgressPolicy].
  /// [regions] Required. List of regions where the application sends traffic to.
  SecurityGatewayApplicationUpstreamEgressPolicy({
    required this.regions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regions': regions,
    };
  }

  factory SecurityGatewayApplicationUpstreamEgressPolicy.fromMap(Map<String, dynamic> map) {
    return SecurityGatewayApplicationUpstreamEgressPolicy(
      regions: pulumi.Input.fromValue((map['regions'] as List).cast<String>()),
    );
  }
}

