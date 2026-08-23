// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_diagflow_sip_trunk_sip_trunk_args_doc}
/// The set of arguments for SipTrunk.
/// {@endtemplate}
/// {@macro pulumi_diagflow_sip_trunk_sip_trunk_args_doc}
class SipTrunkArgs {
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
  final pulumi.Input<List<String>> expectedHostnames;
  /// The location of the SIP trunk.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [SipTrunkArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] Optional. Human-readable alias for this trunk.
  /// [expectedHostnames] Required. The expected hostnames in the peer certificate from the partner that is used for TLS authentication.
  /// [location] The location of the SIP trunk.
  /// [project] The ID of the project in which the resource belongs.
  const SipTrunkArgs({
    this.deletionPolicy,
    this.displayName,
    required this.expectedHostnames,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'expectedHostnames': expectedHostnames,
      'location': location,
      'project': ?project,
    };
  }

  factory SipTrunkArgs.fromMap(Map<String, dynamic> map) {
    return SipTrunkArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expectedHostnames: pulumi.Input.fromValue((map['expectedHostnames'] as List).cast<String>()),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
