// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The available logging options for a firewall rule.
class FirewallLogConfigResponseComputeBeta {
  /// This field denotes whether to enable logging for a particular firewall rule.
  final pulumi.Input<bool> enable;
  /// This field can only be specified for a particular firewall rule if logging is enabled for that rule. This field denotes whether to include or exclude metadata for firewall logs.
  final pulumi.Input<String> metadata;

  /// Creates a new [FirewallLogConfigResponseComputeBeta].
  /// [enable] This field denotes whether to enable logging for a particular firewall rule.
  /// [metadata] This field can only be specified for a particular firewall rule if logging is enabled for that rule. This field denotes whether to include or exclude metadata for firewall logs.
  FirewallLogConfigResponseComputeBeta({
    required this.enable,
    required this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': enable,
      'metadata': metadata,
    };
  }

  factory FirewallLogConfigResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return FirewallLogConfigResponseComputeBeta(
      enable: (map['enable'] as bool).input(),
      metadata: (map['metadata'] as String).input(),
    );
  }
}

