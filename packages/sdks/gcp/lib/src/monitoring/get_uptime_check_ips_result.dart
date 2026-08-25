// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_uptime_check_ips_uptime_check_ip.dart';

/// Result data returned by getUptimeCheckIPs.
class GetUptimeCheckIPsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A list of uptime check IPs used by Stackdriver Monitoring. Each `uptimeCheckIp` contains:
  final List<GetUptimeCheckIPsUptimeCheckIp>? uptimeCheckIps;

  /// Creates a new [GetUptimeCheckIPsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [uptimeCheckIps] A list of uptime check IPs used by Stackdriver Monitoring. Each `uptimeCheckIp` contains:
  const GetUptimeCheckIPsResult({
    this.id,
    this.uptimeCheckIps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'uptimeCheckIps': ?(() { final guardedValue = uptimeCheckIps; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetUptimeCheckIPsUptimeCheckIp, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetUptimeCheckIPsResult.fromMap(Map<String, dynamic> map) {
    return GetUptimeCheckIPsResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uptimeCheckIps: (() { final guardedValue = map['uptimeCheckIps']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetUptimeCheckIPsUptimeCheckIp>(guardedValue, (value) => GetUptimeCheckIPsUptimeCheckIp.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
