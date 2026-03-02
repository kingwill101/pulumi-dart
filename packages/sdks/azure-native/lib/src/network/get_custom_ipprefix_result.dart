// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'sub_resource_response.dart';

/// Result data returned by getCustomIPPrefix.
class GetCustomIPPrefixResult {
  /// The ASN for CIDR advertising. Should be an integer as string.
  final String? asn;
  /// Authorization message for WAN validation.
  final String? authorizationMessage;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The list of all Children for IPv6 /48 CustomIpPrefix.
  final List<SubResourceResponse> childCustomIpPrefixes;
  /// The prefix range in CIDR notation. Should include the start address and the prefix length.
  final String? cidr;
  /// The commissioned state of the Custom IP Prefix.
  final String? commissionedState;
  /// The Parent CustomIpPrefix for IPv6 /64 CustomIpPrefix.
  final SubResourceResponse? customIpPrefixParent;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Whether to do express route advertise.
  final bool? expressRouteAdvertise;
  /// The extended location of the custom IP prefix.
  final ExtendedLocationResponse? extendedLocation;
  /// The reason why resource is in failed state.
  final String failedReason;
  /// The Geo for CIDR advertising. Should be an Geo code.
  final String? geo;
  /// Resource ID.
  final String? id;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String name;
  /// Whether to Advertise the range to Internet.
  final bool? noInternetAdvertise;
  /// Type of custom IP prefix. Should be Singular, Parent, or Child.
  final String? prefixType;
  /// The provisioning state of the custom IP prefix resource.
  final String provisioningState;
  /// The list of all referenced PublicIpPrefixes.
  final List<SubResourceResponse> publicIpPrefixes;
  /// The resource GUID property of the custom IP prefix resource.
  final String resourceGuid;
  /// Signed message for WAN validation.
  final String? signedMessage;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String type;
  /// A list of availability zones denoting the IP allocated for the resource needs to come from.
  final List<String>? zones;

  /// Creates a new [GetCustomIPPrefixResult].
  /// [asn] The ASN for CIDR advertising. Should be an integer as string.
  /// [authorizationMessage] Authorization message for WAN validation.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [childCustomIpPrefixes] The list of all Children for IPv6 /48 CustomIpPrefix.
  /// [cidr] The prefix range in CIDR notation. Should include the start address and the prefix length.
  /// [commissionedState] The commissioned state of the Custom IP Prefix.
  /// [customIpPrefixParent] The Parent CustomIpPrefix for IPv6 /64 CustomIpPrefix.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [expressRouteAdvertise] Whether to do express route advertise.
  /// [extendedLocation] The extended location of the custom IP prefix.
  /// [failedReason] The reason why resource is in failed state.
  /// [geo] The Geo for CIDR advertising. Should be an Geo code.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [noInternetAdvertise] Whether to Advertise the range to Internet.
  /// [prefixType] Type of custom IP prefix. Should be Singular, Parent, or Child.
  /// [provisioningState] The provisioning state of the custom IP prefix resource.
  /// [publicIpPrefixes] The list of all referenced PublicIpPrefixes.
  /// [resourceGuid] The resource GUID property of the custom IP prefix resource.
  /// [signedMessage] Signed message for WAN validation.
  /// [tags] Resource tags.
  /// [type] Resource type.
  /// [zones] A list of availability zones denoting the IP allocated for the resource needs to come from.
  GetCustomIPPrefixResult({
    this.asn,
    this.authorizationMessage,
    required this.azureApiVersion,
    required this.childCustomIpPrefixes,
    this.cidr,
    this.commissionedState,
    this.customIpPrefixParent,
    required this.etag,
    this.expressRouteAdvertise,
    this.extendedLocation,
    required this.failedReason,
    this.geo,
    this.id,
    this.location,
    required this.name,
    this.noInternetAdvertise,
    this.prefixType,
    required this.provisioningState,
    required this.publicIpPrefixes,
    required this.resourceGuid,
    this.signedMessage,
    this.tags,
    required this.type,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asn': ?asn,
      'authorizationMessage': ?authorizationMessage,
      'azureApiVersion': azureApiVersion,
      'childCustomIpPrefixes': pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(childCustomIpPrefixes, (value) => value.toMap()),
      'cidr': ?cidr,
      'commissionedState': ?commissionedState,
      'customIpPrefixParent': ?customIpPrefixParent == null ? null : customIpPrefixParent!.toMap(),
      'etag': etag,
      'expressRouteAdvertise': ?expressRouteAdvertise,
      'extendedLocation': ?extendedLocation == null ? null : extendedLocation!.toMap(),
      'failedReason': failedReason,
      'geo': ?geo,
      'id': ?id,
      'location': ?location,
      'name': name,
      'noInternetAdvertise': ?noInternetAdvertise,
      'prefixType': ?prefixType,
      'provisioningState': provisioningState,
      'publicIpPrefixes': pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(publicIpPrefixes, (value) => value.toMap()),
      'resourceGuid': resourceGuid,
      'signedMessage': ?signedMessage,
      'tags': ?tags,
      'type': type,
      'zones': ?zones,
    };
  }

  factory GetCustomIPPrefixResult.fromMap(Map<String, dynamic> map) {
    return GetCustomIPPrefixResult(
      asn: map['asn'] == null ? null : map['asn']! as String,
      authorizationMessage: map['authorizationMessage'] == null ? null : map['authorizationMessage']! as String,
      azureApiVersion: map['azureApiVersion'] as String,
      childCustomIpPrefixes: pulumi.Input.decodeList<SubResourceResponse>(map['childCustomIpPrefixes'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      cidr: map['cidr'] == null ? null : map['cidr']! as String,
      commissionedState: map['commissionedState'] == null ? null : map['commissionedState']! as String,
      customIpPrefixParent: map['customIpPrefixParent'] == null ? null : SubResourceResponse.fromMap((map['customIpPrefixParent']! as Map).cast<String, dynamic>()),
      etag: map['etag'] as String,
      expressRouteAdvertise: map['expressRouteAdvertise'] == null ? null : map['expressRouteAdvertise']! as bool,
      extendedLocation: map['extendedLocation'] == null ? null : ExtendedLocationResponse.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>()),
      failedReason: map['failedReason'] as String,
      geo: map['geo'] == null ? null : map['geo']! as String,
      id: map['id'] == null ? null : map['id']! as String,
      location: map['location'] == null ? null : map['location']! as String,
      name: map['name'] as String,
      noInternetAdvertise: map['noInternetAdvertise'] == null ? null : map['noInternetAdvertise']! as bool,
      prefixType: map['prefixType'] == null ? null : map['prefixType']! as String,
      provisioningState: map['provisioningState'] as String,
      publicIpPrefixes: pulumi.Input.decodeList<SubResourceResponse>(map['publicIpPrefixes'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      resourceGuid: map['resourceGuid'] as String,
      signedMessage: map['signedMessage'] == null ? null : map['signedMessage']! as String,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
      zones: map['zones'] == null ? null : (map['zones']! as List).cast<String>(),
    );
  }
}

