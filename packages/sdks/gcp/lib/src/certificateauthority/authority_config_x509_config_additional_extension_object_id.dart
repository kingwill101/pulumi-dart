// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AuthorityConfigX509ConfigAdditionalExtensionObjectId {
  /// An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  final pulumi.Input<List<int>> objectIdPaths;

  /// Creates a new [AuthorityConfigX509ConfigAdditionalExtensionObjectId].
  /// [objectIdPaths] An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  AuthorityConfigX509ConfigAdditionalExtensionObjectId({
    required this.objectIdPaths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectIdPaths': objectIdPaths,
    };
  }

  factory AuthorityConfigX509ConfigAdditionalExtensionObjectId.fromMap(Map<String, dynamic> map) {
    return AuthorityConfigX509ConfigAdditionalExtensionObjectId(
      objectIdPaths: ((map['objectIdPaths'] as List).cast<int>()).input(),
    );
  }
}

