// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_dns_location_endpoints.dart';
import 'get_zero_trust_dns_location_filter.dart';
import 'get_zero_trust_dns_location_max_ttl.dart';
import 'get_zero_trust_dns_location_network.dart';

/// Result data returned by getZeroTrustDnsLocation.
class GetZeroTrustDnsLocationResult {
  final String? accountId;
  final bool? clientDefault;
  final String? createdAt;
  final String? dnsDestinationIpsId;
  final String? dnsDestinationIpv6BlockId;
  final String? dohSubdomain;
  final bool? ecsSupport;
  final GetZeroTrustDnsLocationEndpoints? endpoints;
  final GetZeroTrustDnsLocationFilter? filter;
  final String? id;
  final String? ip;
  final String? ipv4Destination;
  final String? ipv4DestinationBackup;
  final String? locationId;
  final GetZeroTrustDnsLocationMaxTtl? maxTtl;
  final String? name;
  final List<GetZeroTrustDnsLocationNetwork>? networks;
  final String? updatedAt;

  /// Creates a new [GetZeroTrustDnsLocationResult].
  /// [accountId] Optional.
  /// [clientDefault] Optional.
  /// [createdAt] Optional.
  /// [dnsDestinationIpsId] Optional.
  /// [dnsDestinationIpv6BlockId] Optional.
  /// [dohSubdomain] Optional.
  /// [ecsSupport] Optional.
  /// [endpoints] Optional.
  /// [filter] Optional.
  /// [id] Optional.
  /// [ip] Optional.
  /// [ipv4Destination] Optional.
  /// [ipv4DestinationBackup] Optional.
  /// [locationId] Optional.
  /// [maxTtl] Optional.
  /// [name] Optional.
  /// [networks] Optional.
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
    this.filter,
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
      'filter': ?filter?.toMap(),
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
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetZeroTrustDnsLocationFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
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
