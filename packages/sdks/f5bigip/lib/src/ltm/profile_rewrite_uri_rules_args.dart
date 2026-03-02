// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'profile_rewrite_uri_rules_client.dart';
import 'profile_rewrite_uri_rules_server.dart';

/// {@template pulumi_ltm_profile_rewrite_uri_rules_profile_rewrite_uri_rules_args_doc}
/// The set of arguments for ProfileRewriteUriRules.
/// {@endtemplate}
/// {@macro pulumi_ltm_profile_rewrite_uri_rules_profile_rewrite_uri_rules_args_doc}
class ProfileRewriteUriRulesArgs {
  /// Block type. Each request is block type with following arguments.
  final pulumi.Input<List<ProfileRewriteUriRulesClient>> clients;
  /// Name of the rewrite profile. ( policy name should be in full path which is combination of partition and policy name )
  final pulumi.Input<String> profileName;
  /// Specifies the name of the uri rule.
  final pulumi.Input<String> ruleName;
  /// Specifies the type of the uri rule. Valid choices are: `request, response, both`. Default value is: `both`
  final pulumi.Input<String>? ruleType;
  /// Block type. Each request is block type with following arguments.
  final pulumi.Input<List<ProfileRewriteUriRulesServer>> servers;

  /// Creates a new [ProfileRewriteUriRulesArgs].
  /// [clients] Block type. Each request is block type with following arguments.
  /// [profileName] Name of the rewrite profile. ( policy name should be in full path which is combination of partition and policy name )
  /// [ruleName] Specifies the name of the uri rule.
  /// [ruleType] Specifies the type of the uri rule. Valid choices are: `request, response, both`. Default value is: `both`
  /// [servers] Block type. Each request is block type with following arguments.
  ProfileRewriteUriRulesArgs({
    required this.clients,
    required this.profileName,
    required this.ruleName,
    this.ruleType,
    required this.servers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clients': pulumi.Input.mapInputValue<List<ProfileRewriteUriRulesClient>, List<Map<String, dynamic>>>(clients, (value) => pulumi.Input.encodeList<ProfileRewriteUriRulesClient, Map<String, dynamic>>(value, (value) => value.toMap())),
      'profileName': profileName,
      'ruleName': ruleName,
      'ruleType': ?ruleType,
      'servers': pulumi.Input.mapInputValue<List<ProfileRewriteUriRulesServer>, List<Map<String, dynamic>>>(servers, (value) => pulumi.Input.encodeList<ProfileRewriteUriRulesServer, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ProfileRewriteUriRulesArgs.fromMap(Map<String, dynamic> map) {
    return ProfileRewriteUriRulesArgs(
      clients: (pulumi.Input.decodeList<ProfileRewriteUriRulesClient>(map['clients'], (value) => ProfileRewriteUriRulesClient.fromMap((value as Map).cast<String, dynamic>()))).input(),
      profileName: (map['profileName'] as String).input(),
      ruleName: (map['ruleName'] as String).input(),
      ruleType: map['ruleType'] == null ? null : (map['ruleType'] as String).input(),
      servers: (pulumi.Input.decodeList<ProfileRewriteUriRulesServer>(map['servers'], (value) => ProfileRewriteUriRulesServer.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

