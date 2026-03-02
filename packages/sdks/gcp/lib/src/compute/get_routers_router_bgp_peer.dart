// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRoutersRouterBgpPeer {
  final pulumi.Input<String> advertiseMode;
  final pulumi.Input<int> advertisedRoutePriority;
  final pulumi.Input<String> enable;
  final pulumi.Input<bool> enableIpv6;
  final pulumi.Input<String> interfaceName;
  final pulumi.Input<String> ipAddress;
  final pulumi.Input<String> managementType;
  final pulumi.Input<String> name;
  final pulumi.Input<int> peerAsn;
  final pulumi.Input<String> peerIpAddress;

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
      advertiseMode: (map['advertiseMode'] as String).input(),
      advertisedRoutePriority: (map['advertisedRoutePriority'] as int).input(),
      enable: (map['enable'] as String).input(),
      enableIpv6: (map['enableIpv6'] as bool).input(),
      interfaceName: (map['interfaceName'] as String).input(),
      ipAddress: (map['ipAddress'] as String).input(),
      managementType: (map['managementType'] as String).input(),
      name: (map['name'] as String).input(),
      peerAsn: (map['peerAsn'] as int).input(),
      peerIpAddress: (map['peerIpAddress'] as String).input(),
    );
  }
}

