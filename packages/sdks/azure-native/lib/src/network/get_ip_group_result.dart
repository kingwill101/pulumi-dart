// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';

/// Result data returned by getIpGroup.
class GetIpGroupResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// List of references to Firewall Policies resources that this IpGroups is associated with.
  final List<SubResourceResponse> firewallPolicies;
  /// List of references to Firewall resources that this IpGroups is associated with.
  final List<SubResourceResponse> firewalls;
  /// Resource ID.
  final String? id;
  /// IpAddresses/IpAddressPrefixes in the IpGroups resource.
  final List<String>? ipAddresses;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String name;
  /// The provisioning state of the IpGroups resource.
  final String provisioningState;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String type;

  /// Creates a new [GetIpGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [firewallPolicies] List of references to Firewall Policies resources that this IpGroups is associated with.
  /// [firewalls] List of references to Firewall resources that this IpGroups is associated with.
  /// [id] Resource ID.
  /// [ipAddresses] IpAddresses/IpAddressPrefixes in the IpGroups resource.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [provisioningState] The provisioning state of the IpGroups resource.
  /// [tags] Resource tags.
  /// [type] Resource type.
  const GetIpGroupResult({
    required this.azureApiVersion,
    required this.etag,
    required this.firewallPolicies,
    required this.firewalls,
    this.id,
    this.ipAddresses,
    this.location,
    required this.name,
    required this.provisioningState,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': etag,
      'firewallPolicies': pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(firewallPolicies, (value) => value.toMap()),
      'firewalls': pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(firewalls, (value) => value.toMap()),
      'id': ?id,
      'ipAddresses': ?ipAddresses,
      'location': ?location,
      'name': name,
      'provisioningState': provisioningState,
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetIpGroupResult.fromMap(Map<String, dynamic> map) {
    return GetIpGroupResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] as String,
      firewallPolicies: pulumi.Input.decodeList<SubResourceResponse>(map['firewallPolicies']!, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      firewalls: pulumi.Input.decodeList<SubResourceResponse>(map['firewalls']!, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipAddresses: (() { final guardedValue = map['ipAddresses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

