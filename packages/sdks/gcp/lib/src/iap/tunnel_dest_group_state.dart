// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TunnelDestGroup resources.
class TunnelDestGroupState {
  /// List of CIDRs that this group applies to.
  final pulumi.Input<List<String>>? cidrs;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// List of FQDNs that this group applies to.
  final pulumi.Input<List<String>>? fqdns;
  /// Unique tunnel destination group name.
  final pulumi.Input<String>? groupName;
  /// Full resource name.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region of the tunnel group. Must be the same as the network resources in the group.
  final pulumi.Input<String>? region;

  /// Creates a new [TunnelDestGroupState].
  /// [cidrs] List of CIDRs that this group applies to.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [fqdns] List of FQDNs that this group applies to.
  /// [groupName] Unique tunnel destination group name.
  /// [name] Full resource name.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the tunnel group. Must be the same as the network resources in the group.
  const TunnelDestGroupState({
    this.cidrs,
    this.deletionPolicy,
    this.fqdns,
    this.groupName,
    this.name,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrs': ?cidrs,
      'deletionPolicy': ?deletionPolicy,
      'fqdns': ?fqdns,
      'groupName': ?groupName,
      'name': ?name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory TunnelDestGroupState.fromMap(Map<String, dynamic> map) {
    return TunnelDestGroupState(
      cidrs: (() { final guardedValue = map['cidrs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fqdns: (() { final guardedValue = map['fqdns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      groupName: (() { final guardedValue = map['groupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
