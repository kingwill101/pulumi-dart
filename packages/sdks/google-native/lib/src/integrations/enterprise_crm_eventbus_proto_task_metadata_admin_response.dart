// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Admins are owners of a Task, and have all permissions on a particular task identified by the task name. By default, Eventbus periodically scans all task metadata and syncs (adds) any new admins defined here to Zanzibar.
class EnterpriseCrmEventbusProtoTaskMetadataAdminResponse {
  final pulumi.Input<String> googleGroupEmail;
  final pulumi.Input<String> userEmail;

  /// Creates a new [EnterpriseCrmEventbusProtoTaskMetadataAdminResponse].
  /// [googleGroupEmail] Required.
  /// [userEmail] Required.
  const EnterpriseCrmEventbusProtoTaskMetadataAdminResponse({
    required this.googleGroupEmail,
    required this.userEmail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'googleGroupEmail': googleGroupEmail,
      'userEmail': userEmail,
    };
  }

  factory EnterpriseCrmEventbusProtoTaskMetadataAdminResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoTaskMetadataAdminResponse(
      googleGroupEmail: pulumi.Input.fromValue(map['googleGroupEmail'] as String),
      userEmail: pulumi.Input.fromValue(map['userEmail'] as String),
    );
  }
}

