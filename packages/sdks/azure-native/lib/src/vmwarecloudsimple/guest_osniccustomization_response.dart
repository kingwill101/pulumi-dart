// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Guest OS nic customization
class GuestOSNICCustomizationResponse {
  /// IP address allocation method
  final pulumi.Input<String>? allocation;
  /// List of dns servers to use
  final pulumi.Input<List<String>>? dnsServers;
  /// Gateway addresses assigned to nic
  final pulumi.Input<List<String>>? gateway;
  /// Static ip address for nic
  final pulumi.Input<String>? ipAddress;
  /// Network mask for nic
  final pulumi.Input<String>? mask;
  /// primary WINS server for Windows
  final pulumi.Input<String>? primaryWinsServer;
  /// secondary WINS server for Windows
  final pulumi.Input<String>? secondaryWinsServer;

  /// Creates a new [GuestOSNICCustomizationResponse].
  /// [allocation] IP address allocation method
  /// [dnsServers] List of dns servers to use
  /// [gateway] Gateway addresses assigned to nic
  /// [ipAddress] Static ip address for nic
  /// [mask] Network mask for nic
  /// [primaryWinsServer] primary WINS server for Windows
  /// [secondaryWinsServer] secondary WINS server for Windows
  const GuestOSNICCustomizationResponse({
    this.allocation,
    this.dnsServers,
    this.gateway,
    this.ipAddress,
    this.mask,
    this.primaryWinsServer,
    this.secondaryWinsServer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocation': ?allocation,
      'dnsServers': ?dnsServers,
      'gateway': ?gateway,
      'ipAddress': ?ipAddress,
      'mask': ?mask,
      'primaryWinsServer': ?primaryWinsServer,
      'secondaryWinsServer': ?secondaryWinsServer,
    };
  }

  factory GuestOSNICCustomizationResponse.fromMap(Map<String, dynamic> map) {
    return GuestOSNICCustomizationResponse(
      allocation: (() { final guardedValue = map['allocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsServers: (() { final guardedValue = map['dnsServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      gateway: (() { final guardedValue = map['gateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mask: (() { final guardedValue = map['mask']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryWinsServer: (() { final guardedValue = map['primaryWinsServer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryWinsServer: (() { final guardedValue = map['secondaryWinsServer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
