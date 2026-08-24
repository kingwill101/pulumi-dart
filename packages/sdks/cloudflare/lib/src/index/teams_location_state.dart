// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'teams_location_endpoints.dart';
import 'teams_location_max_ttl.dart';
import 'teams_location_network.dart';

/// Input properties used for looking up and filtering TeamsLocation resources.
class TeamsLocationState {
  final pulumi.Input<String?>? accountId;
  /// Indicate whether this location is the default location.
  final pulumi.Input<bool?>? clientDefault;
  final pulumi.Input<String?>? createdAt;
  /// Specify the identifier of the pair of IPv4 addresses assigned to this location. When creating a location, if this field is absent or set to null, the pair of shared IPv4 addresses (0e4a32c6-6fb8-4858-9296-98f51631e8e6) is auto-assigned. When updating a location, if this field is absent or set to null, the pre-assigned pair remains unchanged.
  final pulumi.Input<String?>? dnsDestinationIpsId;
  /// Specify the UUID of the IPv6 block brought to the gateway so that this location's IPv6 address is allocated from the Bring Your Own IPv6 (BYOIPv6) block rather than the standard Cloudflare IPv6 block.
  final pulumi.Input<String?>? dnsDestinationIpv6BlockId;
  /// Specify the DNS over HTTPS domain that receives DNS requests. Gateway automatically generates this value.
  final pulumi.Input<String?>? dohSubdomain;
  /// Indicate whether the location must resolve EDNS queries.
  final pulumi.Input<bool?>? ecsSupport;
  /// Configure the destination endpoints for this location.
  final pulumi.Input<TeamsLocationEndpoints?>? endpoints;
  /// Defines the automatically generated IPv6 destination IP assigned to this location. Gateway counts all DNS requests sent to this IP as requests under this location.
  final pulumi.Input<String?>? ip;
  /// Show the primary destination IPv4 address from the pair identified dns*destination*ips_id. This field read-only.
  final pulumi.Input<String?>? ipv4Destination;
  /// Show the backup destination IPv4 address from the pair identified dns*destination*ips_id. This field read-only.
  final pulumi.Input<String?>? ipv4DestinationBackup;
  /// Controls how DNS response TTLs are capped for this location relative to the account `maxTtlSecs` setting. Omitting `maxTtl` on update resets it to `inherit`.
  final pulumi.Input<TeamsLocationMaxTtl?>? maxTtl;
  /// Specify the location name.
  final pulumi.Input<String?>? name;
  /// Specify the list of network ranges from which requests at this location originate. The list takes effect only if it is non-empty and the IPv4 endpoint is enabled for this location.
  final pulumi.Input<List<TeamsLocationNetwork>?>? networks;
  final pulumi.Input<String?>? updatedAt;

  /// Creates a new [TeamsLocationState].
  /// [accountId] Optional.
  /// [clientDefault] Indicate whether this location is the default location.
  /// [createdAt] Optional.
  /// [dnsDestinationIpsId] Specify the identifier of the pair of IPv4 addresses assigned to this location. When creating a location, if this field is absent or set to null, the pair of shared IPv4 addresses (0e4a32c6-6fb8-4858-9296-98f51631e8e6) is auto-assigned. When updating a location, if this field is absent or set to null, the pre-assigned pair remains unchanged.
  /// [dnsDestinationIpv6BlockId] Specify the UUID of the IPv6 block brought to the gateway so that this location's IPv6 address is allocated from the Bring Your Own IPv6 (BYOIPv6) block rather than the standard Cloudflare IPv6 block.
  /// [dohSubdomain] Specify the DNS over HTTPS domain that receives DNS requests. Gateway automatically generates this value.
  /// [ecsSupport] Indicate whether the location must resolve EDNS queries.
  /// [endpoints] Configure the destination endpoints for this location.
  /// [ip] Defines the automatically generated IPv6 destination IP assigned to this location. Gateway counts all DNS requests sent to this IP as requests under this location.
  /// [ipv4Destination] Show the primary destination IPv4 address from the pair identified dns*destination*ips_id. This field read-only.
  /// [ipv4DestinationBackup] Show the backup destination IPv4 address from the pair identified dns*destination*ips_id. This field read-only.
  /// [maxTtl] Controls how DNS response TTLs are capped for this location relative to the account `maxTtlSecs` setting. Omitting `maxTtl` on update resets it to `inherit`.
  /// [name] Specify the location name.
  /// [networks] Specify the list of network ranges from which requests at this location originate. The list takes effect only if it is non-empty and the IPv4 endpoint is enabled for this location.
  /// [updatedAt] Optional.
  const TeamsLocationState({
    this.accountId,
    this.clientDefault,
    this.createdAt,
    this.dnsDestinationIpsId,
    this.dnsDestinationIpv6BlockId,
    this.dohSubdomain,
    this.ecsSupport,
    this.endpoints,
    this.ip,
    this.ipv4Destination,
    this.ipv4DestinationBackup,
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
      'endpoints': ?pulumi.Input.mapOptionalInputValue<TeamsLocationEndpoints, Map<String, dynamic>>(endpoints, (value) => value.toMap()),
      'ip': ?ip,
      'ipv4Destination': ?ipv4Destination,
      'ipv4DestinationBackup': ?ipv4DestinationBackup,
      'maxTtl': ?pulumi.Input.mapOptionalInputValue<TeamsLocationMaxTtl, Map<String, dynamic>>(maxTtl, (value) => value.toMap()),
      'name': ?name,
      'networks': ?pulumi.Input.mapOptionalInputValue<List<TeamsLocationNetwork>, List<Map<String, dynamic>>>(networks, (value) => pulumi.Input.encodeList<TeamsLocationNetwork, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updatedAt': ?updatedAt,
    };
  }

  factory TeamsLocationState.fromMap(Map<String, dynamic> map) {
    return TeamsLocationState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientDefault: (() { final guardedValue = map['clientDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsDestinationIpsId: (() { final guardedValue = map['dnsDestinationIpsId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsDestinationIpv6BlockId: (() { final guardedValue = map['dnsDestinationIpv6BlockId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dohSubdomain: (() { final guardedValue = map['dohSubdomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ecsSupport: (() { final guardedValue = map['ecsSupport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TeamsLocationEndpoints.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv4Destination: (() { final guardedValue = map['ipv4Destination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv4DestinationBackup: (() { final guardedValue = map['ipv4DestinationBackup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxTtl: (() { final guardedValue = map['maxTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TeamsLocationMaxTtl.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networks: (() { final guardedValue = map['networks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TeamsLocationNetwork>(guardedValue, (value) => TeamsLocationNetwork.fromMap((value as Map).cast<String, dynamic>()))); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
