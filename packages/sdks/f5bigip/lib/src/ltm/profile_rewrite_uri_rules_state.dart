// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'profile_rewrite_uri_rules_client.dart';
import 'profile_rewrite_uri_rules_server.dart';

/// Input properties used for looking up and filtering ProfileRewriteUriRules resources.
class ProfileRewriteUriRulesState {
  /// Block type. Each request is block type with following arguments.
  final pulumi.Input<List<ProfileRewriteUriRulesClient>>? clients;
  /// Name of the rewrite profile. ( policy name should be in full path which is combination of partition and policy name )
  final pulumi.Input<String>? profileName;
  /// Specifies the name of the uri rule.
  final pulumi.Input<String>? ruleName;
  /// Specifies the type of the uri rule. Valid choices are: `request, response, both`. Default value is: `both`
  final pulumi.Input<String>? ruleType;
  /// Block type. Each request is block type with following arguments.
  final pulumi.Input<List<ProfileRewriteUriRulesServer>>? servers;

  /// Creates a new [ProfileRewriteUriRulesState].
  /// [clients] Block type. Each request is block type with following arguments.
  /// [profileName] Name of the rewrite profile. ( policy name should be in full path which is combination of partition and policy name )
  /// [ruleName] Specifies the name of the uri rule.
  /// [ruleType] Specifies the type of the uri rule. Valid choices are: `request, response, both`. Default value is: `both`
  /// [servers] Block type. Each request is block type with following arguments.
  ProfileRewriteUriRulesState({
    this.clients,
    this.profileName,
    this.ruleName,
    this.ruleType,
    this.servers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clients': ?pulumi.Input.mapOptionalInputValue<List<ProfileRewriteUriRulesClient>, List<Map<String, dynamic>>>(clients, (value) => pulumi.Input.encodeList<ProfileRewriteUriRulesClient, Map<String, dynamic>>(value, (value) => value.toMap())),
      'profileName': ?profileName,
      'ruleName': ?ruleName,
      'ruleType': ?ruleType,
      'servers': ?pulumi.Input.mapOptionalInputValue<List<ProfileRewriteUriRulesServer>, List<Map<String, dynamic>>>(servers, (value) => pulumi.Input.encodeList<ProfileRewriteUriRulesServer, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ProfileRewriteUriRulesState.fromMap(Map<String, dynamic> map) {
    return ProfileRewriteUriRulesState(
      clients: map['clients'] == null ? null : (pulumi.Input.decodeList<ProfileRewriteUriRulesClient>(map['clients'], (value) => ProfileRewriteUriRulesClient.fromMap((value as Map).cast<String, dynamic>()))).input(),
      profileName: map['profileName'] == null ? null : (map['profileName'] as String).input(),
      ruleName: map['ruleName'] == null ? null : (map['ruleName'] as String).input(),
      ruleType: map['ruleType'] == null ? null : (map['ruleType'] as String).input(),
      servers: map['servers'] == null ? null : (pulumi.Input.decodeList<ProfileRewriteUriRulesServer>(map['servers'], (value) => ProfileRewriteUriRulesServer.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

