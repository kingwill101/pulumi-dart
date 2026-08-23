// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_log_config_metadata_compute_beta.dart';

/// The available logging options for a firewall rule.
class FirewallLogConfigComputeBeta {
  /// This field denotes whether to enable logging for a particular firewall rule.
  final pulumi.Input<bool>? enable;
  /// This field can only be specified for a particular firewall rule if logging is enabled for that rule. This field denotes whether to include or exclude metadata for firewall logs.
  final pulumi.Input<FirewallLogConfigMetadataComputeBeta>? metadata;

  /// Creates a new [FirewallLogConfigComputeBeta].
  /// [enable] This field denotes whether to enable logging for a particular firewall rule.
  /// [metadata] This field can only be specified for a particular firewall rule if logging is enabled for that rule. This field denotes whether to include or exclude metadata for firewall logs.
  const FirewallLogConfigComputeBeta({
    this.enable,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
      'metadata': ?pulumi.Input.mapOptionalInputValue<FirewallLogConfigMetadataComputeBeta, String>(metadata, (value) => value.wireValue),
    };
  }

  factory FirewallLogConfigComputeBeta.fromMap(Map<String, dynamic> map) {
    return FirewallLogConfigComputeBeta(
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirewallLogConfigMetadataComputeBeta.fromValue(guardedValue as String)); })(),
    );
  }
}
