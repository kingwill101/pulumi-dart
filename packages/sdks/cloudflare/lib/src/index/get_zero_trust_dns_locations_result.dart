// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_dns_locations_result_endpoints.dart';
import 'get_zero_trust_dns_locations_result_max_ttl.dart';
import 'get_zero_trust_dns_locations_result_network.dart';

class GetZeroTrustDnsLocationsResult {
  /// Indicate whether this location is the default location.
  final pulumi.Input<bool> clientDefault;
  final pulumi.Input<String> createdAt;
  /// Indicate the identifier of the pair of IPv4 addresses assigned to this location.
  final pulumi.Input<String> dnsDestinationIpsId;
  /// Specify the UUID of the IPv6 block brought to the gateway so that this location's IPv6 address is allocated from the Bring Your Own IPv6 (BYOIPv6) block rather than the standard Cloudflare IPv6 block.
  final pulumi.Input<String> dnsDestinationIpv6BlockId;
  /// Specify the DNS over HTTPS domain that receives DNS requests. Gateway automatically generates this value.
  final pulumi.Input<String> dohSubdomain;
  /// Indicate whether the location must resolve EDNS queries.
  final pulumi.Input<bool> ecsSupport;
  /// Configure the destination endpoints for this location.
  final pulumi.Input<GetZeroTrustDnsLocationsResultEndpoints> endpoints;
  final pulumi.Input<String> id;
  /// Defines the automatically generated IPv6 destination IP assigned to this location. Gateway counts all DNS requests sent to this IP as requests under this location.
  final pulumi.Input<String> ip;
  /// Show the primary destination IPv4 address from the pair identified dns*destination*ips_id. This field read-only.
  final pulumi.Input<String> ipv4Destination;
  /// Show the backup destination IPv4 address from the pair identified dns*destination*ips_id. This field read-only.
  final pulumi.Input<String> ipv4DestinationBackup;
  /// Controls how DNS response TTLs are capped for this location relative to the account `maxTtlSecs` setting. Omitting `maxTtl` on update resets it to `inherit`.
  final pulumi.Input<GetZeroTrustDnsLocationsResultMaxTtl> maxTtl;
  /// Specify the location name.
  final pulumi.Input<String> name;
  /// Specify the list of network ranges from which requests at this location originate. The list takes effect only if it is non-empty and the IPv4 endpoint is enabled for this location.
  final pulumi.Input<List<GetZeroTrustDnsLocationsResultNetwork>> networks;
  final pulumi.Input<String> updatedAt;

  /// Creates a new [GetZeroTrustDnsLocationsResult].
  /// [clientDefault] Indicate whether this location is the default location.
  /// [createdAt] Required.
  /// [dnsDestinationIpsId] Indicate the identifier of the pair of IPv4 addresses assigned to this location.
  /// [dnsDestinationIpv6BlockId] Specify the UUID of the IPv6 block brought to the gateway so that this location's IPv6 address is allocated from the Bring Your Own IPv6 (BYOIPv6) block rather than the standard Cloudflare IPv6 block.
  /// [dohSubdomain] Specify the DNS over HTTPS domain that receives DNS requests. Gateway automatically generates this value.
  /// [ecsSupport] Indicate whether the location must resolve EDNS queries.
  /// [endpoints] Configure the destination endpoints for this location.
  /// [id] Required.
  /// [ip] Defines the automatically generated IPv6 destination IP assigned to this location. Gateway counts all DNS requests sent to this IP as requests under this location.
  /// [ipv4Destination] Show the primary destination IPv4 address from the pair identified dns*destination*ips_id. This field read-only.
  /// [ipv4DestinationBackup] Show the backup destination IPv4 address from the pair identified dns*destination*ips_id. This field read-only.
  /// [maxTtl] Controls how DNS response TTLs are capped for this location relative to the account `maxTtlSecs` setting. Omitting `maxTtl` on update resets it to `inherit`.
  /// [name] Specify the location name.
  /// [networks] Specify the list of network ranges from which requests at this location originate. The list takes effect only if it is non-empty and the IPv4 endpoint is enabled for this location.
  /// [updatedAt] Required.
  const GetZeroTrustDnsLocationsResult({
    required this.clientDefault,
    required this.createdAt,
    required this.dnsDestinationIpsId,
    required this.dnsDestinationIpv6BlockId,
    required this.dohSubdomain,
    required this.ecsSupport,
    required this.endpoints,
    required this.id,
    required this.ip,
    required this.ipv4Destination,
    required this.ipv4DestinationBackup,
    required this.maxTtl,
    required this.name,
    required this.networks,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientDefault': clientDefault,
      'createdAt': createdAt,
      'dnsDestinationIpsId': dnsDestinationIpsId,
      'dnsDestinationIpv6BlockId': dnsDestinationIpv6BlockId,
      'dohSubdomain': dohSubdomain,
      'ecsSupport': ecsSupport,
      'endpoints': pulumi.Input.mapInputValue<GetZeroTrustDnsLocationsResultEndpoints, Map<String, dynamic>>(endpoints, (value) => value.toMap()),
      'id': id,
      'ip': ip,
      'ipv4Destination': ipv4Destination,
      'ipv4DestinationBackup': ipv4DestinationBackup,
      'maxTtl': pulumi.Input.mapInputValue<GetZeroTrustDnsLocationsResultMaxTtl, Map<String, dynamic>>(maxTtl, (value) => value.toMap()),
      'name': name,
      'networks': pulumi.Input.mapInputValue<List<GetZeroTrustDnsLocationsResultNetwork>, List<Map<String, dynamic>>>(networks, (value) => pulumi.Input.encodeList<GetZeroTrustDnsLocationsResultNetwork, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updatedAt': updatedAt,
    };
  }

  factory GetZeroTrustDnsLocationsResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDnsLocationsResult(
      clientDefault: pulumi.Input.fromValue(map['clientDefault'] as bool),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      dnsDestinationIpsId: pulumi.Input.fromValue(map['dnsDestinationIpsId'] as String),
      dnsDestinationIpv6BlockId: pulumi.Input.fromValue(map['dnsDestinationIpv6BlockId'] as String),
      dohSubdomain: pulumi.Input.fromValue(map['dohSubdomain'] as String),
      ecsSupport: pulumi.Input.fromValue(map['ecsSupport'] as bool),
      endpoints: pulumi.Input.fromValue(GetZeroTrustDnsLocationsResultEndpoints.fromMap((map['endpoints']! as Map).cast<String, dynamic>())),
      id: pulumi.Input.fromValue(map['id'] as String),
      ip: pulumi.Input.fromValue(map['ip'] as String),
      ipv4Destination: pulumi.Input.fromValue(map['ipv4Destination'] as String),
      ipv4DestinationBackup: pulumi.Input.fromValue(map['ipv4DestinationBackup'] as String),
      maxTtl: pulumi.Input.fromValue(GetZeroTrustDnsLocationsResultMaxTtl.fromMap((map['maxTtl']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      networks: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustDnsLocationsResultNetwork>(map['networks']!, (value) => GetZeroTrustDnsLocationsResultNetwork.fromMap((value as Map).cast<String, dynamic>()))),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
    );
  }
}
