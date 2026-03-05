// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'perimeter_based_access_rule_response.dart';
import 'subscription_id_response.dart';

/// Result data returned by getNetworkSecurityPerimeterAccessRule.
class GetNetworkSecurityPerimeterAccessRuleResult {
  /// Inbound address prefixes (IPv4/IPv6)
  final List<String>? addressPrefixes;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Direction that specifies whether the access rules is inbound/outbound.
  final String? direction;
  /// Outbound rules email address format.
  final List<String>? emailAddresses;
  /// Outbound rules fully qualified domain name format.
  final List<String>? fullyQualifiedDomainNames;
  /// Resource ID.
  final String id;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String name;
  /// Rule specified by the perimeter id.
  final List<PerimeterBasedAccessRuleResponse> networkSecurityPerimeters;
  /// Outbound rules phone number format.
  final List<String>? phoneNumbers;
  /// The provisioning state of the scope assignment resource.
  final String provisioningState;
  /// Inbound rules service tag names.
  final List<String>? serviceTags;
  /// List of subscription ids
  final List<SubscriptionIdResponse>? subscriptions;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String type;

  /// Creates a new [GetNetworkSecurityPerimeterAccessRuleResult].
  /// [addressPrefixes] Inbound address prefixes (IPv4/IPv6)
  /// [azureApiVersion] The Azure API version of the resource.
  /// [direction] Direction that specifies whether the access rules is inbound/outbound.
  /// [emailAddresses] Outbound rules email address format.
  /// [fullyQualifiedDomainNames] Outbound rules fully qualified domain name format.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [networkSecurityPerimeters] Rule specified by the perimeter id.
  /// [phoneNumbers] Outbound rules phone number format.
  /// [provisioningState] The provisioning state of the scope assignment resource.
  /// [serviceTags] Inbound rules service tag names.
  /// [subscriptions] List of subscription ids
  /// [tags] Resource tags.
  /// [type] Resource type.
  GetNetworkSecurityPerimeterAccessRuleResult({
    this.addressPrefixes,
    required this.azureApiVersion,
    this.direction,
    this.emailAddresses,
    this.fullyQualifiedDomainNames,
    required this.id,
    this.location,
    required this.name,
    required this.networkSecurityPerimeters,
    this.phoneNumbers,
    required this.provisioningState,
    this.serviceTags,
    this.subscriptions,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefixes': ?addressPrefixes,
      'azureApiVersion': azureApiVersion,
      'direction': ?direction,
      'emailAddresses': ?emailAddresses,
      'fullyQualifiedDomainNames': ?fullyQualifiedDomainNames,
      'id': id,
      'location': ?location,
      'name': name,
      'networkSecurityPerimeters': pulumi.Input.encodeList<PerimeterBasedAccessRuleResponse, Map<String, dynamic>>(networkSecurityPerimeters, (value) => value.toMap()),
      'phoneNumbers': ?phoneNumbers,
      'provisioningState': provisioningState,
      'serviceTags': ?serviceTags,
      'subscriptions': ?(() { final guardedValue = subscriptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<SubscriptionIdResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetNetworkSecurityPerimeterAccessRuleResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkSecurityPerimeterAccessRuleResult(
      addressPrefixes: (() { final guardedValue = map['addressPrefixes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      emailAddresses: (() { final guardedValue = map['emailAddresses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      fullyQualifiedDomainNames: (() { final guardedValue = map['fullyQualifiedDomainNames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      networkSecurityPerimeters: pulumi.Input.decodeList<PerimeterBasedAccessRuleResponse>(map['networkSecurityPerimeters']!, (value) => PerimeterBasedAccessRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      phoneNumbers: (() { final guardedValue = map['phoneNumbers']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      provisioningState: map['provisioningState'] as String,
      serviceTags: (() { final guardedValue = map['serviceTags']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      subscriptions: (() { final guardedValue = map['subscriptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubscriptionIdResponse>(guardedValue, (value) => SubscriptionIdResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

