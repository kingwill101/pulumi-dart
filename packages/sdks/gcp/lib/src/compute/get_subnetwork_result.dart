// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_subnetwork_secondary_ip_range.dart';

/// Result data returned by getSubnetwork.
class GetSubnetworkResult {
  /// Description of this subnetwork.
  final String? description;
  /// The external IPv6 address range that is assigned to this subnetwork.
  final String? externalIpv6Prefix;
  /// The IP address of the gateway.
  final String? gatewayAddress;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The internal IPv6 address range that is assigned to this subnetwork.
  final String? internalIpv6Prefix;
  /// The range of IP addresses belonging to this subnetwork
  /// secondary range.
  final String? ipCidrRange;
  /// The access type of IPv6 address this subnet holds. Possible values are: `EXTERNAL`, `INTERNAL`.
  final String? ipv6AccessType;
  final String? name;
  /// The network name or resource link to the parent
  /// network of this subnetwork.
  final String? network;
  /// Whether the VMs in this subnet
  /// can access Google services without assigned external IP
  /// addresses.
  final bool? privateIpGoogleAccess;
  final String? project;
  final String? region;
  /// An array of configurations for secondary IP ranges for
  /// VM instances contained in this subnetwork. Structure is documented below.
  final List<GetSubnetworkSecondaryIpRange>? secondaryIpRanges;
  final String? selfLink;
  /// The stack type for the subnet. Possible values are: `IPV4_ONLY`, `IPV4_IPV6`, `IPV6_ONLY`.
  final String? stackType;
  /// The numeric ID of the resource.
  final int? subnetworkId;

  /// Creates a new [GetSubnetworkResult].
  /// [description] Description of this subnetwork.
  /// [externalIpv6Prefix] The external IPv6 address range that is assigned to this subnetwork.
  /// [gatewayAddress] The IP address of the gateway.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [internalIpv6Prefix] The internal IPv6 address range that is assigned to this subnetwork.
  /// [ipCidrRange] The range of IP addresses belonging to this subnetwork
  /// [ipv6AccessType] The access type of IPv6 address this subnet holds. Possible values are: `EXTERNAL`, `INTERNAL`.
  /// [name] Optional.
  /// [network] The network name or resource link to the parent
  /// [privateIpGoogleAccess] Whether the VMs in this subnet
  /// [project] Optional.
  /// [region] Optional.
  /// [secondaryIpRanges] An array of configurations for secondary IP ranges for
  /// [selfLink] Optional.
  /// [stackType] The stack type for the subnet. Possible values are: `IPV4_ONLY`, `IPV4_IPV6`, `IPV6_ONLY`.
  /// [subnetworkId] The numeric ID of the resource.
  const GetSubnetworkResult({
    this.description,
    this.externalIpv6Prefix,
    this.gatewayAddress,
    this.id,
    this.internalIpv6Prefix,
    this.ipCidrRange,
    this.ipv6AccessType,
    this.name,
    this.network,
    this.privateIpGoogleAccess,
    this.project,
    this.region,
    this.secondaryIpRanges,
    this.selfLink,
    this.stackType,
    this.subnetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'externalIpv6Prefix': ?externalIpv6Prefix,
      'gatewayAddress': ?gatewayAddress,
      'id': ?id,
      'internalIpv6Prefix': ?internalIpv6Prefix,
      'ipCidrRange': ?ipCidrRange,
      'ipv6AccessType': ?ipv6AccessType,
      'name': ?name,
      'network': ?network,
      'privateIpGoogleAccess': ?privateIpGoogleAccess,
      'project': ?project,
      'region': ?region,
      'secondaryIpRanges': ?(() { final guardedValue = secondaryIpRanges; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSubnetworkSecondaryIpRange, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'selfLink': ?selfLink,
      'stackType': ?stackType,
      'subnetworkId': ?subnetworkId,
    };
  }

  factory GetSubnetworkResult.fromMap(Map<String, dynamic> map) {
    return GetSubnetworkResult(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      externalIpv6Prefix: (() { final guardedValue = map['externalIpv6Prefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      gatewayAddress: (() { final guardedValue = map['gatewayAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      internalIpv6Prefix: (() { final guardedValue = map['internalIpv6Prefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipCidrRange: (() { final guardedValue = map['ipCidrRange']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv6AccessType: (() { final guardedValue = map['ipv6AccessType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateIpGoogleAccess: (() { final guardedValue = map['privateIpGoogleAccess']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryIpRanges: (() { final guardedValue = map['secondaryIpRanges']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSubnetworkSecondaryIpRange>(guardedValue, (value) => GetSubnetworkSecondaryIpRange.fromMap((value as Map).cast<String, dynamic>())); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stackType: (() { final guardedValue = map['stackType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnetworkId: (() { final guardedValue = map['subnetworkId']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
    );
  }
}
