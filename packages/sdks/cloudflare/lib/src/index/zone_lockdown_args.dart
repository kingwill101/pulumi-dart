// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_lockdown_configuration.dart';

/// {@template pulumi_index_zone_lockdown_zone_lockdown_args_doc}
/// The set of arguments for ZoneLockdown.
/// {@endtemplate}
/// {@macro pulumi_index_zone_lockdown_zone_lockdown_args_doc}
class ZoneLockdownArgs {
  /// A list of IP addresses or CIDR ranges that will be allowed to access the URLs specified in the Zone Lockdown rule. You can include any number of `ip` or `ipRange` configurations.
  final pulumi.Input<List<ZoneLockdownConfiguration>> configurations;
  /// An informative summary of the rule. This value is sanitized and any tags will be removed.
  final pulumi.Input<String?>? description;
  /// When true, indicates that the rule is currently paused.
  final pulumi.Input<bool?>? paused;
  /// The priority of the rule to control the processing order. A lower number indicates higher priority. If not provided, any rules with a configured priority will be processed before rules without a priority.
  final pulumi.Input<double?>? priority;
  /// The URLs to include in the current WAF override. You can use wildcards. Each entered URL will be escaped before use, which means you can only use simple wildcard patterns.
  final pulumi.Input<List<String>> urls;
  /// Defines an identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [ZoneLockdownArgs].
  /// [configurations] A list of IP addresses or CIDR ranges that will be allowed to access the URLs specified in the Zone Lockdown rule. You can include any number of `ip` or `ipRange` configurations.
  /// [description] An informative summary of the rule. This value is sanitized and any tags will be removed.
  /// [paused] When true, indicates that the rule is currently paused.
  /// [priority] The priority of the rule to control the processing order. A lower number indicates higher priority. If not provided, any rules with a configured priority will be processed before rules without a priority.
  /// [urls] The URLs to include in the current WAF override. You can use wildcards. Each entered URL will be escaped before use, which means you can only use simple wildcard patterns.
  /// [zoneId] Defines an identifier.
  const ZoneLockdownArgs({
    required this.configurations,
    this.description,
    this.paused,
    this.priority,
    required this.urls,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurations': pulumi.Input.mapInputValue<List<ZoneLockdownConfiguration>, List<Map<String, dynamic>>>(configurations, (value) => pulumi.Input.encodeList<ZoneLockdownConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'paused': ?paused,
      'priority': ?priority,
      'urls': urls,
      'zoneId': zoneId,
    };
  }

  factory ZoneLockdownArgs.fromMap(Map<String, dynamic> map) {
    return ZoneLockdownArgs(
      configurations: pulumi.Input.fromValue(pulumi.Input.decodeList<ZoneLockdownConfiguration>(map['configurations']!, (value) => ZoneLockdownConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paused: (() { final guardedValue = map['paused']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      urls: pulumi.Input.fromValue((map['urls'] as List).cast<String>()),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
