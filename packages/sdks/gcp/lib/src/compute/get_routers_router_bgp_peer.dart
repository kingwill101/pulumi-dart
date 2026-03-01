// ignore_for_file: unused_element, unnecessary_cast


class GetRoutersRouterBgpPeer {
  final String advertiseMode;
  final int advertisedRoutePriority;
  final String enable;
  final bool enableIpv6;
  final String interfaceName;
  final String ipAddress;
  final String managementType;
  final String name;
  final int peerAsn;
  final String peerIpAddress;

  /// Creates a new [GetRoutersRouterBgpPeer].
  /// [advertiseMode] Required.
  /// [advertisedRoutePriority] Required.
  /// [enable] Required.
  /// [enableIpv6] Required.
  /// [interfaceName] Required.
  /// [ipAddress] Required.
  /// [managementType] Required.
  /// [name] Required.
  /// [peerAsn] Required.
  /// [peerIpAddress] Required.
  GetRoutersRouterBgpPeer({
    required this.advertiseMode,
    required this.advertisedRoutePriority,
    required this.enable,
    required this.enableIpv6,
    required this.interfaceName,
    required this.ipAddress,
    required this.managementType,
    required this.name,
    required this.peerAsn,
    required this.peerIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advertiseMode': advertiseMode,
      'advertisedRoutePriority': advertisedRoutePriority,
      'enable': enable,
      'enableIpv6': enableIpv6,
      'interfaceName': interfaceName,
      'ipAddress': ipAddress,
      'managementType': managementType,
      'name': name,
      'peerAsn': peerAsn,
      'peerIpAddress': peerIpAddress,
    };
  }

  factory GetRoutersRouterBgpPeer.fromMap(Map<String, dynamic> map) {
    return GetRoutersRouterBgpPeer(
      advertiseMode: map['advertiseMode'] as String,
      advertisedRoutePriority: map['advertisedRoutePriority'] as int,
      enable: map['enable'] as String,
      enableIpv6: map['enableIpv6'] as bool,
      interfaceName: map['interfaceName'] as String,
      ipAddress: map['ipAddress'] as String,
      managementType: map['managementType'] as String,
      name: map['name'] as String,
      peerAsn: map['peerAsn'] as int,
      peerIpAddress: map['peerIpAddress'] as String,
    );
  }
}

