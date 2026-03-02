// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_id.dart';

/// {@template pulumi_network_nsp_access_rule_args_doc}
/// The set of arguments for NspAccessRule.
/// {@endtemplate}
/// {@macro pulumi_network_nsp_access_rule_args_doc}
class NspAccessRuleArgs {
  /// The name of the NSP access rule.
  final pulumi.Input<String>? accessRuleName;
  /// Inbound address prefixes (IPv4/IPv6)
  final pulumi.Input<List<String>>? addressPrefixes;
  /// Direction that specifies whether the access rules is inbound/outbound.
  final pulumi.Input<String>? direction;
  /// Outbound rules email address format.
  final pulumi.Input<List<String>>? emailAddresses;
  /// Outbound rules fully qualified domain name format.
  final pulumi.Input<List<String>>? fullyQualifiedDomainNames;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The name of the access rule that is unique within a profile. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The name of the network security perimeter.
  final pulumi.Input<String> networkSecurityPerimeterName;
  /// Outbound rules phone number format.
  final pulumi.Input<List<String>>? phoneNumbers;
  /// The name of the NSP profile.
  final pulumi.Input<String> profileName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Inbound rules service tag names.
  final pulumi.Input<List<String>>? serviceTags;
  /// List of subscription ids
  final pulumi.Input<List<SubscriptionId>>? subscriptions;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NspAccessRuleArgs].
  /// [accessRuleName] The name of the NSP access rule.
  /// [addressPrefixes] Inbound address prefixes (IPv4/IPv6)
  /// [direction] Direction that specifies whether the access rules is inbound/outbound.
  /// [emailAddresses] Outbound rules email address format.
  /// [fullyQualifiedDomainNames] Outbound rules fully qualified domain name format.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [name] The name of the access rule that is unique within a profile. This name can be used to access the resource.
  /// [networkSecurityPerimeterName] The name of the network security perimeter.
  /// [phoneNumbers] Outbound rules phone number format.
  /// [profileName] The name of the NSP profile.
  /// [resourceGroupName] The name of the resource group.
  /// [serviceTags] Inbound rules service tag names.
  /// [subscriptions] List of subscription ids
  /// [tags] Resource tags.
  NspAccessRuleArgs({
    this.accessRuleName,
    this.addressPrefixes,
    this.direction,
    this.emailAddresses,
    this.fullyQualifiedDomainNames,
    this.id,
    this.location,
    this.name,
    required this.networkSecurityPerimeterName,
    this.phoneNumbers,
    required this.profileName,
    required this.resourceGroupName,
    this.serviceTags,
    this.subscriptions,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessRuleName': ?accessRuleName,
      'addressPrefixes': ?addressPrefixes,
      'direction': ?direction,
      'emailAddresses': ?emailAddresses,
      'fullyQualifiedDomainNames': ?fullyQualifiedDomainNames,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'networkSecurityPerimeterName': networkSecurityPerimeterName,
      'phoneNumbers': ?phoneNumbers,
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
      'serviceTags': ?serviceTags,
      'subscriptions': ?pulumi.Input.mapOptionalInputValue<List<SubscriptionId>, List<Map<String, dynamic>>>(subscriptions, (value) => pulumi.Input.encodeList<SubscriptionId, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory NspAccessRuleArgs.fromMap(Map<String, dynamic> map) {
    return NspAccessRuleArgs(
      accessRuleName: map['accessRuleName'] == null ? null : (map['accessRuleName']! as String).input(),
      addressPrefixes: map['addressPrefixes'] == null ? null : ((map['addressPrefixes']! as List).cast<String>()).input(),
      direction: map['direction'] == null ? null : (map['direction']! as String).input(),
      emailAddresses: map['emailAddresses'] == null ? null : ((map['emailAddresses']! as List).cast<String>()).input(),
      fullyQualifiedDomainNames: map['fullyQualifiedDomainNames'] == null ? null : ((map['fullyQualifiedDomainNames']! as List).cast<String>()).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      networkSecurityPerimeterName: (map['networkSecurityPerimeterName'] as String).input(),
      phoneNumbers: map['phoneNumbers'] == null ? null : ((map['phoneNumbers']! as List).cast<String>()).input(),
      profileName: (map['profileName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceTags: map['serviceTags'] == null ? null : ((map['serviceTags']! as List).cast<String>()).input(),
      subscriptions: map['subscriptions'] == null ? null : (pulumi.Input.decodeList<SubscriptionId>(map['subscriptions']!, (value) => SubscriptionId.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

