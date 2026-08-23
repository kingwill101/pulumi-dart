// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkSecurityPerimeterAccessRule resources.
class NetworkSecurityPerimeterAccessRuleState {
  /// Specifies a list of CIDRs. Can only be specified when direction is set to `Inbound`. Conflicts with `fqdns`, `serviceTags`, `subscriptionIds`.
  final pulumi.Input<List<String>>? addressPrefixes;
  /// The direction of the rule. Possible values are `Inbound` and `Outbound`. Changing this forces a new Network Security Perimeter Access Rule to be created.
  final pulumi.Input<String>? direction;
  /// Specifies a list of fully qualified domain names. Can only be specified when direction is set to `Outbound`. Conflicts with `addressPrefixes`, `serviceTags`, and `subscriptionIds`.
  final pulumi.Input<List<String>>? fqdns;
  /// The name which should be used for this Network Security Perimeter Access Rule. Changing this forces a new Network Security Perimeter Access Rule to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Network Security Perimeter Profile within which this Access Rule is created. Changing this forces a new Network Security Perimeter Access Rule to be created.
  final pulumi.Input<String>? networkSecurityPerimeterProfileId;
  /// Specifies a list of service tags. Can only be specified when direction is set to `Inbound`. Conflicts with `addressPrefixes`, `fqdns`, and `subscriptionIds`.
  final pulumi.Input<List<String>>? serviceTags;
  /// Specifies a list of subscription IDs this rule applies to. Can only be specified when direction is set to `Inbound`. Conflicts with `addressPrefixes`, `fqdns`, and `serviceTags`.
  final pulumi.Input<List<String>>? subscriptionIds;

  /// Creates a new [NetworkSecurityPerimeterAccessRuleState].
  /// [addressPrefixes] Specifies a list of CIDRs. Can only be specified when direction is set to `Inbound`. Conflicts with `fqdns`, `serviceTags`, `subscriptionIds`.
  /// [direction] The direction of the rule. Possible values are `Inbound` and `Outbound`. Changing this forces a new Network Security Perimeter Access Rule to be created.
  /// [fqdns] Specifies a list of fully qualified domain names. Can only be specified when direction is set to `Outbound`. Conflicts with `addressPrefixes`, `serviceTags`, and `subscriptionIds`.
  /// [name] The name which should be used for this Network Security Perimeter Access Rule. Changing this forces a new Network Security Perimeter Access Rule to be created.
  /// [networkSecurityPerimeterProfileId] The ID of the Network Security Perimeter Profile within which this Access Rule is created. Changing this forces a new Network Security Perimeter Access Rule to be created.
  /// [serviceTags] Specifies a list of service tags. Can only be specified when direction is set to `Inbound`. Conflicts with `addressPrefixes`, `fqdns`, and `subscriptionIds`.
  /// [subscriptionIds] Specifies a list of subscription IDs this rule applies to. Can only be specified when direction is set to `Inbound`. Conflicts with `addressPrefixes`, `fqdns`, and `serviceTags`.
  const NetworkSecurityPerimeterAccessRuleState({
    this.addressPrefixes,
    this.direction,
    this.fqdns,
    this.name,
    this.networkSecurityPerimeterProfileId,
    this.serviceTags,
    this.subscriptionIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefixes': ?addressPrefixes,
      'direction': ?direction,
      'fqdns': ?fqdns,
      'name': ?name,
      'networkSecurityPerimeterProfileId': ?networkSecurityPerimeterProfileId,
      'serviceTags': ?serviceTags,
      'subscriptionIds': ?subscriptionIds,
    };
  }

  factory NetworkSecurityPerimeterAccessRuleState.fromMap(Map<String, dynamic> map) {
    return NetworkSecurityPerimeterAccessRuleState(
      addressPrefixes: (() { final guardedValue = map['addressPrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fqdns: (() { final guardedValue = map['fqdns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkSecurityPerimeterProfileId: (() { final guardedValue = map['networkSecurityPerimeterProfileId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceTags: (() { final guardedValue = map['serviceTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subscriptionIds: (() { final guardedValue = map['subscriptionIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
