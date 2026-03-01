// ignore_for_file: unused_element, unnecessary_cast


class BgpAdvertisementResponse {
  /// The indicator of if this advertisement is also made to the network fabric associated with the Network Cloud Cluster. This field is ignored if fabricPeeringEnabled is set to False.
  final String? advertiseToFabric;
  /// The names of the BGP communities to be associated with the announcement, utilizing a BGP community string in 1234:1234 format.
  final List<String>? communities;
  /// The names of the IP address pools associated with this announcement.
  final List<String> ipAddressPools;
  /// The names of the BGP peers to limit this advertisement to. If no values are specified, all BGP peers will receive this advertisement.
  final List<String>? peers;

  /// Creates a new [BgpAdvertisementResponse].
  /// [advertiseToFabric] The indicator of if this advertisement is also made to the network fabric associated with the Network Cloud Cluster. This field is ignored if fabricPeeringEnabled is set to False.
  /// [communities] The names of the BGP communities to be associated with the announcement, utilizing a BGP community string in 1234:1234 format.
  /// [ipAddressPools] The names of the IP address pools associated with this announcement.
  /// [peers] The names of the BGP peers to limit this advertisement to. If no values are specified, all BGP peers will receive this advertisement.
  BgpAdvertisementResponse({
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

  factory BgpAdvertisementResponse.fromMap(Map<String, dynamic> map) {
    return BgpAdvertisementResponse(
      advertiseToFabric: map['advertiseToFabric'] == null ? null : map['advertiseToFabric'] as String,
      communities: map['communities'] == null ? null : (map['communities'] as List).cast<String>(),
      ipAddressPools: (map['ipAddressPools'] as List).cast<String>(),
      peers: map['peers'] == null ? null : (map['peers'] as List).cast<String>(),
    );
  }
}

