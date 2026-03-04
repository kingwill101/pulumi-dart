// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Admins are owners of a Task, and have all permissions on a particular task identified by the task name. By default, Eventbus periodically scans all task metadata and syncs (adds) any new admins defined here to Zanzibar.
class EnterpriseCrmEventbusProtoTaskMetadataAdmin {
  final pulumi.Input<String>? googleGroupEmail;
  final pulumi.Input<String>? userEmail;

  /// Creates a new [EnterpriseCrmEventbusProtoTaskMetadataAdmin].
  /// [googleGroupEmail] Optional.
  /// [userEmail] Optional.
  EnterpriseCrmEventbusProtoTaskMetadataAdmin({
    this.googleGroupEmail,
    this.userEmail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'googleGroupEmail': ?googleGroupEmail,
      'userEmail': ?userEmail,
    };
  }

  factory EnterpriseCrmEventbusProtoTaskMetadataAdmin.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmEventbusProtoTaskMetadataAdmin(
      googleGroupEmail: (() {
        final guardedValue = map['googleGroupEmail'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userEmail: (() {
        final guardedValue = map['userEmail'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
