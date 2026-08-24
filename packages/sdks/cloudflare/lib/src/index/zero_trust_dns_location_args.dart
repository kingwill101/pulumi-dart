// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_dns_location_endpoints.dart';
import 'zero_trust_dns_location_max_ttl.dart';
import 'zero_trust_dns_location_network.dart';

/// {@template pulumi_index_zero_trust_dns_location_zero_trust_dns_location_args_doc}
/// The set of arguments for ZeroTrustDnsLocation.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_dns_location_zero_trust_dns_location_args_doc}
class ZeroTrustDnsLocationArgs {
  final pulumi.Input<String> accountId;
  /// Indicate whether this location is the default location.
  final pulumi.Input<bool?>? clientDefault;
  /// Specify the identifier of the pair of IPv4 addresses assigned to this location. When creating a location, if this field is absent or set to null, the pair of shared IPv4 addresses (0e4a32c6-6fb8-4858-9296-98f51631e8e6) is auto-assigned. When updating a location, if this field is absent or set to null, the pre-assigned pair remains unchanged.
  final pulumi.Input<String?>? dnsDestinationIpsId;
  /// Indicate whether the location must resolve EDNS queries.
  final pulumi.Input<bool?>? ecsSupport;
  /// Configure the destination endpoints for this location.
  final pulumi.Input<ZeroTrustDnsLocationEndpoints?>? endpoints;
  /// Controls how DNS response TTLs are capped for this location relative to the account `maxTtlSecs` setting. Omitting `maxTtl` on update resets it to `inherit`.
  final pulumi.Input<ZeroTrustDnsLocationMaxTtl?>? maxTtl;
  /// Specify the location name.
  final pulumi.Input<String> name;
  /// Specify the list of network ranges from which requests at this location originate. The list takes effect only if it is non-empty and the IPv4 endpoint is enabled for this location.
  final pulumi.Input<List<ZeroTrustDnsLocationNetwork>?>? networks;

  /// Creates a new [ZeroTrustDnsLocationArgs].
  /// [accountId] Required.
  /// [clientDefault] Indicate whether this location is the default location.
  /// [dnsDestinationIpsId] Specify the identifier of the pair of IPv4 addresses assigned to this location. When creating a location, if this field is absent or set to null, the pair of shared IPv4 addresses (0e4a32c6-6fb8-4858-9296-98f51631e8e6) is auto-assigned. When updating a location, if this field is absent or set to null, the pre-assigned pair remains unchanged.
  /// [ecsSupport] Indicate whether the location must resolve EDNS queries.
  /// [endpoints] Configure the destination endpoints for this location.
  /// [maxTtl] Controls how DNS response TTLs are capped for this location relative to the account `maxTtlSecs` setting. Omitting `maxTtl` on update resets it to `inherit`.
  /// [name] Specify the location name.
  /// [networks] Specify the list of network ranges from which requests at this location originate. The list takes effect only if it is non-empty and the IPv4 endpoint is enabled for this location.
  const ZeroTrustDnsLocationArgs({
    required this.accountId,
    this.clientDefault,
    this.dnsDestinationIpsId,
    this.ecsSupport,
    this.endpoints,
    this.maxTtl,
    required this.name,
    this.networks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'clientDefault': ?clientDefault,
      'dnsDestinationIpsId': ?dnsDestinationIpsId,
      'ecsSupport': ?ecsSupport,
      'endpoints': ?pulumi.Input.mapOptionalInputValue<ZeroTrustDnsLocationEndpoints, Map<String, dynamic>>(endpoints, (value) => value.toMap()),
      'maxTtl': ?pulumi.Input.mapOptionalInputValue<ZeroTrustDnsLocationMaxTtl, Map<String, dynamic>>(maxTtl, (value) => value.toMap()),
      'name': name,
      'networks': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustDnsLocationNetwork>, List<Map<String, dynamic>>>(networks, (value) => pulumi.Input.encodeList<ZeroTrustDnsLocationNetwork, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ZeroTrustDnsLocationArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDnsLocationArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      clientDefault: (() { final guardedValue = map['clientDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dnsDestinationIpsId: (() { final guardedValue = map['dnsDestinationIpsId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ecsSupport: (() { final guardedValue = map['ecsSupport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustDnsLocationEndpoints.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxTtl: (() { final guardedValue = map['maxTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustDnsLocationMaxTtl.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      networks: (() { final guardedValue = map['networks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustDnsLocationNetwork>(guardedValue, (value) => ZeroTrustDnsLocationNetwork.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
