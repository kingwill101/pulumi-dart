// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// HostIP represents a single IP address allocated to the host.
class HostIPPatch {
  /// IP is the IP address assigned to the host
  final pulumi.Input<String>? ip;

  /// Creates a new [HostIPPatch].
  /// [ip] IP is the IP address assigned to the host
  HostIPPatch({
    this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ?ip,
    };
  }

  factory HostIPPatch.fromMap(Map<String, dynamic> map) {
    return HostIPPatch(
      ip: map['ip'] == null ? null : (map['ip'] as String).input(),
    );
  }
}

