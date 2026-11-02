// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_networks_network.dart';

/// Result data returned by getNetworks.
class GetNetworksResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// (list) List of all matching networks. See `data.hcloud_network` for schema.
  final List<GetNetworksNetwork>? networks;
  final String? withSelector;

  /// Creates a new [GetNetworksResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [networks] (list) List of all matching networks. See `data.hcloud_network` for schema.
  /// [withSelector] Optional.
  const GetNetworksResult({
    this.id,
    this.networks,
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'networks': ?(() { final guardedValue = networks; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNetworksNetwork, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'withSelector': ?withSelector,
    };
  }

  factory GetNetworksResult.fromMap(Map<String, dynamic> map) {
    return GetNetworksResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networks: (() { final guardedValue = map['networks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNetworksNetwork>(guardedValue, (value) => GetNetworksNetwork.fromMap((value as Map).cast<String, dynamic>())); })(),
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
