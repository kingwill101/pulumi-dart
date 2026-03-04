// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCryptoKeysKeyKeyAccessJustificationsPolicy {
  /// The list of allowed reasons for access to this CryptoKey. Zero allowed
  /// access reasons means all encrypt, decrypt, and sign operations for
  /// this CryptoKey will fail.
  final pulumi.Input<List<String>> allowedAccessReasons;

  /// Creates a new [GetCryptoKeysKeyKeyAccessJustificationsPolicy].
  /// [allowedAccessReasons] The list of allowed reasons for access to this CryptoKey. Zero allowed
  GetCryptoKeysKeyKeyAccessJustificationsPolicy({
    required this.allowedAccessReasons,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'allowedAccessReasons': allowedAccessReasons};
  }

  factory GetCryptoKeysKeyKeyAccessJustificationsPolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetCryptoKeysKeyKeyAccessJustificationsPolicy(
      allowedAccessReasons: pulumi.Input.fromValue(
        (map['allowedAccessReasons'] as List).cast<String>(),
      ),
    );
  }
}
