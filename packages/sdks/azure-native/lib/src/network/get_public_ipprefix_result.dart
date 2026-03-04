// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'ip_tag_response.dart';
import 'nat_gateway_response.dart';
import 'public_ipprefix_sku_response.dart';
import 'referenced_public_ip_address_response.dart';
import 'sub_resource_response.dart';

/// Result data returned by getPublicIPPrefix.
class GetPublicIPPrefixResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// The customIpPrefix that this prefix is associated with.
  final SubResourceResponse? customIPPrefix;

  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;

  /// The extended location of the public ip address.
  final ExtendedLocationResponse? extendedLocation;

  /// Resource ID.
  final String? id;

  /// The allocated Prefix.
  final String ipPrefix;

  /// The list of tags associated with the public IP prefix.
  final List<IpTagResponse>? ipTags;

  /// The reference to load balancer frontend IP configuration associated with the public IP prefix.
  final SubResourceResponse loadBalancerFrontendIpConfiguration;

  /// Resource location.
  final String? location;

  /// Resource name.
  final String name;

  /// NatGateway of Public IP Prefix.
  final NatGatewayResponse? natGateway;

  /// The Length of the Public IP Prefix.
  final int? prefixLength;

  /// The provisioning state of the public IP prefix resource.
  final String provisioningState;

  /// The public IP address version.
  final String? publicIPAddressVersion;

  /// The list of all referenced PublicIPAddresses.
  final List<ReferencedPublicIpAddressResponse> publicIPAddresses;

  /// The resource GUID property of the public IP prefix resource.
  final String resourceGuid;

  /// The public IP prefix SKU.
  final PublicIPPrefixSkuResponse? sku;

  /// Resource tags.
  final Map<String, String>? tags;

  /// Resource type.
  final String type;

  /// A list of availability zones denoting the IP allocated for the resource needs to come from.
  final List<String>? zones;

  /// Creates a new [GetPublicIPPrefixResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [customIPPrefix] The customIpPrefix that this prefix is associated with.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [extendedLocation] The extended location of the public ip address.
  /// [id] Resource ID.
  /// [ipPrefix] The allocated Prefix.
  /// [ipTags] The list of tags associated with the public IP prefix.
  /// [loadBalancerFrontendIpConfiguration] The reference to load balancer frontend IP configuration associated with the public IP prefix.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [natGateway] NatGateway of Public IP Prefix.
  /// [prefixLength] The Length of the Public IP Prefix.
  /// [provisioningState] The provisioning state of the public IP prefix resource.
  /// [publicIPAddressVersion] The public IP address version.
  /// [publicIPAddresses] The list of all referenced PublicIPAddresses.
  /// [resourceGuid] The resource GUID property of the public IP prefix resource.
  /// [sku] The public IP prefix SKU.
  /// [tags] Resource tags.
  /// [type] Resource type.
  /// [zones] A list of availability zones denoting the IP allocated for the resource needs to come from.
  GetPublicIPPrefixResult({
    required this.azureApiVersion,
    this.customIPPrefix,
    required this.etag,
    this.extendedLocation,
    this.id,
    required this.ipPrefix,
    this.ipTags,
    required this.loadBalancerFrontendIpConfiguration,
    this.location,
    required this.name,
    this.natGateway,
    this.prefixLength,
    required this.provisioningState,
    this.publicIPAddressVersion,
    required this.publicIPAddresses,
    required this.resourceGuid,
    this.sku,
    this.tags,
    required this.type,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'customIPPrefix': ?customIPPrefix?.toMap(),
      'etag': etag,
      'extendedLocation': ?extendedLocation?.toMap(),
      'id': ?id,
      'ipPrefix': ipPrefix,
      'ipTags': ?(() {
        final guardedValue = ipTags;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<IpTagResponse, Map<String, dynamic>>(
          guardedValue,
          (value) => value.toMap(),
        );
      })(),
      'loadBalancerFrontendIpConfiguration': loadBalancerFrontendIpConfiguration
          .toMap(),
      'location': ?location,
      'name': name,
      'natGateway': ?natGateway?.toMap(),
      'prefixLength': ?prefixLength,
      'provisioningState': provisioningState,
      'publicIPAddressVersion': ?publicIPAddressVersion,
      'publicIPAddresses':
          pulumi.Input.encodeList<
            ReferencedPublicIpAddressResponse,
            Map<String, dynamic>
          >(publicIPAddresses, (value) => value.toMap()),
      'resourceGuid': resourceGuid,
      'sku': ?sku?.toMap(),
      'tags': ?tags,
      'type': type,
      'zones': ?zones,
    };
  }

  factory GetPublicIPPrefixResult.fromMap(Map<String, dynamic> map) {
    return GetPublicIPPrefixResult(
      azureApiVersion: map['azureApiVersion'] as String,
      customIPPrefix: (() {
        final guardedValue = map['customIPPrefix'];
        if (guardedValue == null) return null;
        return SubResourceResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      etag: map['etag'] as String,
      extendedLocation: (() {
        final guardedValue = map['extendedLocation'];
        if (guardedValue == null) return null;
        return ExtendedLocationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      ipPrefix: map['ipPrefix'] as String,
      ipTags: (() {
        final guardedValue = map['ipTags'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<IpTagResponse>(
          guardedValue,
          (value) =>
              IpTagResponse.fromMap((value as Map).cast<String, dynamic>()),
        );
      })(),
      loadBalancerFrontendIpConfiguration: SubResourceResponse.fromMap(
        (map['loadBalancerFrontendIpConfiguration']! as Map)
            .cast<String, dynamic>(),
      ),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      name: map['name'] as String,
      natGateway: (() {
        final guardedValue = map['natGateway'];
        if (guardedValue == null) return null;
        return NatGatewayResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      prefixLength: (() {
        final guardedValue = map['prefixLength'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      provisioningState: map['provisioningState'] as String,
      publicIPAddressVersion: (() {
        final guardedValue = map['publicIPAddressVersion'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      publicIPAddresses:
          pulumi.Input.decodeList<ReferencedPublicIpAddressResponse>(
            map['publicIPAddresses']!,
            (value) => ReferencedPublicIpAddressResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      resourceGuid: map['resourceGuid'] as String,
      sku: (() {
        final guardedValue = map['sku'];
        if (guardedValue == null) return null;
        return PublicIPPrefixSkuResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: map['type'] as String,
      zones: (() {
        final guardedValue = map['zones'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
    );
  }
}
