// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Guest OS Customization properties
class GuestOSCustomization {
  /// List of dns servers to use
  final pulumi.Input<List<String>>? dnsServers;
  /// Virtual Machine hostname
  final pulumi.Input<String>? hostName;
  /// Password for login
  final pulumi.Input<String>? password;
  /// id of customization policy
  final pulumi.Input<String>? policyId;
  /// Username for login
  final pulumi.Input<String>? username;

  /// Creates a new [GuestOSCustomization].
  /// [dnsServers] List of dns servers to use
  /// [hostName] Virtual Machine hostname
  /// [password] Password for login
  /// [policyId] id of customization policy
  /// [username] Username for login
  const GuestOSCustomization({
    this.dnsServers,
    this.hostName,
    this.password,
    this.policyId,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsServers': ?dnsServers,
      'hostName': ?hostName,
      'password': ?password,
      'policyId': ?policyId,
      'username': ?username,
    };
  }

  factory GuestOSCustomization.fromMap(Map<String, dynamic> map) {
    return GuestOSCustomization(
      dnsServers: (() { final guardedValue = map['dnsServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      hostName: (() { final guardedValue = map['hostName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyId: (() { final guardedValue = map['policyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
