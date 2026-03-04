// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_address_type.dart';
import 'address_ip_version.dart';
import 'address_ipv6_endpoint_type.dart';
import 'address_network_tier.dart';
import 'address_purpose.dart';

/// {@template pulumi_compute_alpha_address_args_doc}
/// The set of arguments for Address.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_address_args_doc}
class AddressArgs {
  /// The static IP address represented by this resource.
  final pulumi.Input<String>? address;

  /// The type of address to reserve, either INTERNAL or EXTERNAL. If unspecified, defaults to EXTERNAL.
  final pulumi.Input<AddressAddressType>? addressType;

  /// An optional description of this resource. Provide this field when you create the resource.
  final pulumi.Input<String>? description;

  /// The IP version that will be used by this address. Valid options are IPV4 or IPV6.
  final pulumi.Input<AddressIpVersion>? ipVersion;

  /// The endpoint type of this address, which should be VM or NETLB. This is used for deciding which type of endpoint this address can be used after the external IPv6 address reservation.
  final pulumi.Input<AddressIpv6EndpointType>? ipv6EndpointType;

  /// Labels for this resource. These can only be added or modified by the setLabels method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  final pulumi.Input<Map<String, String>>? labels;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`. The first character must be a lowercase letter, and all following characters (except for the last character) must be a dash, lowercase letter, or digit. The last character must be a lowercase letter or digit.
  final pulumi.Input<String>? name;

  /// The URL of the network in which to reserve the address. This field can only be used with INTERNAL type with the VPC_PEERING purpose.
  final pulumi.Input<String>? network;

  /// This signifies the networking tier used for configuring this address and can only take the following values: PREMIUM or STANDARD. Internal IP addresses are always Premium Tier; global external IP addresses are always Premium Tier; regional external IP addresses can be either Standard or Premium Tier. If this field is not specified, it is assumed to be PREMIUM.
  final pulumi.Input<AddressNetworkTier>? networkTier;

  /// The prefix length if the resource represents an IP range.
  final pulumi.Input<int>? prefixLength;
  final pulumi.Input<String>? project;

  /// The purpose of this resource, which can be one of the following values: - GCE_ENDPOINT for addresses that are used by VM instances, alias IP ranges, load balancers, and similar resources. - DNS_RESOLVER for a DNS resolver address in a subnetwork for a Cloud DNS inbound forwarder IP addresses (regional internal IP address in a subnet of a VPC network) - VPC_PEERING for global internal IP addresses used for private services access allocated ranges. - NAT_AUTO for the regional external IP addresses used by Cloud NAT when allocating addresses using automatic NAT IP address allocation. - IPSEC_INTERCONNECT for addresses created from a private IP range that are reserved for a VLAN attachment in an *HA VPN over Cloud Interconnect* configuration. These addresses are regional resources. - `SHARED_LOADBALANCER_VIP` for an internal IP address that is assigned to multiple internal forwarding rules. - `PRIVATE_SERVICE_CONNECT` for a private network address that is used to configure Private Service Connect. Only global internal addresses can use this purpose.
  final pulumi.Input<AddressPurpose>? purpose;
  final pulumi.Input<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// The URL of the subnetwork in which to reserve the address. If an IP address is specified, it must be within the subnetwork's IP range. This field can only be used with INTERNAL type with a GCE_ENDPOINT or DNS_RESOLVER purpose.
  final pulumi.Input<String>? subnetwork;

  /// Creates a new [AddressArgs].
  /// [address] The static IP address represented by this resource.
  /// [addressType] The type of address to reserve, either INTERNAL or EXTERNAL. If unspecified, defaults to EXTERNAL.
  /// [description] An optional description of this resource. Provide this field when you create the resource.
  /// [ipVersion] The IP version that will be used by this address. Valid options are IPV4 or IPV6.
  /// [ipv6EndpointType] The endpoint type of this address, which should be VM or NETLB. This is used for deciding which type of endpoint this address can be used after the external IPv6 address reservation.
  /// [labels] Labels for this resource. These can only be added or modified by the setLabels method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`. The first character must be a lowercase letter, and all following characters (except for the last character) must be a dash, lowercase letter, or digit. The last character must be a lowercase letter or digit.
  /// [network] The URL of the network in which to reserve the address. This field can only be used with INTERNAL type with the VPC_PEERING purpose.
  /// [networkTier] This signifies the networking tier used for configuring this address and can only take the following values: PREMIUM or STANDARD. Internal IP addresses are always Premium Tier; global external IP addresses are always Premium Tier; regional external IP addresses can be either Standard or Premium Tier. If this field is not specified, it is assumed to be PREMIUM.
  /// [prefixLength] The prefix length if the resource represents an IP range.
  /// [project] Optional.
  /// [purpose] The purpose of this resource, which can be one of the following values: - GCE_ENDPOINT for addresses that are used by VM instances, alias IP ranges, load balancers, and similar resources. - DNS_RESOLVER for a DNS resolver address in a subnetwork for a Cloud DNS inbound forwarder IP addresses (regional internal IP address in a subnet of a VPC network) - VPC_PEERING for global internal IP addresses used for private services access allocated ranges. - NAT_AUTO for the regional external IP addresses used by Cloud NAT when allocating addresses using automatic NAT IP address allocation. - IPSEC_INTERCONNECT for addresses created from a private IP range that are reserved for a VLAN attachment in an *HA VPN over Cloud Interconnect* configuration. These addresses are regional resources. - `SHARED_LOADBALANCER_VIP` for an internal IP address that is assigned to multiple internal forwarding rules. - `PRIVATE_SERVICE_CONNECT` for a private network address that is used to configure Private Service Connect. Only global internal addresses can use this purpose.
  /// [region] Required.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [subnetwork] The URL of the subnetwork in which to reserve the address. If an IP address is specified, it must be within the subnetwork's IP range. This field can only be used with INTERNAL type with a GCE_ENDPOINT or DNS_RESOLVER purpose.
  AddressArgs({
    this.address,
    this.addressType,
    this.description,
    this.ipVersion,
    this.ipv6EndpointType,
    this.labels,
    this.name,
    this.network,
    this.networkTier,
    this.prefixLength,
    this.project,
    this.purpose,
    required this.region,
    this.requestId,
    this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'addressType':
          ?pulumi.Input.mapOptionalInputValue<AddressAddressType, String>(
            addressType,
            (value) => value.wireValue,
          ),
      'description': ?description,
      'ipVersion':
          ?pulumi.Input.mapOptionalInputValue<AddressIpVersion, String>(
            ipVersion,
            (value) => value.wireValue,
          ),
      'ipv6EndpointType':
          ?pulumi.Input.mapOptionalInputValue<AddressIpv6EndpointType, String>(
            ipv6EndpointType,
            (value) => value.wireValue,
          ),
      'labels': ?labels,
      'name': ?name,
      'network': ?network,
      'networkTier':
          ?pulumi.Input.mapOptionalInputValue<AddressNetworkTier, String>(
            networkTier,
            (value) => value.wireValue,
          ),
      'prefixLength': ?prefixLength,
      'project': ?project,
      'purpose': ?pulumi.Input.mapOptionalInputValue<AddressPurpose, String>(
        purpose,
        (value) => value.wireValue,
      ),
      'region': region,
      'requestId': ?requestId,
      'subnetwork': ?subnetwork,
    };
  }

  factory AddressArgs.fromMap(Map<String, dynamic> map) {
    return AddressArgs(
      address: (() {
        final guardedValue = map['address'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      addressType: (() {
        final guardedValue = map['addressType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AddressAddressType.fromValue(guardedValue as String),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipVersion: (() {
        final guardedValue = map['ipVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AddressIpVersion.fromValue(guardedValue as String),
        );
      })(),
      ipv6EndpointType: (() {
        final guardedValue = map['ipv6EndpointType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AddressIpv6EndpointType.fromValue(guardedValue as String),
        );
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      network: (() {
        final guardedValue = map['network'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkTier: (() {
        final guardedValue = map['networkTier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AddressNetworkTier.fromValue(guardedValue as String),
        );
      })(),
      prefixLength: (() {
        final guardedValue = map['prefixLength'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      purpose: (() {
        final guardedValue = map['purpose'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AddressPurpose.fromValue(guardedValue as String),
        );
      })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      requestId: (() {
        final guardedValue = map['requestId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subnetwork: (() {
        final guardedValue = map['subnetwork'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
