// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BgpAdvertisement {
  /// The indicator of if this advertisement is also made to the network fabric associated with the Network Cloud Cluster. This field is ignored if fabricPeeringEnabled is set to False.
  final pulumi.Input<String>? advertiseToFabric;
  /// The names of the BGP communities to be associated with the announcement, utilizing a BGP community string in 1234:1234 format.
  final pulumi.Input<List<String>>? communities;
  /// The names of the IP address pools associated with this announcement.
  final pulumi.Input<List<String>> ipAddressPools;
  /// The names of the BGP peers to limit this advertisement to. If no values are specified, all BGP peers will receive this advertisement.
  final pulumi.Input<List<String>>? peers;

  /// Creates a new [BgpAdvertisement].
  /// [advertiseToFabric] The indicator of if this advertisement is also made to the network fabric associated with the Network Cloud Cluster. This field is ignored if fabricPeeringEnabled is set to False.
  /// [communities] The names of the BGP communities to be associated with the announcement, utilizing a BGP community string in 1234:1234 format.
  /// [ipAddressPools] The names of the IP address pools associated with this announcement.
  /// [peers] The names of the BGP peers to limit this advertisement to. If no values are specified, all BGP peers will receive this advertisement.
  BgpAdvertisement({
    this.advertiseToFabric,
    this.communities,
    required this.ipAddressPools,
    this.peers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advertiseToFabric': ?advertiseToFabric,
      'communities': ?communities,
      'ipAddressPools': ipAddressPools,
      'peers': ?peers,
    };
  }

  factory BgpAdvertisement.fromMap(Map<String, dynamic> map) {
    return BgpAdvertisement(
      advertiseToFabric: (() { final guardedValue = map['advertiseToFabric']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      communities: (() { final guardedValue = map['communities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipAddressPools: pulumi.Input.fromValue((map['ipAddressPools'] as List).cast<String>()),
      peers: (() { final guardedValue = map['peers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

