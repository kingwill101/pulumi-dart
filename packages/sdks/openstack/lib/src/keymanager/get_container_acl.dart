// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_container_acl_read.dart';

class GetContainerAcl {
  final pulumi.Input<GetContainerAclRead> read;

  /// Creates a new [GetContainerAcl].
  /// [read] Required.
  GetContainerAcl({required this.read});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'read':
          pulumi.Input.mapInputValue<GetContainerAclRead, Map<String, dynamic>>(
            read,
            (value) => value.toMap(),
          ),
    };
  }

  factory GetContainerAcl.fromMap(Map<String, dynamic> map) {
    return GetContainerAcl(
      read: pulumi.Input.fromValue(
        GetContainerAclRead.fromMap(
          (map['read']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
