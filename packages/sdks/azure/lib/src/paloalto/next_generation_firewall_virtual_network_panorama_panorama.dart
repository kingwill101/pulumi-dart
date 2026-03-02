// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NextGenerationFirewallVirtualNetworkPanoramaPanorama {
  /// The Device Group Name to which this Firewall Resource is registered.
  final pulumi.Input<String>? deviceGroupName;
  /// The Host Name of this Firewall Resource.
  final pulumi.Input<String>? hostName;
  /// The name which should be used for this Palo Alto Next Generation Firewall Virtual Network Panorama. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Panorama to be created.
  final pulumi.Input<String>? name;
  /// The name of the First Panorana server.
  final pulumi.Input<String>? panoramaServer1;
  /// The name of the Second Panorana server.
  final pulumi.Input<String>? panoramaServer2;
  /// The name of the Panorama Template applied to this Firewall Resource.
  final pulumi.Input<String>? templateName;
  /// The SSH Key to connect to the Firewall Resource.
  final pulumi.Input<String>? virtualMachineSshKey;

  /// Creates a new [NextGenerationFirewallVirtualNetworkPanoramaPanorama].
  /// [deviceGroupName] The Device Group Name to which this Firewall Resource is registered.
  /// [hostName] The Host Name of this Firewall Resource.
  /// [name] The name which should be used for this Palo Alto Next Generation Firewall Virtual Network Panorama. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Panorama to be created.
  /// [panoramaServer1] The name of the First Panorana server.
  /// [panoramaServer2] The name of the Second Panorana server.
  /// [templateName] The name of the Panorama Template applied to this Firewall Resource.
  /// [virtualMachineSshKey] The SSH Key to connect to the Firewall Resource.
  NextGenerationFirewallVirtualNetworkPanoramaPanorama({
    this.deviceGroupName,
    this.hostName,
    this.name,
    this.panoramaServer1,
    this.panoramaServer2,
    this.templateName,
    this.virtualMachineSshKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceGroupName': ?deviceGroupName,
      'hostName': ?hostName,
      'name': ?name,
      'panoramaServer1': ?panoramaServer1,
      'panoramaServer2': ?panoramaServer2,
      'templateName': ?templateName,
      'virtualMachineSshKey': ?virtualMachineSshKey,
    };
  }

  factory NextGenerationFirewallVirtualNetworkPanoramaPanorama.fromMap(Map<String, dynamic> map) {
    return NextGenerationFirewallVirtualNetworkPanoramaPanorama(
      deviceGroupName: map['deviceGroupName'] == null ? null : (map['deviceGroupName']! as String).input(),
      hostName: map['hostName'] == null ? null : (map['hostName']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      panoramaServer1: map['panoramaServer1'] == null ? null : (map['panoramaServer1']! as String).input(),
      panoramaServer2: map['panoramaServer2'] == null ? null : (map['panoramaServer2']! as String).input(),
      templateName: map['templateName'] == null ? null : (map['templateName']! as String).input(),
      virtualMachineSshKey: map['virtualMachineSshKey'] == null ? null : (map['virtualMachineSshKey']! as String).input(),
    );
  }
}

