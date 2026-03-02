// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ConsumerImageShareGroupToken resources.
class ConsumerImageShareGroupTokenState {
  /// When the token was created.
  final pulumi.Input<String>? created;
  /// When the token will expire.
  final pulumi.Input<String>? expiry;
  /// A label for the token.
  final pulumi.Input<String>? label;
  /// The label of the Image Share Group that the token is for.
  final pulumi.Input<String>? sharegroupLabel;
  /// The UUID of the Image Share Group that the token is for.
  final pulumi.Input<String>? sharegroupUuid;
  /// The status of the token.
  final pulumi.Input<String>? status;
  /// The one-time-use token to be provided to the Image Share Group Producer.
  final pulumi.Input<String>? token;
  /// The UUID of the token.
  final pulumi.Input<String>? tokenUuid;
  /// When the token was last updated.
  final pulumi.Input<String>? updated;
  /// The UUID of the Image Share Group for which to create a token.
  final pulumi.Input<String>? validForSharegroupUuid;

  /// Creates a new [ConsumerImageShareGroupTokenState].
  /// [created] When the token was created.
  /// [expiry] When the token will expire.
  /// [label] A label for the token.
  /// [sharegroupLabel] The label of the Image Share Group that the token is for.
  /// [sharegroupUuid] The UUID of the Image Share Group that the token is for.
  /// [status] The status of the token.
  /// [token] The one-time-use token to be provided to the Image Share Group Producer.
  /// [tokenUuid] The UUID of the token.
  /// [updated] When the token was last updated.
  /// [validForSharegroupUuid] The UUID of the Image Share Group for which to create a token.
  ConsumerImageShareGroupTokenState({
    this.created,
    this.expiry,
    this.label,
    this.sharegroupLabel,
    this.sharegroupUuid,
    this.status,
    this.token,
    this.tokenUuid,
    this.updated,
    this.validForSharegroupUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': ?created,
      'expiry': ?expiry,
      'label': ?label,
      'sharegroupLabel': ?sharegroupLabel,
      'sharegroupUuid': ?sharegroupUuid,
      'status': ?status,
      'token': ?token,
      'tokenUuid': ?tokenUuid,
      'updated': ?updated,
      'validForSharegroupUuid': ?validForSharegroupUuid,
    };
  }

  factory ConsumerImageShareGroupTokenState.fromMap(Map<String, dynamic> map) {
    return ConsumerImageShareGroupTokenState(
      created: map['created'] == null ? null : (map['created'] as String).input(),
      expiry: map['expiry'] == null ? null : (map['expiry'] as String).input(),
      label: map['label'] == null ? null : (map['label'] as String).input(),
      sharegroupLabel: map['sharegroupLabel'] == null ? null : (map['sharegroupLabel'] as String).input(),
      sharegroupUuid: map['sharegroupUuid'] == null ? null : (map['sharegroupUuid'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      token: map['token'] == null ? null : (map['token'] as String).input(),
      tokenUuid: map['tokenUuid'] == null ? null : (map['tokenUuid'] as String).input(),
      updated: map['updated'] == null ? null : (map['updated'] as String).input(),
      validForSharegroupUuid: map['validForSharegroupUuid'] == null ? null : (map['validForSharegroupUuid'] as String).input(),
    );
  }
}

