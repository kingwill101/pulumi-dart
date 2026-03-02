// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_hostdev_subsys_scsi_source_iscsi_auth_secret.dart';

class DomainDevicesHostdevSubsysScsiSourceIscsiAuth {
  /// Specifies the secret used for authenticating the iSCSI connection.
  final pulumi.Input<DomainDevicesHostdevSubsysScsiSourceIscsiAuthSecret>? secret;
  /// Sets the username for iSCSI authentication.
  final pulumi.Input<String>? username;

  /// Creates a new [DomainDevicesHostdevSubsysScsiSourceIscsiAuth].
  /// [secret] Specifies the secret used for authenticating the iSCSI connection.
  /// [username] Sets the username for iSCSI authentication.
  DomainDevicesHostdevSubsysScsiSourceIscsiAuth({
    this.secret,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secret': ?pulumi.Input.mapOptionalInputValue<DomainDevicesHostdevSubsysScsiSourceIscsiAuthSecret, Map<String, dynamic>>(secret, (value) => value.toMap()),
      'username': ?username,
    };
  }

  factory DomainDevicesHostdevSubsysScsiSourceIscsiAuth.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevSubsysScsiSourceIscsiAuth(
      secret: map['secret'] == null ? null : (DomainDevicesHostdevSubsysScsiSourceIscsiAuthSecret.fromMap((map['secret'] as Map).cast<String, dynamic>())).input(),
      username: map['username'] == null ? null : (map['username'] as String).input(),
    );
  }
}

