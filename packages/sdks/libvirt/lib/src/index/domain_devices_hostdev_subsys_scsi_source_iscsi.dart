// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_hostdev_subsys_scsi_source_iscsi_auth.dart';
import 'domain_devices_hostdev_subsys_scsi_source_iscsi_host.dart';
import 'domain_devices_hostdev_subsys_scsi_source_iscsi_initiator.dart';

class DomainDevicesHostdevSubsysScsiSourceIscsi {
  /// Configures authentication settings for the iSCSI source.
  final pulumi.Input<DomainDevicesHostdevSubsysScsiSourceIscsiAuth>? auth;

  /// Configures the iSCSI host settings for the device source.
  final pulumi.Input<List<DomainDevicesHostdevSubsysScsiSourceIscsiHost>>?
  hosts;

  /// Configures the iSCSI initiator settings for the device source.
  final pulumi.Input<DomainDevicesHostdevSubsysScsiSourceIscsiInitiator>?
  initiator;

  /// Specifies the name for the iSCSI source configuration.
  final pulumi.Input<String> name;

  /// Creates a new [DomainDevicesHostdevSubsysScsiSourceIscsi].
  /// [auth] Configures authentication settings for the iSCSI source.
  /// [hosts] Configures the iSCSI host settings for the device source.
  /// [initiator] Configures the iSCSI initiator settings for the device source.
  /// [name] Specifies the name for the iSCSI source configuration.
  DomainDevicesHostdevSubsysScsiSourceIscsi({
    this.auth,
    this.hosts,
    this.initiator,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auth':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesHostdevSubsysScsiSourceIscsiAuth,
            Map<String, dynamic>
          >(auth, (value) => value.toMap()),
      'hosts':
          ?pulumi.Input.mapOptionalInputValue<
            List<DomainDevicesHostdevSubsysScsiSourceIscsiHost>,
            List<Map<String, dynamic>>
          >(
            hosts,
            (value) =>
                pulumi.Input.encodeList<
                  DomainDevicesHostdevSubsysScsiSourceIscsiHost,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'initiator':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesHostdevSubsysScsiSourceIscsiInitiator,
            Map<String, dynamic>
          >(initiator, (value) => value.toMap()),
      'name': name,
    };
  }

  factory DomainDevicesHostdevSubsysScsiSourceIscsi.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainDevicesHostdevSubsysScsiSourceIscsi(
      auth: (() {
        final guardedValue = map['auth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesHostdevSubsysScsiSourceIscsiAuth.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      hosts: (() {
        final guardedValue = map['hosts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi
              .Input.decodeList<DomainDevicesHostdevSubsysScsiSourceIscsiHost>(
            guardedValue,
            (value) => DomainDevicesHostdevSubsysScsiSourceIscsiHost.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      initiator: (() {
        final guardedValue = map['initiator'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesHostdevSubsysScsiSourceIscsiInitiator.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
