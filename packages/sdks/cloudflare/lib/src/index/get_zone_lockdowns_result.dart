// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zone_lockdowns_result_configuration.dart';

class GetZoneLockdownsResult {
  /// A list of IP addresses or CIDR ranges that will be allowed to access the URLs specified in the Zone Lockdown rule. You can include any number of `ip` or `ipRange` configurations.
  final pulumi.Input<List<GetZoneLockdownsResultConfiguration>> configurations;
  /// The timestamp of when the rule was created.
  final pulumi.Input<String> createdOn;
  /// An informative summary of the rule.
  final pulumi.Input<String> description;
  /// The unique identifier of the Zone Lockdown rule.
  final pulumi.Input<String> id;
  /// The timestamp of when the rule was last modified.
  final pulumi.Input<String> modifiedOn;
  /// When true, indicates that the rule is currently paused.
  final pulumi.Input<bool> paused;
  /// The URLs to include in the rule definition. You can use wildcards. Each entered URL will be escaped before use, which means you can only use simple wildcard patterns.
  final pulumi.Input<List<String>> urls;

  /// Creates a new [GetZoneLockdownsResult].
  /// [configurations] A list of IP addresses or CIDR ranges that will be allowed to access the URLs specified in the Zone Lockdown rule. You can include any number of `ip` or `ipRange` configurations.
  /// [createdOn] The timestamp of when the rule was created.
  /// [description] An informative summary of the rule.
  /// [id] The unique identifier of the Zone Lockdown rule.
  /// [modifiedOn] The timestamp of when the rule was last modified.
  /// [paused] When true, indicates that the rule is currently paused.
  /// [urls] The URLs to include in the rule definition. You can use wildcards. Each entered URL will be escaped before use, which means you can only use simple wildcard patterns.
  const GetZoneLockdownsResult({
    required this.configurations,
    required this.createdOn,
    required this.description,
    required this.id,
    required this.modifiedOn,
    required this.paused,
    required this.urls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurations': pulumi.Input.mapInputValue<List<GetZoneLockdownsResultConfiguration>, List<Map<String, dynamic>>>(configurations, (value) => pulumi.Input.encodeList<GetZoneLockdownsResultConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createdOn': createdOn,
      'description': description,
      'id': id,
      'modifiedOn': modifiedOn,
      'paused': paused,
      'urls': urls,
    };
  }

  factory GetZoneLockdownsResult.fromMap(Map<String, dynamic> map) {
    return GetZoneLockdownsResult(
      configurations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZoneLockdownsResultConfiguration>(map['configurations']!, (value) => GetZoneLockdownsResultConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      createdOn: pulumi.Input.fromValue(map['createdOn'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      modifiedOn: pulumi.Input.fromValue(map['modifiedOn'] as String),
      paused: pulumi.Input.fromValue(map['paused'] as bool),
      urls: pulumi.Input.fromValue((map['urls'] as List).cast<String>()),
    );
  }
}
