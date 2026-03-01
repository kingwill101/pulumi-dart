// ignore_for_file: unused_element, unnecessary_cast

import 'search_encryption_with_cmk.dart';

/// Describes a policy that determines how resources within the search service are to be encrypted with customer managed keys.
class EncryptionWithCmk {
  /// Describes how a search service should enforce compliance if it finds objects that aren't encrypted with the customer-managed key.
  final SearchEncryptionWithCmk? enforcement;

  /// Creates a new [EncryptionWithCmk].
  /// [enforcement] Describes how a search service should enforce compliance if it finds objects that aren't encrypted with the customer-managed key.
  EncryptionWithCmk({
    this.enforcement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enforcement': ?enforcement == null ? null : enforcement!.value,
    };
  }

  factory EncryptionWithCmk.fromMap(Map<String, dynamic> map) {
    return EncryptionWithCmk(
      enforcement: map['enforcement'] == null ? null : SearchEncryptionWithCmk.fromValue(map['enforcement'] as String),
    );
  }
}

