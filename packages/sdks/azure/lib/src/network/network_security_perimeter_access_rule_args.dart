// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_network_security_perimeter_access_rule_network_security_perimeter_access_rule_args_doc}
/// The set of arguments for NetworkSecurityPerimeterAccessRule.
/// {@endtemplate}
/// {@macro pulumi_network_network_security_perimeter_access_rule_network_security_perimeter_access_rule_args_doc}
class NetworkSecurityPerimeterAccessRuleArgs {
  /// Specifies a list of CIDRs. Can only be specified when direction is set to `Inbound`. Conflicts with `fqdns`, `service_tags`, `subscription_ids`.
  final pulumi.Input<List<String>>? addressPrefixes;

  /// The direction of the rule. Possible values are `Inbound` and `Outbound`. Changing this forces a new Network Security Perimeter Access Rule to be created.
  final pulumi.Input<String> direction;

  /// Specifies a list of fully qualified domain names. Can only be specified when direction is set to `Outbound`. Conflicts with `address_prefixes`, `service_tags`, and `subscription_ids`.
  final pulumi.Input<List<String>>? fqdns;

  /// The name which should be used for this Network Security Perimeter Access Rule. Changing this forces a new Network Security Perimeter Access Rule to be created.
  final pulumi.Input<String>? name;

  /// The ID of the Network Security Perimeter Profile within which this Access Rule is created. Changing this forces a new Network Security Perimeter Access Rule to be created.
  final pulumi.Input<String> networkSecurityPerimeterProfileId;

  /// Specifies a list of service tags. Can only be specified when direction is set to `Inbound`. Conflicts with `address_prefixes`, `fqdns`, and `subscription_ids`.
  final pulumi.Input<List<String>>? serviceTags;

  /// Specifies a list of subscription IDs this rule applies to. Can only be specified when direction is set to `Inbound`. Conflicts with `address_prefixes`, `fqdns`, and `service_tags`.
  final pulumi.Input<List<String>>? subscriptionIds;

  /// Creates a new [NetworkSecurityPerimeterAccessRuleArgs].
  /// [addressPrefixes] Specifies a list of CIDRs. Can only be specified when direction is set to `Inbound`. Conflicts with `fqdns`, `service_tags`, `subscription_ids`.
  /// [direction] The direction of the rule. Possible values are `Inbound` and `Outbound`. Changing this forces a new Network Security Perimeter Access Rule to be created.
  /// [fqdns] Specifies a list of fully qualified domain names. Can only be specified when direction is set to `Outbound`. Conflicts with `address_prefixes`, `service_tags`, and `subscription_ids`.
  /// [name] The name which should be used for this Network Security Perimeter Access Rule. Changing this forces a new Network Security Perimeter Access Rule to be created.
  /// [networkSecurityPerimeterProfileId] The ID of the Network Security Perimeter Profile within which this Access Rule is created. Changing this forces a new Network Security Perimeter Access Rule to be created.
  /// [serviceTags] Specifies a list of service tags. Can only be specified when direction is set to `Inbound`. Conflicts with `address_prefixes`, `fqdns`, and `subscription_ids`.
  /// [subscriptionIds] Specifies a list of subscription IDs this rule applies to. Can only be specified when direction is set to `Inbound`. Conflicts with `address_prefixes`, `fqdns`, and `service_tags`.
  NetworkSecurityPerimeterAccessRuleArgs({
    this.addressPrefixes,
    required this.direction,
    this.fqdns,
    this.name,
    required this.networkSecurityPerimeterProfileId,
    this.serviceTags,
    this.subscriptionIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefixes': ?addressPrefixes,
      'direction': direction,
      'fqdns': ?fqdns,
      'name': ?name,
      'networkSecurityPerimeterProfileId': networkSecurityPerimeterProfileId,
      'serviceTags': ?serviceTags,
      'subscriptionIds': ?subscriptionIds,
    };
  }

  factory NetworkSecurityPerimeterAccessRuleArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return NetworkSecurityPerimeterAccessRuleArgs(
      addressPrefixes: (() {
        final guardedValue = map['addressPrefixes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      direction: pulumi.Input.fromValue(map['direction'] as String),
      fqdns: (() {
        final guardedValue = map['fqdns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkSecurityPerimeterProfileId: pulumi.Input.fromValue(
        map['networkSecurityPerimeterProfileId'] as String,
      ),
      serviceTags: (() {
        final guardedValue = map['serviceTags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      subscriptionIds: (() {
        final guardedValue = map['subscriptionIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
