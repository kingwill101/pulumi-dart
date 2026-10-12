// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_network_members_get_network_members_args_doc}
/// Arguments for getNetworkMembers.
/// {@endtemplate}
/// {@macro pulumi_index_get_network_members_get_network_members_args_doc}
class GetNetworkMembersArgs {
  /// ID the Network to list the members of.
  final pulumi.Input<int> networkId;
  /// Filter members by status. May be used multiple times.
  final pulumi.Input<List<String>?>? withStatuses;
  /// Filter members by subnet. May be used multiple times.
  final pulumi.Input<List<String>?>? withSubnets;
  /// Filter members by type. May be used multiple times.
  final pulumi.Input<List<String>?>? withTypes;

  /// Creates a new [GetNetworkMembersArgs].
  /// [networkId] ID the Network to list the members of.
  /// [withStatuses] Filter members by status. May be used multiple times.
  /// [withSubnets] Filter members by subnet. May be used multiple times.
  /// [withTypes] Filter members by type. May be used multiple times.
  const GetNetworkMembersArgs({
    required this.networkId,
    this.withStatuses,
    this.withSubnets,
    this.withTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkId': networkId,
      'withStatuses': ?withStatuses,
      'withSubnets': ?withSubnets,
      'withTypes': ?withTypes,
    };
  }

  factory GetNetworkMembersArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkMembersArgs(
      networkId: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['networkId'])),
      withStatuses: (() { final guardedValue = map['withStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      withSubnets: (() { final guardedValue = map['withSubnets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      withTypes: (() { final guardedValue = map['withTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
