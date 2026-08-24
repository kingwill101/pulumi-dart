// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountMemberFilter {
  /// Direction to order results.
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// Field to order results by.
  /// Available values: "user.first*name", "user.last*name", "user.email", "status".
  final pulumi.Input<String?>? order;
  /// A member's status in the account.
  /// Available values: "accepted", "pending", "rejected".
  final pulumi.Input<String?>? status;

  /// Creates a new [GetAccountMemberFilter].
  /// [direction] Direction to order results.
  /// [order] Field to order results by.
  /// [status] A member's status in the account.
  const GetAccountMemberFilter({
    this.direction,
    this.order,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'order': ?order,
      'status': ?status,
    };
  }

  factory GetAccountMemberFilter.fromMap(Map<String, dynamic> map) {
    return GetAccountMemberFilter(
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
