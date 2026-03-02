// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConsumerImageShareGroupTokensToken {
  /// When the token was created.
  final pulumi.Input<String> created;
  /// When the token will expire.
  final pulumi.Input<String> expiry;
  /// A label for the token.
  final pulumi.Input<String> label;
  /// The label of the Image Share Group that the token is for.
  final pulumi.Input<String> sharegroupLabel;
  /// The UUID of the Image Share Group that the token is for.
  final pulumi.Input<String> sharegroupUuid;
  /// The status of the token.
  final pulumi.Input<String> status;
  /// The UUID of the token.
  final pulumi.Input<String> tokenUuid;
  /// When the token was last updated.
  final pulumi.Input<String> updated;
  /// The UUID of the Image Share Group for which to create a token.
  final pulumi.Input<String> validForSharegroupUuid;

  /// Creates a new [GetConsumerImageShareGroupTokensToken].
  /// [created] When the token was created.
  /// [expiry] When the token will expire.
  /// [label] A label for the token.
  /// [sharegroupLabel] The label of the Image Share Group that the token is for.
  /// [sharegroupUuid] The UUID of the Image Share Group that the token is for.
  /// [status] The status of the token.
  /// [tokenUuid] The UUID of the token.
  /// [updated] When the token was last updated.
  /// [validForSharegroupUuid] The UUID of the Image Share Group for which to create a token.
  GetConsumerImageShareGroupTokensToken({
    required this.created,
    required this.expiry,
    required this.label,
    required this.sharegroupLabel,
    required this.sharegroupUuid,
    required this.status,
    required this.tokenUuid,
    required this.updated,
    required this.validForSharegroupUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': created,
      'expiry': expiry,
      'label': label,
      'sharegroupLabel': sharegroupLabel,
      'sharegroupUuid': sharegroupUuid,
      'status': status,
      'tokenUuid': tokenUuid,
      'updated': updated,
      'validForSharegroupUuid': validForSharegroupUuid,
    };
  }

  factory GetConsumerImageShareGroupTokensToken.fromMap(Map<String, dynamic> map) {
    return GetConsumerImageShareGroupTokensToken(
      created: (map['created'] as String).input(),
      expiry: (map['expiry'] as String).input(),
      label: (map['label'] as String).input(),
      sharegroupLabel: (map['sharegroupLabel'] as String).input(),
      sharegroupUuid: (map['sharegroupUuid'] as String).input(),
      status: (map['status'] as String).input(),
      tokenUuid: (map['tokenUuid'] as String).input(),
      updated: (map['updated'] as String).input(),
      validForSharegroupUuid: (map['validForSharegroupUuid'] as String).input(),
    );
  }
}

