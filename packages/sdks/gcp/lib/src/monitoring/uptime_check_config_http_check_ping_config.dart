// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UptimeCheckConfigHttpCheckPingConfig {
  /// Number of ICMP pings. A maximum of 3 ICMP pings is currently supported.
  final pulumi.Input<int> pingsCount;

  /// Creates a new [UptimeCheckConfigHttpCheckPingConfig].
  /// [pingsCount] Number of ICMP pings. A maximum of 3 ICMP pings is currently supported.
  UptimeCheckConfigHttpCheckPingConfig({required this.pingsCount});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'pingsCount': pingsCount};
  }

  factory UptimeCheckConfigHttpCheckPingConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return UptimeCheckConfigHttpCheckPingConfig(
      pingsCount: pulumi.Input.fromValue(map['pingsCount'] as int),
    );
  }
}
