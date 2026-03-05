// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iap_v1_dest_group_args_doc}
/// The set of arguments for DestGroup.
/// {@endtemplate}
/// {@macro pulumi_iap_v1_dest_group_args_doc}
class DestGroupArgs {
  /// Unordered list. List of CIDRs that this group applies to.
  final pulumi.Input<List<String>>? cidrs;
  /// Unordered list. List of FQDNs that this group applies to.
  final pulumi.Input<List<String>>? fqdns;
  final pulumi.Input<String>? location;
  /// Immutable. Identifier for the TunnelDestGroup. Must be unique within the project and contain only lower case letters (a-z) and dashes (-).
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Required. The ID to use for the TunnelDestGroup, which becomes the final component of the resource name. This value must be 4-63 characters, and valid characters are `[a-z]-`.
  final pulumi.Input<String> tunnelDestGroupId;

  /// Creates a new [DestGroupArgs].
  /// [cidrs] Unordered list. List of CIDRs that this group applies to.
  /// [fqdns] Unordered list. List of FQDNs that this group applies to.
  /// [location] Optional.
  /// [name] Immutable. Identifier for the TunnelDestGroup. Must be unique within the project and contain only lower case letters (a-z) and dashes (-).
  /// [project] Optional.
  /// [tunnelDestGroupId] Required. The ID to use for the TunnelDestGroup, which becomes the final component of the resource name. This value must be 4-63 characters, and valid characters are `[a-z]-`.
  DestGroupArgs({
    this.cidrs,
    this.fqdns,
    this.location,
    this.name,
    this.project,
    required this.tunnelDestGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrs': ?cidrs,
      'fqdns': ?fqdns,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'tunnelDestGroupId': tunnelDestGroupId,
    };
  }

  factory DestGroupArgs.fromMap(Map<String, dynamic> map) {
    return DestGroupArgs(
      cidrs: (() { final guardedValue = map['cidrs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      fqdns: (() { final guardedValue = map['fqdns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tunnelDestGroupId: pulumi.Input.fromValue(map['tunnelDestGroupId'] as String),
    );
  }
}

