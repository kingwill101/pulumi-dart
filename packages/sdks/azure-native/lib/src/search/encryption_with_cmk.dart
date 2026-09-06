// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'search_encryption_with_cmk.dart';

/// Describes a policy that determines how resources within the search service are to be encrypted with customer managed keys.
class EncryptionWithCmk {
  /// Describes how a search service should enforce compliance if it finds objects that aren't encrypted with the customer-managed key.
  final pulumi.Input<SearchEncryptionWithCmk?>? enforcement;

  /// Creates a new [EncryptionWithCmk].
  /// [enforcement] Describes how a search service should enforce compliance if it finds objects that aren't encrypted with the customer-managed key.
  const EncryptionWithCmk({
    this.enforcement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enforcement': ?pulumi.Input.mapOptionalInputValue<SearchEncryptionWithCmk, String>(enforcement, (value) => value.wireValue),
    };
  }

  factory EncryptionWithCmk.fromMap(Map<String, dynamic> map) {
    return EncryptionWithCmk(
      enforcement: (() { final guardedValue = map['enforcement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SearchEncryptionWithCmk.fromValue(guardedValue as String)); })(),
    );
  }
}
