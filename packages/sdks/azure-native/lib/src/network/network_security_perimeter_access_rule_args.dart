// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_id.dart';

/// {@template pulumi_network_network_security_perimeter_access_rule_args_doc}
/// The set of arguments for NetworkSecurityPerimeterAccessRule.
/// {@endtemplate}
/// {@macro pulumi_network_network_security_perimeter_access_rule_args_doc}
class NetworkSecurityPerimeterAccessRuleArgs {
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

  /// Creates a new [NetworkSecurityPerimeterAccessRuleArgs].
  /// [accessRuleName] The name of the NSP access rule.
  /// [addressPrefixes] Inbound address prefixes (IPv4/IPv6)
  /// [direction] Direction that specifies whether the access rules is inbound/outbound.
  /// [emailAddresses] Outbound rules email address format.
  /// [fullyQualifiedDomainNames] Outbound rules fully qualified domain name format.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [networkSecurityPerimeterName] The name of the network security perimeter.
  /// [phoneNumbers] Outbound rules phone number format.
  /// [profileName] The name of the NSP profile.
  /// [resourceGroupName] The name of the resource group.
  /// [serviceTags] Inbound rules service tag names.
  /// [subscriptions] List of subscription ids
  /// [tags] Resource tags.
  const NetworkSecurityPerimeterAccessRuleArgs({
    this.accessRuleName,
    this.addressPrefixes,
    this.direction,
    this.emailAddresses,
    this.fullyQualifiedDomainNames,
    this.id,
    this.location,
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
      'networkSecurityPerimeterName': networkSecurityPerimeterName,
      'phoneNumbers': ?phoneNumbers,
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
      'serviceTags': ?serviceTags,
      'subscriptions': ?pulumi.Input.mapOptionalInputValue<List<SubscriptionId>, List<Map<String, dynamic>>>(subscriptions, (value) => pulumi.Input.encodeList<SubscriptionId, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory NetworkSecurityPerimeterAccessRuleArgs.fromMap(Map<String, dynamic> map) {
    return NetworkSecurityPerimeterAccessRuleArgs(
      accessRuleName: (() { final guardedValue = map['accessRuleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      addressPrefixes: (() { final guardedValue = map['addressPrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      emailAddresses: (() { final guardedValue = map['emailAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      fullyQualifiedDomainNames: (() { final guardedValue = map['fullyQualifiedDomainNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkSecurityPerimeterName: pulumi.Input.fromValue(map['networkSecurityPerimeterName'] as String),
      phoneNumbers: (() { final guardedValue = map['phoneNumbers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      profileName: pulumi.Input.fromValue(map['profileName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceTags: (() { final guardedValue = map['serviceTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subscriptions: (() { final guardedValue = map['subscriptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubscriptionId>(guardedValue, (value) => SubscriptionId.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

