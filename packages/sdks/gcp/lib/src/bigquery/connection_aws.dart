// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_aws_access_role.dart';

class ConnectionAws {
  /// Authentication using Google owned service account to assume into customer's AWS IAM Role.
  /// Structure is documented below.
  final pulumi.Input<ConnectionAwsAccessRole> accessRole;

  /// Creates a new [ConnectionAws].
  /// [accessRole] Authentication using Google owned service account to assume into customer's AWS IAM Role.
  const ConnectionAws({
    required this.accessRole,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessRole': pulumi.Input.mapInputValue<ConnectionAwsAccessRole, Map<String, dynamic>>(accessRole, (value) => value.toMap()),
    };
  }

  factory ConnectionAws.fromMap(Map<String, dynamic> map) {
    return ConnectionAws(
      accessRole: pulumi.Input.fromValue(ConnectionAwsAccessRole.fromMap((map['accessRole']! as Map).cast<String, dynamic>())),
    );
  }
}

