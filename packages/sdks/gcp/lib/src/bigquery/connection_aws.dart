// ignore_for_file: unused_element, unnecessary_cast

import 'connection_aws_access_role.dart';

class ConnectionAws {
  /// Authentication using Google owned service account to assume into customer's AWS IAM Role.
  /// Structure is documented below.
  final ConnectionAwsAccessRole accessRole;

  /// Creates a new [ConnectionAws].
  /// [accessRole] Authentication using Google owned service account to assume into customer's AWS IAM Role.
  ConnectionAws({
    required this.accessRole,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessRole': accessRole.toMap(),
    };
  }

  factory ConnectionAws.fromMap(Map<String, dynamic> map) {
    return ConnectionAws(
      accessRole: ConnectionAwsAccessRole.fromMap((map['accessRole'] as Map).cast<String, dynamic>()),
    );
  }
}

