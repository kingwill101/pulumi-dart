// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_v1_acl_read.dart';

class ContainerV1Acl {
  final pulumi.Input<ContainerV1AclRead>? read;

  /// Creates a new [ContainerV1Acl].
  /// [read] Optional.
  const ContainerV1Acl({
    this.read,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'read': ?pulumi.Input.mapOptionalInputValue<ContainerV1AclRead, Map<String, dynamic>>(read, (value) => value.toMap()),
    };
  }

  factory ContainerV1Acl.fromMap(Map<String, dynamic> map) {
    return ContainerV1Acl(
      read: (() { final guardedValue = map['read']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerV1AclRead.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

