// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'members_member.dart';

/// Input properties used for looking up and filtering Members resources.
class MembersState {
  /// A set of dictionaries containing member parameters. The
  /// structure is described below.
  final pulumi.Input<List<MembersMember>>? members;
  /// The id of the pool that members will be assigned to.
  /// Changing this creates a new members resource.
  final pulumi.Input<String>? poolId;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create pool members. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// members resource.
  final pulumi.Input<String>? region;

  /// Creates a new [MembersState].
  /// [members] A set of dictionaries containing member parameters. The
  /// [poolId] The id of the pool that members will be assigned to.
  /// [region] The region in which to obtain the V2 Networking client.
  MembersState({
    pulumi.Output<List<MembersMember>>? members,
    pulumi.Output<String>? poolId,
    pulumi.Output<String>? region,
  }) :
      members = pulumi.Input.asOptionalInput<List<MembersMember>>(members),
      poolId = pulumi.Input.asOptionalInput<String>(poolId),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'members': ?pulumi.Input.mapOptionalInputValue<List<MembersMember>, List<Map<String, dynamic>>>(members, (value) => pulumi.Input.encodeList<MembersMember, Map<String, dynamic>>(value, (value) => value.toMap())),
      'poolId': ?poolId,
      'region': ?region,
    };
  }

  factory MembersState.fromMap(Map<String, dynamic> map) {
    return MembersState(
      members: map['members'] == null ? null : pulumi.Output.create<List<MembersMember>>(pulumi.Input.decodeList<MembersMember>(map['members'], (value) => MembersMember.fromMap((value as Map).cast<String, dynamic>()))),
      poolId: map['poolId'] == null ? null : pulumi.Output.create<String>(map['poolId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

