// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Target service's firewall rules. to allow connections from source service.
class FirewallRules {
  /// Allow Azure services to access the target service if true.
  final pulumi.Input<String>? azureServices;
  /// Allow caller client IP to access the target service if true. the property is used when connecting local application to target service.
  final pulumi.Input<String>? callerClientIP;
  /// This value specifies the set of IP addresses or IP address ranges in CIDR form to be included as the allowed list of client IPs for a given database account.
  final pulumi.Input<List<String>>? ipRanges;

  /// Creates a new [FirewallRules].
  /// [azureServices] Allow Azure services to access the target service if true.
  /// [callerClientIP] Allow caller client IP to access the target service if true. the property is used when connecting local application to target service.
  /// [ipRanges] This value specifies the set of IP addresses or IP address ranges in CIDR form to be included as the allowed list of client IPs for a given database account.
  const FirewallRules({
    this.azureServices,
    this.callerClientIP,
    this.ipRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureServices': ?azureServices,
      'callerClientIP': ?callerClientIP,
      'ipRanges': ?ipRanges,
    };
  }

  factory FirewallRules.fromMap(Map<String, dynamic> map) {
    return FirewallRules(
      azureServices: (() { final guardedValue = map['azureServices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      callerClientIP: (() { final guardedValue = map['callerClientIP']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipRanges: (() { final guardedValue = map['ipRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
