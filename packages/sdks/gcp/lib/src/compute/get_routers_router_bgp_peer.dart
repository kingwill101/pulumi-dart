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
      advertiseMode: pulumi.Input.fromValue(map['advertiseMode'] as String),
      advertisedRoutePriority: pulumi.Input.fromValue(
        map['advertisedRoutePriority'] as int,
      ),
      enable: pulumi.Input.fromValue(map['enable'] as String),
      enableIpv6: pulumi.Input.fromValue(map['enableIpv6'] as bool),
      interfaceName: pulumi.Input.fromValue(map['interfaceName'] as String),
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      managementType: pulumi.Input.fromValue(map['managementType'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      peerAsn: pulumi.Input.fromValue(map['peerAsn'] as int),
      peerIpAddress: pulumi.Input.fromValue(map['peerIpAddress'] as String),
    );
  }
}
