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

  factory NextGenerationFirewallVirtualHubPanoramaPanorama.fromMap(
    Map<String, dynamic> map,
  ) {
    return NextGenerationFirewallVirtualHubPanoramaPanorama(
      deviceGroupName: (() {
        final guardedValue = map['deviceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hostName: (() {
        final guardedValue = map['hostName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      panoramaServer1: (() {
        final guardedValue = map['panoramaServer1'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      panoramaServer2: (() {
        final guardedValue = map['panoramaServer2'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      templateName: (() {
        final guardedValue = map['templateName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      virtualMachineSshKey: (() {
        final guardedValue = map['virtualMachineSshKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
