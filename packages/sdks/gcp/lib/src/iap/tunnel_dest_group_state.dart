// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TunnelDestGroup resources.
class TunnelDestGroupState {
  /// List of CIDRs that this group applies to.
  final pulumi.Input<List<String>>? cidrs;
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
  /// [fqdns] List of FQDNs that this group applies to.
  /// [groupName] Unique tunnel destination group name.
  /// [name] Full resource name.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the tunnel group. Must be the same as the network resources in the group.
  TunnelDestGroupState({
    pulumi.Output<List<String>>? cidrs,
    pulumi.Output<List<String>>? fqdns,
    pulumi.Output<String>? groupName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
  }) :
      cidrs = pulumi.Input.asOptionalInput<List<String>>(cidrs),
      fqdns = pulumi.Input.asOptionalInput<List<String>>(fqdns),
      groupName = pulumi.Input.asOptionalInput<String>(groupName),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrs': ?cidrs,
      'fqdns': ?fqdns,
      'groupName': ?groupName,
      'name': ?name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory TunnelDestGroupState.fromMap(Map<String, dynamic> map) {
    return TunnelDestGroupState(
      cidrs: map['cidrs'] == null ? null : pulumi.Output.create<List<String>>((map['cidrs'] as List).cast<String>()),
      fqdns: map['fqdns'] == null ? null : pulumi.Output.create<List<String>>((map['fqdns'] as List).cast<String>()),
      groupName: map['groupName'] == null ? null : pulumi.Output.create<String>(map['groupName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

