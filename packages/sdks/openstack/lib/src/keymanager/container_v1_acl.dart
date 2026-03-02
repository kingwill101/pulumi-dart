// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_v1_acl_read.dart';

class ContainerV1Acl {
  final pulumi.Input<ContainerV1AclRead>? read;

  /// Creates a new [ContainerV1Acl].
  /// [read] Optional.
  ContainerV1Acl({
    this.read,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'read': ?pulumi.Input.mapOptionalInputValue<ContainerV1AclRead, Map<String, dynamic>>(read, (value) => value.toMap()),
    };
  }

  factory ContainerV1Acl.fromMap(Map<String, dynamic> map) {
    return ContainerV1Acl(
      read: map['read'] == null ? null : (ContainerV1AclRead.fromMap((map['read']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

