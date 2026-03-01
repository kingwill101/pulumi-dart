// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_rule.dart';
import 'public_internet_authorization_rule.dart';

/// A collection of network authorization rules.
class NetworkAcls {
  /// List of IP rules.
  final List<IpRule>? ipRules;
  /// A default (public Internet) network authorization rule, which contains rights if no other network rule matches.
  final PublicInternetAuthorizationRule? publicNetworkRule;

  /// Creates a new [NetworkAcls].
  /// [ipRules] List of IP rules.
  /// [publicNetworkRule] A default (public Internet) network authorization rule, which contains rights if no other network rule matches.
  NetworkAcls({
    this.ipRules,
    this.publicNetworkRule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipRules': ?ipRules == null ? null : pulumi.Input.encodeList<IpRule, Map<String, dynamic>>(ipRules!, (value) => value.toMap()),
      'publicNetworkRule': ?publicNetworkRule == null ? null : publicNetworkRule!.toMap(),
    };
  }

  factory NetworkAcls.fromMap(Map<String, dynamic> map) {
    return NetworkAcls(
      ipRules: map['ipRules'] == null ? null : pulumi.Input.decodeList<IpRule>(map['ipRules'], (value) => IpRule.fromMap((value as Map).cast<String, dynamic>())),
      publicNetworkRule: map['publicNetworkRule'] == null ? null : PublicInternetAuthorizationRule.fromMap((map['publicNetworkRule'] as Map).cast<String, dynamic>()),
    );
  }
}

