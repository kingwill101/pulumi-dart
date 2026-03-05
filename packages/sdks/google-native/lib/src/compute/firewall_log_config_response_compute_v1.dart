// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The available logging options for a firewall rule.
class FirewallLogConfigResponseComputeV1 {
  /// This field denotes whether to enable logging for a particular firewall rule.
  final pulumi.Input<bool> enable;
  /// This field can only be specified for a particular firewall rule if logging is enabled for that rule. This field denotes whether to include or exclude metadata for firewall logs.
  final pulumi.Input<String> metadata;

  /// Creates a new [FirewallLogConfigResponseComputeV1].
  /// [enable] This field denotes whether to enable logging for a particular firewall rule.
  /// [metadata] This field can only be specified for a particular firewall rule if logging is enabled for that rule. This field denotes whether to include or exclude metadata for firewall logs.
  FirewallLogConfigResponseComputeV1({
    required this.enable,
    required this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': enable,
      'metadata': metadata,
    };
  }

  factory FirewallLogConfigResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return FirewallLogConfigResponseComputeV1(
      enable: pulumi.Input.fromValue(map['enable'] as bool),
      metadata: pulumi.Input.fromValue(map['metadata'] as String),
    );
  }
}

