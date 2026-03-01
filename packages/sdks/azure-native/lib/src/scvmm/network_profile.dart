// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_interfaces.dart';

/// Defines the resource properties.
class NetworkProfile {
  /// Gets or sets the list of network interfaces associated with the virtual machine.
  final List<NetworkInterfaces>? networkInterfaces;

  /// Creates a new [NetworkProfile].
  /// [networkInterfaces] Gets or sets the list of network interfaces associated with the virtual machine.
  NetworkProfile({
    this.networkInterfaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkInterfaces': ?networkInterfaces == null ? null : pulumi.Input.encodeList<NetworkInterfaces, Map<String, dynamic>>(networkInterfaces!, (value) => value.toMap()),
    };
  }

  factory NetworkProfile.fromMap(Map<String, dynamic> map) {
    return NetworkProfile(
      networkInterfaces: map['networkInterfaces'] == null ? null : pulumi.Input.decodeList<NetworkInterfaces>(map['networkInterfaces'], (value) => NetworkInterfaces.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

