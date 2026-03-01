// ignore_for_file: unused_element, unnecessary_cast

import 'firewall_log_config_metadata.dart';

/// The available logging options for a firewall rule.
class FirewallLogConfig {
  /// This field denotes whether to enable logging for a particular firewall rule.
  final bool? enable;
  /// This field can only be specified for a particular firewall rule if logging is enabled for that rule. This field denotes whether to include or exclude metadata for firewall logs.
  final FirewallLogConfigMetadata? metadata;

  /// Creates a new [FirewallLogConfig].
  /// [enable] This field denotes whether to enable logging for a particular firewall rule.
  /// [metadata] This field can only be specified for a particular firewall rule if logging is enabled for that rule. This field denotes whether to include or exclude metadata for firewall logs.
  FirewallLogConfig({
    this.enable,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
      'metadata': ?metadata == null ? null : metadata!.value,
    };
  }

  factory FirewallLogConfig.fromMap(Map<String, dynamic> map) {
    return FirewallLogConfig(
      enable: map['enable'] == null ? null : map['enable'] as bool,
      metadata: map['metadata'] == null ? null : FirewallLogConfigMetadata.fromValue(map['metadata'] as String),
    );
  }
}

