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
  const ConsumerImageShareGroupTokenState({
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
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expiry: (() { final guardedValue = map['expiry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sharegroupLabel: (() { final guardedValue = map['sharegroupLabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sharegroupUuid: (() { final guardedValue = map['sharegroupUuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      token: (() { final guardedValue = map['token']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenUuid: (() { final guardedValue = map['tokenUuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updated: (() { final guardedValue = map['updated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validForSharegroupUuid: (() { final guardedValue = map['validForSharegroupUuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

