// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sip_trunk_connection.dart';

/// Input properties used for looking up and filtering SipTrunk resources.
class SipTrunkState {
  /// Output only. The connections of the SIP trunk.
  /// Structure is documented below.
  final pulumi.Input<List<SipTrunkConnection>>? connections;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Optional. Human-readable alias for this trunk.
  final pulumi.Input<String>? displayName;
  /// Required. The expected hostnames in the peer certificate from the partner that is used for TLS authentication.
  final pulumi.Input<List<String>>? expectedHostnames;
  /// The location of the SIP trunk.
  final pulumi.Input<String>? location;
  /// Identifier. The unique identifier of the SIP trunk.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [SipTrunkState].
  /// [connections] Output only. The connections of the SIP trunk.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] Optional. Human-readable alias for this trunk.
  /// [expectedHostnames] Required. The expected hostnames in the peer certificate from the partner that is used for TLS authentication.
  /// [location] The location of the SIP trunk.
  /// [name] Identifier. The unique identifier of the SIP trunk.
  /// [project] The ID of the project in which the resource belongs.
  const SipTrunkState({
    this.connections,
    this.deletionPolicy,
    this.displayName,
    this.expectedHostnames,
    this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connections': ?pulumi.Input.mapOptionalInputValue<List<SipTrunkConnection>, List<Map<String, dynamic>>>(connections, (value) => pulumi.Input.encodeList<SipTrunkConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'expectedHostnames': ?expectedHostnames,
      'location': ?location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory SipTrunkState.fromMap(Map<String, dynamic> map) {
    return SipTrunkState(
      connections: (() { final guardedValue = map['connections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SipTrunkConnection>(guardedValue, (value) => SipTrunkConnection.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expectedHostnames: (() { final guardedValue = map['expectedHostnames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
