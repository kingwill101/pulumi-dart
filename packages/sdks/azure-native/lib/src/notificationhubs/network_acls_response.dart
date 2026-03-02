// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_rule_response.dart';
import 'public_internet_authorization_rule_response.dart';

/// A collection of network authorization rules.
class NetworkAclsResponse {
  /// List of IP rules.
  final pulumi.Input<List<IpRuleResponse>>? ipRules;
  /// A default (public Internet) network authorization rule, which contains rights if no other network rule matches.
  final pulumi.Input<PublicInternetAuthorizationRuleResponse>? publicNetworkRule;

  /// Creates a new [NetworkAclsResponse].
  /// [ipRules] List of IP rules.
  /// [publicNetworkRule] A default (public Internet) network authorization rule, which contains rights if no other network rule matches.
  NetworkAclsResponse({
    this.ipRules,
    this.publicNetworkRule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipRules': ?pulumi.Input.mapOptionalInputValue<List<IpRuleResponse>, List<Map<String, dynamic>>>(ipRules, (value) => pulumi.Input.encodeList<IpRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'publicNetworkRule': ?pulumi.Input.mapOptionalInputValue<PublicInternetAuthorizationRuleResponse, Map<String, dynamic>>(publicNetworkRule, (value) => value.toMap()),
    };
  }

  factory NetworkAclsResponse.fromMap(Map<String, dynamic> map) {
    return NetworkAclsResponse(
      ipRules: map['ipRules'] == null ? null : (pulumi.Input.decodeList<IpRuleResponse>(map['ipRules']!, (value) => IpRuleResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      publicNetworkRule: map['publicNetworkRule'] == null ? null : (PublicInternetAuthorizationRuleResponse.fromMap((map['publicNetworkRule']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

