// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Guest OS Customization properties
class GuestOSCustomizationResponse {
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

  /// Creates a new [GuestOSCustomizationResponse].
  /// [dnsServers] List of dns servers to use
  /// [hostName] Virtual Machine hostname
  /// [password] Password for login
  /// [policyId] id of customization policy
  /// [username] Username for login
  GuestOSCustomizationResponse({
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

  factory GuestOSCustomizationResponse.fromMap(Map<String, dynamic> map) {
    return GuestOSCustomizationResponse(
      dnsServers: map['dnsServers'] == null ? null : ((map['dnsServers'] as List).cast<String>()).input(),
      hostName: map['hostName'] == null ? null : (map['hostName'] as String).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      policyId: map['policyId'] == null ? null : (map['policyId'] as String).input(),
      username: map['username'] == null ? null : (map['username'] as String).input(),
    );
  }
}

