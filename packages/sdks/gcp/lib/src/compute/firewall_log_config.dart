// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallLogConfig {
  /// This field denotes whether to include or exclude metadata for firewall logs.
  /// Possible values are: `EXCLUDE_ALL_METADATA`, `INCLUDE_ALL_METADATA`.
  final pulumi.Input<String> metadata;

  /// Creates a new [FirewallLogConfig].
  /// [metadata] This field denotes whether to include or exclude metadata for firewall logs.
  FirewallLogConfig({required this.metadata});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'metadata': metadata};
  }

  factory FirewallLogConfig.fromMap(Map<String, dynamic> map) {
    return FirewallLogConfig(
      metadata: pulumi.Input.fromValue(map['metadata'] as String),
    );
  }
}
