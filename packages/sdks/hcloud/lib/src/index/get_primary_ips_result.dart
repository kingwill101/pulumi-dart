// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_primary_ips_primary_ip.dart';

/// Result data returned by getPrimaryIps.
class GetPrimaryIpsResult {
  /// The ID of this resource.
  final String id;
  final List<GetPrimaryIpsPrimaryIp> primaryIps;
  /// Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  final String? withSelector;

  /// Creates a new [GetPrimaryIpsResult].
  /// [id] The ID of this resource.
  /// [primaryIps] Required.
  /// [withSelector] Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  const GetPrimaryIpsResult({
    required this.id,
    required this.primaryIps,
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'primaryIps': pulumi.Input.encodeList<GetPrimaryIpsPrimaryIp, Map<String, dynamic>>(primaryIps, (value) => value.toMap()),
      'withSelector': ?withSelector,
    };
  }

  factory GetPrimaryIpsResult.fromMap(Map<String, dynamic> map) {
    return GetPrimaryIpsResult(
      id: map['id'] as String,
      primaryIps: pulumi.Input.decodeList<GetPrimaryIpsPrimaryIp>(map['primaryIps']!, (value) => GetPrimaryIpsPrimaryIp.fromMap((value as Map).cast<String, dynamic>())),
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
