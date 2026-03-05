// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ProducerImageShareGroupMember resources.
class ProducerImageShareGroupMemberState {
  /// When the member was created.
  final pulumi.Input<String>? created;
  /// When the member will expire.
  final pulumi.Input<String>? expiry;
  /// A label for the member.
  final pulumi.Input<String>? label;
  /// The ID of the Image Share Group to which the member will be added.
  final pulumi.Input<int>? sharegroupId;
  /// The status of the member.
  final pulumi.Input<String>? status;
  /// The token of the prospective member.
  final pulumi.Input<String>? token;
  /// The UUID of member's token.
  final pulumi.Input<String>? tokenUuid;
  /// When the member was last updated.
  final pulumi.Input<String>? updated;

  /// Creates a new [ProducerImageShareGroupMemberState].
  /// [created] When the member was created.
  /// [expiry] When the member will expire.
  /// [label] A label for the member.
  /// [sharegroupId] The ID of the Image Share Group to which the member will be added.
  /// [status] The status of the member.
  /// [token] The token of the prospective member.
  /// [tokenUuid] The UUID of member's token.
  /// [updated] When the member was last updated.
  ProducerImageShareGroupMemberState({
    this.created,
    this.expiry,
    this.label,
    this.sharegroupId,
    this.status,
    this.token,
    this.tokenUuid,
    this.updated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': ?created,
      'expiry': ?expiry,
      'label': ?label,
      'sharegroupId': ?sharegroupId,
      'status': ?status,
      'token': ?token,
      'tokenUuid': ?tokenUuid,
      'updated': ?updated,
    };
  }

  factory ProducerImageShareGroupMemberState.fromMap(Map<String, dynamic> map) {
    return ProducerImageShareGroupMemberState(
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expiry: (() { final guardedValue = map['expiry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sharegroupId: (() { final guardedValue = map['sharegroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      token: (() { final guardedValue = map['token']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenUuid: (() { final guardedValue = map['tokenUuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updated: (() { final guardedValue = map['updated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

