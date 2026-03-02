// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iap_tunnel_dest_group_tunnel_dest_group_args_doc}
/// The set of arguments for TunnelDestGroup.
/// {@endtemplate}
/// {@macro pulumi_iap_tunnel_dest_group_tunnel_dest_group_args_doc}
class TunnelDestGroupArgs {
  /// List of CIDRs that this group applies to.
  final pulumi.Input<List<String>>? cidrs;
  /// List of FQDNs that this group applies to.
  final pulumi.Input<List<String>>? fqdns;
  /// Unique tunnel destination group name.
  final pulumi.Input<String> groupName;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region of the tunnel group. Must be the same as the network resources in the group.
  final pulumi.Input<String>? region;

  /// Creates a new [TunnelDestGroupArgs].
  /// [cidrs] List of CIDRs that this group applies to.
  /// [fqdns] List of FQDNs that this group applies to.
  /// [groupName] Unique tunnel destination group name.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the tunnel group. Must be the same as the network resources in the group.
  TunnelDestGroupArgs({
    this.cidrs,
    this.fqdns,
    required this.groupName,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrs': ?cidrs,
      'fqdns': ?fqdns,
      'groupName': groupName,
      'project': ?project,
      'region': ?region,
    };
  }

  factory TunnelDestGroupArgs.fromMap(Map<String, dynamic> map) {
    return TunnelDestGroupArgs(
      cidrs: map['cidrs'] == null ? null : ((map['cidrs']! as List).cast<String>()).input(),
      fqdns: map['fqdns'] == null ? null : ((map['fqdns']! as List).cast<String>()).input(),
      groupName: (map['groupName'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
    );
  }
}

