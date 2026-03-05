// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getConsumerImageShareGroupToken.
class GetConsumerImageShareGroupTokenResult {
  /// When the token was created.
  final String created;

  /// When the token will expire.
  final String expiry;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A label for the token.
  final String label;

  /// The label of the Image Share Group that the token is for.
  final String sharegroupLabel;

  /// The UUID of the Image Share Group that the token is for.
  final String sharegroupUuid;

  /// The status of the token.
  final String status;
  final String tokenUuid;

  /// When the token was last updated.
  final String updated;

  /// The UUID of the Image Share Group for which to create a token.
  final String validForSharegroupUuid;

  /// Creates a new [GetConsumerImageShareGroupTokenResult].
  /// [created] When the token was created.
  /// [expiry] When the token will expire.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [label] A label for the token.
  /// [sharegroupLabel] The label of the Image Share Group that the token is for.
  /// [sharegroupUuid] The UUID of the Image Share Group that the token is for.
  /// [status] The status of the token.
  /// [tokenUuid] Required.
  /// [updated] When the token was last updated.
  /// [validForSharegroupUuid] The UUID of the Image Share Group for which to create a token.
  GetConsumerImageShareGroupTokenResult({
    required this.created,
    required this.expiry,
    required this.id,
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
      'id': id,
      'label': label,
      'sharegroupLabel': sharegroupLabel,
      'sharegroupUuid': sharegroupUuid,
      'status': status,
      'tokenUuid': tokenUuid,
      'updated': updated,
      'validForSharegroupUuid': validForSharegroupUuid,
    };
  }

  factory GetConsumerImageShareGroupTokenResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetConsumerImageShareGroupTokenResult(
      created: map['created'] as String,
      expiry: map['expiry'] as String,
      id: map['id'] as String,
      label: map['label'] as String,
      sharegroupLabel: map['sharegroupLabel'] as String,
      sharegroupUuid: map['sharegroupUuid'] as String,
      status: map['status'] as String,
      tokenUuid: map['tokenUuid'] as String,
      updated: map['updated'] as String,
      validForSharegroupUuid: map['validForSharegroupUuid'] as String,
    );
  }
}
