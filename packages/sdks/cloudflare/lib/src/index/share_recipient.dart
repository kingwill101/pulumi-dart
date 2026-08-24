// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ShareRecipient {
  /// Organization identifier.
  final pulumi.Input<String?>? organizationId;
  /// The account that will receive the share.
  final pulumi.Input<String?>? recipientAccountId;

  /// Creates a new [ShareRecipient].
  /// [organizationId] Organization identifier.
  /// [recipientAccountId] The account that will receive the share.
  const ShareRecipient({
    this.organizationId,
    this.recipientAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organizationId': ?organizationId,
      'recipientAccountId': ?recipientAccountId,
    };
  }

  factory ShareRecipient.fromMap(Map<String, dynamic> map) {
    return ShareRecipient(
      organizationId: (() { final guardedValue = map['organizationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recipientAccountId: (() { final guardedValue = map['recipientAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
