// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of management server
class ManagementServerPropertiesResponse {
  /// Management server Fully Qualified Domain Name.
  final pulumi.Input<String> fqdn;
  /// Management server health state.
  final pulumi.Input<String> healthState;
  /// Management server Name
  final pulumi.Input<String> serverName;
  /// Represent whether the Server is a Management Server and/or Web Console Server.
  final pulumi.Input<String> serverRoles;
  /// Azure VM Resource Id of the Management server.
  final pulumi.Input<String> vmResId;

  /// Creates a new [ManagementServerPropertiesResponse].
  /// [fqdn] Management server Fully Qualified Domain Name.
  /// [healthState] Management server health state.
  /// [serverName] Management server Name
  /// [serverRoles] Represent whether the Server is a Management Server and/or Web Console Server.
  /// [vmResId] Azure VM Resource Id of the Management server.
  ManagementServerPropertiesResponse({
    required this.fqdn,
    required this.healthState,
    required this.serverName,
    required this.serverRoles,
    required this.vmResId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdn': fqdn,
      'healthState': healthState,
      'serverName': serverName,
      'serverRoles': serverRoles,
      'vmResId': vmResId,
    };
  }

  factory ManagementServerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ManagementServerPropertiesResponse(
      fqdn: pulumi.Input.fromValue(map['fqdn'] as String),
      healthState: pulumi.Input.fromValue(map['healthState'] as String),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
      serverRoles: pulumi.Input.fromValue(map['serverRoles'] as String),
      vmResId: pulumi.Input.fromValue(map['vmResId'] as String),
    );
  }
}

