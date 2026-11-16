// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ShareExcludedRecipient {
  /// The account to exclude from the organization-targeted share.
  final pulumi.Input<String> accountId;

  /// Creates a new [ShareExcludedRecipient].
  /// [accountId] The account to exclude from the organization-targeted share.
  const ShareExcludedRecipient({
    required this.accountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
    };
  }

  factory ShareExcludedRecipient.fromMap(Map<String, dynamic> map) {
    return ShareExcludedRecipient(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
    );
  }
}
