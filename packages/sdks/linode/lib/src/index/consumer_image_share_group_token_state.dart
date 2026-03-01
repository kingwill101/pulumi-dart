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
    pulumi.Output<String>? created,
    pulumi.Output<String>? expiry,
    pulumi.Output<String>? label,
    pulumi.Output<String>? sharegroupLabel,
    pulumi.Output<String>? sharegroupUuid,
    pulumi.Output<String>? status,
    pulumi.Output<String>? token,
    pulumi.Output<String>? tokenUuid,
    pulumi.Output<String>? updated,
    pulumi.Output<String>? validForSharegroupUuid,
  }) :
      created = pulumi.Input.asOptionalInput<String>(created),
      expiry = pulumi.Input.asOptionalInput<String>(expiry),
      label = pulumi.Input.asOptionalInput<String>(label),
      sharegroupLabel = pulumi.Input.asOptionalInput<String>(sharegroupLabel),
      sharegroupUuid = pulumi.Input.asOptionalInput<String>(sharegroupUuid),
      status = pulumi.Input.asOptionalInput<String>(status),
      token = pulumi.Input.asOptionalInput<String>(token),
      tokenUuid = pulumi.Input.asOptionalInput<String>(tokenUuid),
      updated = pulumi.Input.asOptionalInput<String>(updated),
      validForSharegroupUuid = pulumi.Input.asOptionalInput<String>(validForSharegroupUuid);

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
      created: map['created'] == null ? null : pulumi.Output.create<String>(map['created'] as String),
      expiry: map['expiry'] == null ? null : pulumi.Output.create<String>(map['expiry'] as String),
      label: map['label'] == null ? null : pulumi.Output.create<String>(map['label'] as String),
      sharegroupLabel: map['sharegroupLabel'] == null ? null : pulumi.Output.create<String>(map['sharegroupLabel'] as String),
      sharegroupUuid: map['sharegroupUuid'] == null ? null : pulumi.Output.create<String>(map['sharegroupUuid'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      token: map['token'] == null ? null : pulumi.Output.create<String>(map['token'] as String),
      tokenUuid: map['tokenUuid'] == null ? null : pulumi.Output.create<String>(map['tokenUuid'] as String),
      updated: map['updated'] == null ? null : pulumi.Output.create<String>(map['updated'] as String),
      validForSharegroupUuid: map['validForSharegroupUuid'] == null ? null : pulumi.Output.create<String>(map['validForSharegroupUuid'] as String),
    );
  }
}

