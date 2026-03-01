// ignore_for_file: unused_element, unnecessary_cast

import 'get_secret_acl_read.dart';

class GetSecretAcl {
  final GetSecretAclRead read;

  /// Creates a new [GetSecretAcl].
  /// [read] Required.
  GetSecretAcl({
    required this.read,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'read': read.toMap(),
    };
  }

  factory GetSecretAcl.fromMap(Map<String, dynamic> map) {
    return GetSecretAcl(
      read: GetSecretAclRead.fromMap((map['read'] as Map).cast<String, dynamic>()),
    );
  }
}

