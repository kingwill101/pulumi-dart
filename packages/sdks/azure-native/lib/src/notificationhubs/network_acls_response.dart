// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_rule_response.dart';
import 'public_internet_authorization_rule_response.dart';

/// A collection of network authorization rules.
class NetworkAclsResponse {
  /// List of IP rules.
  final List<IpRuleResponse>? ipRules;
  /// A default (public Internet) network authorization rule, which contains rights if no other network rule matches.
  final PublicInternetAuthorizationRuleResponse? publicNetworkRule;

  /// Creates a new [NetworkAclsResponse].
  /// [ipRules] List of IP rules.
  /// [publicNetworkRule] A default (public Internet) network authorization rule, which contains rights if no other network rule matches.
  NetworkAclsResponse({
    this.ipRules,
    this.publicNetworkRule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipRules': ?ipRules == null ? null : pulumi.Input.encodeList<IpRuleResponse, Map<String, dynamic>>(ipRules!, (value) => value.toMap()),
      'publicNetworkRule': ?publicNetworkRule == null ? null : publicNetworkRule!.toMap(),
    };
  }

  factory NetworkAclsResponse.fromMap(Map<String, dynamic> map) {
    return NetworkAclsResponse(
      ipRules: map['ipRules'] == null ? null : pulumi.Input.decodeList<IpRuleResponse>(map['ipRules'], (value) => IpRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      publicNetworkRule: map['publicNetworkRule'] == null ? null : PublicInternetAuthorizationRuleResponse.fromMap((map['publicNetworkRule'] as Map).cast<String, dynamic>()),
    );
  }
}

