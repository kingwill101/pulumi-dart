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
    pulumi.Output<String>? accessRuleName,
    pulumi.Output<List<String>>? addressPrefixes,
    pulumi.Output<String>? direction,
    pulumi.Output<List<String>>? emailAddresses,
    pulumi.Output<List<String>>? fullyQualifiedDomainNames,
    pulumi.Output<String>? id,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> networkSecurityPerimeterName,
    pulumi.Output<List<String>>? phoneNumbers,
    required pulumi.Output<String> profileName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<List<String>>? serviceTags,
    pulumi.Output<List<SubscriptionId>>? subscriptions,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      accessRuleName = pulumi.Input.asOptionalInput<String>(accessRuleName),
      addressPrefixes = pulumi.Input.asOptionalInput<List<String>>(addressPrefixes),
      direction = pulumi.Input.asOptionalInput<String>(direction),
      emailAddresses = pulumi.Input.asOptionalInput<List<String>>(emailAddresses),
      fullyQualifiedDomainNames = pulumi.Input.asOptionalInput<List<String>>(fullyQualifiedDomainNames),
      id = pulumi.Input.asOptionalInput<String>(id),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkSecurityPerimeterName = pulumi.Input.asInput<String>(networkSecurityPerimeterName),
      phoneNumbers = pulumi.Input.asOptionalInput<List<String>>(phoneNumbers),
      profileName = pulumi.Input.asInput<String>(profileName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceTags = pulumi.Input.asOptionalInput<List<String>>(serviceTags),
      subscriptions = pulumi.Input.asOptionalInput<List<SubscriptionId>>(subscriptions),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      accessRuleName: map['accessRuleName'] == null ? null : pulumi.Output.create<String>(map['accessRuleName'] as String),
      addressPrefixes: map['addressPrefixes'] == null ? null : pulumi.Output.create<List<String>>((map['addressPrefixes'] as List).cast<String>()),
      direction: map['direction'] == null ? null : pulumi.Output.create<String>(map['direction'] as String),
      emailAddresses: map['emailAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['emailAddresses'] as List).cast<String>()),
      fullyQualifiedDomainNames: map['fullyQualifiedDomainNames'] == null ? null : pulumi.Output.create<List<String>>((map['fullyQualifiedDomainNames'] as List).cast<String>()),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkSecurityPerimeterName: pulumi.Output.create<String>(map['networkSecurityPerimeterName'] as String),
      phoneNumbers: map['phoneNumbers'] == null ? null : pulumi.Output.create<List<String>>((map['phoneNumbers'] as List).cast<String>()),
      profileName: pulumi.Output.create<String>(map['profileName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceTags: map['serviceTags'] == null ? null : pulumi.Output.create<List<String>>((map['serviceTags'] as List).cast<String>()),
      subscriptions: map['subscriptions'] == null ? null : pulumi.Output.create<List<SubscriptionId>>(pulumi.Input.decodeList<SubscriptionId>(map['subscriptions'], (value) => SubscriptionId.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

