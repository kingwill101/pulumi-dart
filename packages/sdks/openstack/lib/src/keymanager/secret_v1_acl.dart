// ignore_for_file: unused_element, unnecessary_cast

import 'secret_v1_acl_read.dart';

class SecretV1Acl {
  final SecretV1AclRead? read;

  /// Creates a new [SecretV1Acl].
  /// [read] Optional.
  SecretV1Acl({
    this.read,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'read': ?read == null ? null : read!.toMap(),
    };
  }

  factory SecretV1Acl.fromMap(Map<String, dynamic> map) {
    return SecretV1Acl(
      read: map['read'] == null ? null : SecretV1AclRead.fromMap((map['read'] as Map).cast<String, dynamic>()),
    );
  }
}

