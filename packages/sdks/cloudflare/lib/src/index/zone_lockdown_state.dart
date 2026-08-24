// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_lockdown_configuration.dart';

/// Input properties used for looking up and filtering ZoneLockdown resources.
class ZoneLockdownState {
  /// A list of IP addresses or CIDR ranges that will be allowed to access the URLs specified in the Zone Lockdown rule. You can include any number of `ip` or `ipRange` configurations.
  final pulumi.Input<List<ZoneLockdownConfiguration>?>? configurations;
  /// The timestamp of when the rule was created.
  final pulumi.Input<String?>? createdOn;
  /// An informative summary of the rule. This value is sanitized and any tags will be removed.
  final pulumi.Input<String?>? description;
  /// The timestamp of when the rule was last modified.
  final pulumi.Input<String?>? modifiedOn;
  /// When true, indicates that the rule is currently paused.
  final pulumi.Input<bool?>? paused;
  /// The priority of the rule to control the processing order. A lower number indicates higher priority. If not provided, any rules with a configured priority will be processed before rules without a priority.
  final pulumi.Input<double?>? priority;
  /// The URLs to include in the current WAF override. You can use wildcards. Each entered URL will be escaped before use, which means you can only use simple wildcard patterns.
  final pulumi.Input<List<String>?>? urls;
  /// Defines an identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [ZoneLockdownState].
  /// [configurations] A list of IP addresses or CIDR ranges that will be allowed to access the URLs specified in the Zone Lockdown rule. You can include any number of `ip` or `ipRange` configurations.
  /// [createdOn] The timestamp of when the rule was created.
  /// [description] An informative summary of the rule. This value is sanitized and any tags will be removed.
  /// [modifiedOn] The timestamp of when the rule was last modified.
  /// [paused] When true, indicates that the rule is currently paused.
  /// [priority] The priority of the rule to control the processing order. A lower number indicates higher priority. If not provided, any rules with a configured priority will be processed before rules without a priority.
  /// [urls] The URLs to include in the current WAF override. You can use wildcards. Each entered URL will be escaped before use, which means you can only use simple wildcard patterns.
  /// [zoneId] Defines an identifier.
  const ZoneLockdownState({
    this.configurations,
    this.createdOn,
    this.description,
    this.modifiedOn,
    this.paused,
    this.priority,
    this.urls,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurations': ?pulumi.Input.mapOptionalInputValue<List<ZoneLockdownConfiguration>, List<Map<String, dynamic>>>(configurations, (value) => pulumi.Input.encodeList<ZoneLockdownConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createdOn': ?createdOn,
      'description': ?description,
      'modifiedOn': ?modifiedOn,
      'paused': ?paused,
      'priority': ?priority,
      'urls': ?urls,
      'zoneId': ?zoneId,
    };
  }

  factory ZoneLockdownState.fromMap(Map<String, dynamic> map) {
    return ZoneLockdownState(
      configurations: (() { final guardedValue = map['configurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZoneLockdownConfiguration>(guardedValue, (value) => ZoneLockdownConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paused: (() { final guardedValue = map['paused']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      urls: (() { final guardedValue = map['urls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
