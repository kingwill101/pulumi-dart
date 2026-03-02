// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyBasedRouteInterconnectAttachment {
  /// Cloud region to install this policy-based route on for Interconnect attachments. Use `all` to install it on all Interconnect attachments.
  final pulumi.Input<String> region;

  /// Creates a new [PolicyBasedRouteInterconnectAttachment].
  /// [region] Cloud region to install this policy-based route on for Interconnect attachments. Use `all` to install it on all Interconnect attachments.
  PolicyBasedRouteInterconnectAttachment({
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': region,
    };
  }

  factory PolicyBasedRouteInterconnectAttachment.fromMap(Map<String, dynamic> map) {
    return PolicyBasedRouteInterconnectAttachment(
      region: (map['region'] as String).input(),
    );
  }
}

