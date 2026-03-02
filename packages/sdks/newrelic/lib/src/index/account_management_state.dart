// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccountManagement resources.
class AccountManagementState {
  /// The name of the Account.
  final pulumi.Input<String>? name;
  /// The region code of the account.  One of: `us01`, `eu01`.
  final pulumi.Input<String>? region;
  /// Status of the account - active or canceled
  final pulumi.Input<String>? status;

  /// Creates a new [AccountManagementState].
  /// [name] The name of the Account.
  /// [region] The region code of the account.  One of: `us01`, `eu01`.
  /// [status] Status of the account - active or canceled
  AccountManagementState({
    this.name,
    this.region,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'region': ?region,
      'status': ?status,
    };
  }

  factory AccountManagementState.fromMap(Map<String, dynamic> map) {
    return AccountManagementState(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

