// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_dns_location_endpoints.dart';
import 'get_zero_trust_dns_location_max_ttl.dart';
import 'get_zero_trust_dns_location_network.dart';

/// Result data returned by getZeroTrustDnsLocation.
class GetZeroTrustDnsLocationResult {
  final String? accountId;
  /// Indicate whether this location is the default location.
  final bool? clientDefault;
  final String? createdAt;
  /// Indicate the identifier of the pair of IPv4 addresses assigned to this location.
  final String? dnsDestinationIpsId;
  /// Specify the UUID of the IPv6 block brought to the gateway so that this location's IPv6 address is allocated from the Bring Your Own IPv6 (BYOIPv6) block rather than the standard Cloudflare IPv6 block.
  final String? dnsDestinationIpv6BlockId;
  /// Specify the DNS over HTTPS domain that receives DNS requests. Gateway automatically generates this value.
  final String? dohSubdomain;
  /// Indicate whether the location must resolve EDNS queries.
  final bool? ecsSupport;
  /// Configure the destination endpoints for this location.
  final GetZeroTrustDnsLocationEndpoints? endpoints;
  /// The ID of this resource.
  final String? id;
  /// Defines the automatically generated IPv6 destination IP assigned to this location. Gateway counts all DNS requests sent to this IP as requests under this location.
  final String? ip;
  /// Show the primary destination IPv4 address from the pair identified dns*destination*ips_id. This field read-only.
  final String? ipv4Destination;
  /// Show the backup destination IPv4 address from the pair identified dns*destination*ips_id. This field read-only.
  final String? ipv4DestinationBackup;
  final String? locationId;
  /// Controls how DNS response TTLs are capped for this location relative to the account `maxTtlSecs` setting. Omitting `maxTtl` on update resets it to `inherit`.
  final GetZeroTrustDnsLocationMaxTtl? maxTtl;
  /// Specify the location name.
  final String? name;
  /// Specify the list of network ranges from which requests at this location originate. The list takes effect only if it is non-empty and the IPv4 endpoint is enabled for this location.
  final List<GetZeroTrustDnsLocationNetwork>? networks;
  final String? updatedAt;

  /// Creates a new [GetZeroTrustDnsLocationResult].
  /// [accountId] Optional.
  /// [clientDefault] Indicate whether this location is the default location.
  /// [createdAt] Optional.
  /// [dnsDestinationIpsId] Indicate the identifier of the pair of IPv4 addresses assigned to this location.
  /// [dnsDestinationIpv6BlockId] Specify the UUID of the IPv6 block brought to the gateway so that this location's IPv6 address is allocated from the Bring Your Own IPv6 (BYOIPv6) block rather than the standard Cloudflare IPv6 block.
  /// [dohSubdomain] Specify the DNS over HTTPS domain that receives DNS requests. Gateway automatically generates this value.
  /// [ecsSupport] Indicate whether the location must resolve EDNS queries.
  /// [endpoints] Configure the destination endpoints for this location.
  /// [id] The ID of this resource.
  /// [ip] Defines the automatically generated IPv6 destination IP assigned to this location. Gateway counts all DNS requests sent to this IP as requests under this location.
  /// [ipv4Destination] Show the primary destination IPv4 address from the pair identified dns*destination*ips_id. This field read-only.
  /// [ipv4DestinationBackup] Show the backup destination IPv4 address from the pair identified dns*destination*ips_id. This field read-only.
  /// [locationId] Optional.
  /// [maxTtl] Controls how DNS response TTLs are capped for this location relative to the account `maxTtlSecs` setting. Omitting `maxTtl` on update resets it to `inherit`.
  /// [name] Specify the location name.
  /// [networks] Specify the list of network ranges from which requests at this location originate. The list takes effect only if it is non-empty and the IPv4 endpoint is enabled for this location.
  /// [updatedAt] Optional.
  const GetZeroTrustDnsLocationResult({
    this.accountId,
    this.clientDefault,
    this.createdAt,
    this.dnsDestinationIpsId,
    this.dnsDestinationIpv6BlockId,
    this.dohSubdomain,
    this.ecsSupport,
    this.endpoints,
    this.id,
    this.ip,
    this.ipv4Destination,
    this.ipv4DestinationBackup,
    this.locationId,
    this.maxTtl,
    this.name,
    this.networks,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'clientDefault': ?clientDefault,
      'createdAt': ?createdAt,
      'dnsDestinationIpsId': ?dnsDestinationIpsId,
      'dnsDestinationIpv6BlockId': ?dnsDestinationIpv6BlockId,
      'dohSubdomain': ?dohSubdomain,
      'ecsSupport': ?ecsSupport,
      'endpoints': ?endpoints?.toMap(),
      'id': ?id,
      'ip': ?ip,
      'ipv4Destination': ?ipv4Destination,
      'ipv4DestinationBackup': ?ipv4DestinationBackup,
      'locationId': ?locationId,
      'maxTtl': ?maxTtl?.toMap(),
      'name': ?name,
      'networks': ?(() { final guardedValue = networks; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustDnsLocationNetwork, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'updatedAt': ?updatedAt,
    };
  }

  factory GetZeroTrustDnsLocationResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDnsLocationResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clientDefault: (() { final guardedValue = map['clientDefault']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dnsDestinationIpsId: (() { final guardedValue = map['dnsDestinationIpsId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dnsDestinationIpv6BlockId: (() { final guardedValue = map['dnsDestinationIpv6BlockId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dohSubdomain: (() { final guardedValue = map['dohSubdomain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ecsSupport: (() { final guardedValue = map['ecsSupport']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return GetZeroTrustDnsLocationEndpoints.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv4Destination: (() { final guardedValue = map['ipv4Destination']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv4DestinationBackup: (() { final guardedValue = map['ipv4DestinationBackup']; if (guardedValue == null) return null; return guardedValue as String; })(),
      locationId: (() { final guardedValue = map['locationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxTtl: (() { final guardedValue = map['maxTtl']; if (guardedValue == null) return null; return GetZeroTrustDnsLocationMaxTtl.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networks: (() { final guardedValue = map['networks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustDnsLocationNetwork>(guardedValue, (value) => GetZeroTrustDnsLocationNetwork.fromMap((value as Map).cast<String, dynamic>())); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
