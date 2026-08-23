// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_rule_collection_group_application_rule_collection_rule_http_header.dart';
import 'firewall_policy_rule_collection_group_application_rule_collection_rule_protocol.dart';

class FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRule {
  final pulumi.Input<String>? description;
  final pulumi.Input<List<String>>? destinationAddresses;
  /// Specifies a list of destination FQDN tags.
  final pulumi.Input<List<String>>? destinationFqdnTags;
  final pulumi.Input<List<String>>? destinationFqdns;
  /// Specifies a list of destination URLs for which policy should hold. Needs Premium SKU for Firewall Policy. Conflicts with `destinationFqdns`.
  final pulumi.Input<List<String>>? destinationUrls;
  /// Specifies a list of HTTP/HTTPS headers to insert. One or more `httpHeaders` blocks as defined below.
  final pulumi.Input<List<FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRuleHttpHeader>>? httpHeaders;
  /// The name which should be used for this Firewall Policy Rule Collection Group. Changing this forces a new Firewall Policy Rule Collection Group to be created.
  final pulumi.Input<String> name;
  final pulumi.Input<List<FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRuleProtocol>>? protocols;
  final pulumi.Input<List<String>>? sourceAddresses;
  final pulumi.Input<List<String>>? sourceIpGroups;
  /// Boolean specifying if TLS shall be terminated (true) or not (false). Must be `true` when using `destinationUrls`. Needs Premium SKU for Firewall Policy.
  final pulumi.Input<bool>? terminateTls;
  /// Specifies a list of web categories to which access is denied or allowed depending on the value of `action` above. Needs Premium SKU for Firewall Policy.
  final pulumi.Input<List<String>>? webCategories;

  /// Creates a new [FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRule].
  /// [description] Optional.
  /// [destinationAddresses] Optional.
  /// [destinationFqdnTags] Specifies a list of destination FQDN tags.
  /// [destinationFqdns] Optional.
  /// [destinationUrls] Specifies a list of destination URLs for which policy should hold. Needs Premium SKU for Firewall Policy. Conflicts with `destinationFqdns`.
  /// [httpHeaders] Specifies a list of HTTP/HTTPS headers to insert. One or more `httpHeaders` blocks as defined below.
  /// [name] The name which should be used for this Firewall Policy Rule Collection Group. Changing this forces a new Firewall Policy Rule Collection Group to be created.
  /// [protocols] Optional.
  /// [sourceAddresses] Optional.
  /// [sourceIpGroups] Optional.
  /// [terminateTls] Boolean specifying if TLS shall be terminated (true) or not (false). Must be `true` when using `destinationUrls`. Needs Premium SKU for Firewall Policy.
  /// [webCategories] Specifies a list of web categories to which access is denied or allowed depending on the value of `action` above. Needs Premium SKU for Firewall Policy.
  const FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRule({
    this.description,
    this.destinationAddresses,
    this.destinationFqdnTags,
    this.destinationFqdns,
    this.destinationUrls,
    this.httpHeaders,
    required this.name,
    this.protocols,
    this.sourceAddresses,
    this.sourceIpGroups,
    this.terminateTls,
    this.webCategories,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'destinationAddresses': ?destinationAddresses,
      'destinationFqdnTags': ?destinationFqdnTags,
      'destinationFqdns': ?destinationFqdns,
      'destinationUrls': ?destinationUrls,
      'httpHeaders': ?pulumi.Input.mapOptionalInputValue<List<FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRuleHttpHeader>, List<Map<String, dynamic>>>(httpHeaders, (value) => pulumi.Input.encodeList<FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRuleHttpHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'protocols': ?pulumi.Input.mapOptionalInputValue<List<FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRuleProtocol>, List<Map<String, dynamic>>>(protocols, (value) => pulumi.Input.encodeList<FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRuleProtocol, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceAddresses': ?sourceAddresses,
      'sourceIpGroups': ?sourceIpGroups,
      'terminateTls': ?terminateTls,
      'webCategories': ?webCategories,
    };
  }

  factory FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRule.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRule(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationAddresses: (() { final guardedValue = map['destinationAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      destinationFqdnTags: (() { final guardedValue = map['destinationFqdnTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      destinationFqdns: (() { final guardedValue = map['destinationFqdns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      destinationUrls: (() { final guardedValue = map['destinationUrls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      httpHeaders: (() { final guardedValue = map['httpHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRuleHttpHeader>(guardedValue, (value) => FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRuleHttpHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      protocols: (() { final guardedValue = map['protocols']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRuleProtocol>(guardedValue, (value) => FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRuleProtocol.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sourceAddresses: (() { final guardedValue = map['sourceAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sourceIpGroups: (() { final guardedValue = map['sourceIpGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      terminateTls: (() { final guardedValue = map['terminateTls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      webCategories: (() { final guardedValue = map['webCategories']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
