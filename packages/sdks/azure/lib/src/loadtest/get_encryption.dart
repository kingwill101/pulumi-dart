// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_encryption_identity.dart';

class GetEncryption {
  /// An `identity` block as defined below.
  final pulumi.Input<List<GetEncryptionIdentity>> identities;
  /// The URI specifying the Key vault and key to be used to encrypt data in this resource.
  final pulumi.Input<String> keyUrl;

  /// Creates a new [GetEncryption].
  /// [identities] An `identity` block as defined below.
  /// [keyUrl] The URI specifying the Key vault and key to be used to encrypt data in this resource.
  GetEncryption({
    required this.identities,
    required this.keyUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identities': pulumi.Input.mapInputValue<List<GetEncryptionIdentity>, List<Map<String, dynamic>>>(identities, (value) => pulumi.Input.encodeList<GetEncryptionIdentity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'keyUrl': keyUrl,
    };
  }

  factory GetEncryption.fromMap(Map<String, dynamic> map) {
    return GetEncryption(
      identities: (pulumi.Input.decodeList<GetEncryptionIdentity>(map['identities'], (value) => GetEncryptionIdentity.fromMap((value as Map).cast<String, dynamic>()))).input(),
      keyUrl: (map['keyUrl'] as String).input(),
    );
  }
}

