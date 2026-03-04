// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_log_config_metadata_compute_v1.dart';

/// The available logging options for a firewall rule.
class FirewallLogConfigComputeV1 {
  /// This field denotes whether to enable logging for a particular firewall rule.
  final pulumi.Input<bool>? enable;

  /// This field can only be specified for a particular firewall rule if logging is enabled for that rule. This field denotes whether to include or exclude metadata for firewall logs.
  final pulumi.Input<FirewallLogConfigMetadataComputeV1>? metadata;

  /// Creates a new [FirewallLogConfigComputeV1].
  /// [enable] This field denotes whether to enable logging for a particular firewall rule.
  /// [metadata] This field can only be specified for a particular firewall rule if logging is enabled for that rule. This field denotes whether to include or exclude metadata for firewall logs.
  FirewallLogConfigComputeV1({this.enable, this.metadata});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
      'metadata':
          ?pulumi.Input.mapOptionalInputValue<
            FirewallLogConfigMetadataComputeV1,
            String
          >(metadata, (value) => value.wireValue),
    };
  }

  factory FirewallLogConfigComputeV1.fromMap(Map<String, dynamic> map) {
    return FirewallLogConfigComputeV1(
      enable: (() {
        final guardedValue = map['enable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      metadata: (() {
        final guardedValue = map['metadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FirewallLogConfigMetadataComputeV1.fromValue(guardedValue as String),
        );
      })(),
    );
  }
}
