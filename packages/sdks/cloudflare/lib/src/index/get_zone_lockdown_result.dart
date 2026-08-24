// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zone_lockdown_configuration.dart';
import 'get_zone_lockdown_filter.dart';

/// Result data returned by getZoneLockdown.
class GetZoneLockdownResult {
  /// A list of IP addresses or CIDR ranges that will be allowed to access the URLs specified in the Zone Lockdown rule. You can include any number of `ip` or `ipRange` configurations.
  final List<GetZoneLockdownConfiguration>? configurations;
  /// The timestamp of when the rule was created.
  final String? createdOn;
  /// An informative summary of the rule.
  final String? description;
  final GetZoneLockdownFilter? filter;
  /// The unique identifier of the Zone Lockdown rule.
  final String? id;
  /// The unique identifier of the Zone Lockdown rule.
  final String? lockDownsId;
  /// The timestamp of when the rule was last modified.
  final String? modifiedOn;
  /// When true, indicates that the rule is currently paused.
  final bool? paused;
  /// The URLs to include in the rule definition. You can use wildcards. Each entered URL will be escaped before use, which means you can only use simple wildcard patterns.
  final List<String>? urls;
  /// Defines an identifier.
  final String? zoneId;

  /// Creates a new [GetZoneLockdownResult].
  /// [configurations] A list of IP addresses or CIDR ranges that will be allowed to access the URLs specified in the Zone Lockdown rule. You can include any number of `ip` or `ipRange` configurations.
  /// [createdOn] The timestamp of when the rule was created.
  /// [description] An informative summary of the rule.
  /// [filter] Optional.
  /// [id] The unique identifier of the Zone Lockdown rule.
  /// [lockDownsId] The unique identifier of the Zone Lockdown rule.
  /// [modifiedOn] The timestamp of when the rule was last modified.
  /// [paused] When true, indicates that the rule is currently paused.
  /// [urls] The URLs to include in the rule definition. You can use wildcards. Each entered URL will be escaped before use, which means you can only use simple wildcard patterns.
  /// [zoneId] Defines an identifier.
  const GetZoneLockdownResult({
    this.configurations,
    this.createdOn,
    this.description,
    this.filter,
    this.id,
    this.lockDownsId,
    this.modifiedOn,
    this.paused,
    this.urls,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurations': ?(() { final guardedValue = configurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZoneLockdownConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'createdOn': ?createdOn,
      'description': ?description,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'lockDownsId': ?lockDownsId,
      'modifiedOn': ?modifiedOn,
      'paused': ?paused,
      'urls': ?urls,
      'zoneId': ?zoneId,
    };
  }

  factory GetZoneLockdownResult.fromMap(Map<String, dynamic> map) {
    return GetZoneLockdownResult(
      configurations: (() { final guardedValue = map['configurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZoneLockdownConfiguration>(guardedValue, (value) => GetZoneLockdownConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetZoneLockdownFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lockDownsId: (() { final guardedValue = map['lockDownsId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      paused: (() { final guardedValue = map['paused']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      urls: (() { final guardedValue = map['urls']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
