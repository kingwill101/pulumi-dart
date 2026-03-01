// ignore_for_file: unused_element, unnecessary_cast

import 'firewall_log_config_metadata_compute_v1.dart';

/// The available logging options for a firewall rule.
class FirewallLogConfigComputeV1 {
  /// This field denotes whether to enable logging for a particular firewall rule.
  final bool? enable;
  /// This field can only be specified for a particular firewall rule if logging is enabled for that rule. This field denotes whether to include or exclude metadata for firewall logs.
  final FirewallLogConfigMetadataComputeV1? metadata;

  /// Creates a new [FirewallLogConfigComputeV1].
  /// [enable] This field denotes whether to enable logging for a particular firewall rule.
  /// [metadata] This field can only be specified for a particular firewall rule if logging is enabled for that rule. This field denotes whether to include or exclude metadata for firewall logs.
  FirewallLogConfigComputeV1({
    this.enable,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
      'metadata': ?metadata == null ? null : metadata!.value,
    };
  }

  factory FirewallLogConfigComputeV1.fromMap(Map<String, dynamic> map) {
    return FirewallLogConfigComputeV1(
      enable: map['enable'] == null ? null : map['enable'] as bool,
      metadata: map['metadata'] == null ? null : FirewallLogConfigMetadataComputeV1.fromValue(map['metadata'] as String),
    );
  }
}

