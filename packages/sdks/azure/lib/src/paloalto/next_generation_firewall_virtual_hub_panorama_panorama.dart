// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NextGenerationFirewallVirtualHubPanoramaPanorama {
  final pulumi.Input<String>? deviceGroupName;
  final pulumi.Input<String>? hostName;
  /// The name which should be used for this Palo Alto Next Generation Firewall VHub Panorama. Changing this forces a new Palo Alto Next Generation Firewall VHub Panorama to be created.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? panoramaServer1;
  final pulumi.Input<String>? panoramaServer2;
  final pulumi.Input<String>? templateName;
  final pulumi.Input<String>? virtualMachineSshKey;

  /// Creates a new [NextGenerationFirewallVirtualHubPanoramaPanorama].
  /// [deviceGroupName] Optional.
  /// [hostName] Optional.
  /// [name] The name which should be used for this Palo Alto Next Generation Firewall VHub Panorama. Changing this forces a new Palo Alto Next Generation Firewall VHub Panorama to be created.
  /// [panoramaServer1] Optional.
  /// [panoramaServer2] Optional.
  /// [templateName] Optional.
  /// [virtualMachineSshKey] Optional.
  NextGenerationFirewallVirtualHubPanoramaPanorama({
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

  factory NextGenerationFirewallVirtualHubPanoramaPanorama.fromMap(Map<String, dynamic> map) {
    return NextGenerationFirewallVirtualHubPanoramaPanorama(
      deviceGroupName: map['deviceGroupName'] == null ? null : (map['deviceGroupName'] as String).input(),
      hostName: map['hostName'] == null ? null : (map['hostName'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      panoramaServer1: map['panoramaServer1'] == null ? null : (map['panoramaServer1'] as String).input(),
      panoramaServer2: map['panoramaServer2'] == null ? null : (map['panoramaServer2'] as String).input(),
      templateName: map['templateName'] == null ? null : (map['templateName'] as String).input(),
      virtualMachineSshKey: map['virtualMachineSshKey'] == null ? null : (map['virtualMachineSshKey'] as String).input(),
    );
  }
}

