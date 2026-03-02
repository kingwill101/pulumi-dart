// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secret_acl_read.dart';

class GetSecretAcl {
  final pulumi.Input<GetSecretAclRead> read;

  /// Creates a new [GetSecretAcl].
  /// [read] Required.
  GetSecretAcl({
    required this.read,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'read': pulumi.Input.mapInputValue<GetSecretAclRead, Map<String, dynamic>>(read, (value) => value.toMap()),
    };
  }

  factory GetSecretAcl.fromMap(Map<String, dynamic> map) {
    return GetSecretAcl(
      read: (GetSecretAclRead.fromMap((map['read'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

