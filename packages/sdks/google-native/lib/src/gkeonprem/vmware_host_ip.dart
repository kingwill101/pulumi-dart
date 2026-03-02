// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents VMware user cluster node's network configuration.
class VmwareHostIp {
  /// Hostname of the machine. VM's name will be used if this field is empty.
  final pulumi.Input<String>? hostname;
  /// IP could be an IP address (like 1.2.3.4) or a CIDR (like 1.2.3.0/24).
  final pulumi.Input<String>? ip;

  /// Creates a new [VmwareHostIp].
  /// [hostname] Hostname of the machine. VM's name will be used if this field is empty.
  /// [ip] IP could be an IP address (like 1.2.3.4) or a CIDR (like 1.2.3.0/24).
  VmwareHostIp({
    this.hostname,
    this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': ?hostname,
      'ip': ?ip,
    };
  }

  factory VmwareHostIp.fromMap(Map<String, dynamic> map) {
    return VmwareHostIp(
      hostname: map['hostname'] == null ? null : (map['hostname'] as String).input(),
      ip: map['ip'] == null ? null : (map['ip'] as String).input(),
    );
  }
}

