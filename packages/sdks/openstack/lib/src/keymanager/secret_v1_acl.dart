// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_v1_acl_read.dart';

class SecretV1Acl {
  final pulumi.Input<SecretV1AclRead>? read;

  /// Creates a new [SecretV1Acl].
  /// [read] Optional.
  SecretV1Acl({this.read});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'read':
          ?pulumi.Input.mapOptionalInputValue<
            SecretV1AclRead,
            Map<String, dynamic>
          >(read, (value) => value.toMap()),
    };
  }

  factory SecretV1Acl.fromMap(Map<String, dynamic> map) {
    return SecretV1Acl(
      read: (() {
        final guardedValue = map['read'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SecretV1AclRead.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
