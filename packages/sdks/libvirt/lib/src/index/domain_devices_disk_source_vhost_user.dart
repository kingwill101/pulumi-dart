// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_source_vhost_user_dbus.dart';
import 'domain_devices_disk_source_vhost_user_dev.dart';
import 'domain_devices_disk_source_vhost_user_file.dart';
import 'domain_devices_disk_source_vhost_user_nmdm.dart';
import 'domain_devices_disk_source_vhost_user_pipe.dart';
import 'domain_devices_disk_source_vhost_user_pty.dart';
import 'domain_devices_disk_source_vhost_user_qemuvd_agent.dart';
import 'domain_devices_disk_source_vhost_user_spice_port.dart';
import 'domain_devices_disk_source_vhost_user_tcp.dart';
import 'domain_devices_disk_source_vhost_user_udp.dart';
import 'domain_devices_disk_source_vhost_user_unix.dart';

class DomainDevicesDiskSourceVhostUser {
  /// Configures the DBus source for the EGD backend.
  final pulumi.Input<DomainDevicesDiskSourceVhostUserDbus>? dbus;
  /// Defines the device path for the source of the EGD backend.
  final pulumi.Input<DomainDevicesDiskSourceVhostUserDev>? dev;
  /// Defines a file source for the RNG EGD backend.
  final pulumi.Input<DomainDevicesDiskSourceVhostUserFile>? file;
  /// Configures the NMDM (null modem) device source for the EGD backend.
  final pulumi.Input<DomainDevicesDiskSourceVhostUserNmdm>? nmdm;
  /// Configures a null device type in the VHostUser source configuration for the mirrored disk.
  final pulumi.Input<bool>? null_;
  /// Defines a pipe source for the EGD backend.
  final pulumi.Input<DomainDevicesDiskSourceVhostUserPipe>? pipe;
  /// Defines a pseudo-terminal (PTY) source for the EGD backend.
  final pulumi.Input<DomainDevicesDiskSourceVhostUserPty>? pty;
  /// Configures the QEMU guest agent for the random number generator backend.
  final pulumi.Input<DomainDevicesDiskSourceVhostUserQemuvdAgent>? qemuvdAgent;
  /// Configures the SPICE port settings for the random number generator backend.
  final pulumi.Input<DomainDevicesDiskSourceVhostUserSpicePort>? spicePort;
  /// Configures the Spice VMC settings in the VHostUser source configuration for the mirrored disk.
  final pulumi.Input<bool>? spiceVmc;
  /// Configures standard I/O settings for the VHostUser interface associated with the mirrored disk.
  final pulumi.Input<bool>? stdIo;
  /// Configures TCP settings for the random number generator backend.
  final pulumi.Input<DomainDevicesDiskSourceVhostUserTcp>? tcp;
  /// Configures UDP settings for the random number generator backend.
  final pulumi.Input<DomainDevicesDiskSourceVhostUserUdp>? udp;
  /// Configures UNIX domain socket settings for the random number generator backend.
  final pulumi.Input<DomainDevicesDiskSourceVhostUserUnix>? unix;
  /// Configures the VHostUser virtual channel settings for the source backing store.
  final pulumi.Input<bool>? vc;

  /// Creates a new [DomainDevicesDiskSourceVhostUser].
  /// [dbus] Configures the DBus source for the EGD backend.
  /// [dev] Defines the device path for the source of the EGD backend.
  /// [file] Defines a file source for the RNG EGD backend.
  /// [nmdm] Configures the NMDM (null modem) device source for the EGD backend.
  /// [null_] Configures a null device type in the VHostUser source configuration for the mirrored disk.
  /// [pipe] Defines a pipe source for the EGD backend.
  /// [pty] Defines a pseudo-terminal (PTY) source for the EGD backend.
  /// [qemuvdAgent] Configures the QEMU guest agent for the random number generator backend.
  /// [spicePort] Configures the SPICE port settings for the random number generator backend.
  /// [spiceVmc] Configures the Spice VMC settings in the VHostUser source configuration for the mirrored disk.
  /// [stdIo] Configures standard I/O settings for the VHostUser interface associated with the mirrored disk.
  /// [tcp] Configures TCP settings for the random number generator backend.
  /// [udp] Configures UDP settings for the random number generator backend.
  /// [unix] Configures UNIX domain socket settings for the random number generator backend.
  /// [vc] Configures the VHostUser virtual channel settings for the source backing store.
  DomainDevicesDiskSourceVhostUser({
    this.dbus,
    this.dev,
    this.file,
    this.nmdm,
    this.null_,
    this.pipe,
    this.pty,
    this.qemuvdAgent,
    this.spicePort,
    this.spiceVmc,
    this.stdIo,
    this.tcp,
    this.udp,
    this.unix,
    this.vc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbus': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskSourceVhostUserDbus, Map<String, dynamic>>(dbus, (value) => value.toMap()),
      'dev': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskSourceVhostUserDev, Map<String, dynamic>>(dev, (value) => value.toMap()),
      'file': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskSourceVhostUserFile, Map<String, dynamic>>(file, (value) => value.toMap()),
      'nmdm': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskSourceVhostUserNmdm, Map<String, dynamic>>(nmdm, (value) => value.toMap()),
      'null': ?null_,
      'pipe': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskSourceVhostUserPipe, Map<String, dynamic>>(pipe, (value) => value.toMap()),
      'pty': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskSourceVhostUserPty, Map<String, dynamic>>(pty, (value) => value.toMap()),
      'qemuvdAgent': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskSourceVhostUserQemuvdAgent, Map<String, dynamic>>(qemuvdAgent, (value) => value.toMap()),
      'spicePort': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskSourceVhostUserSpicePort, Map<String, dynamic>>(spicePort, (value) => value.toMap()),
      'spiceVmc': ?spiceVmc,
      'stdIo': ?stdIo,
      'tcp': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskSourceVhostUserTcp, Map<String, dynamic>>(tcp, (value) => value.toMap()),
      'udp': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskSourceVhostUserUdp, Map<String, dynamic>>(udp, (value) => value.toMap()),
      'unix': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskSourceVhostUserUnix, Map<String, dynamic>>(unix, (value) => value.toMap()),
      'vc': ?vc,
    };
  }

  factory DomainDevicesDiskSourceVhostUser.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceVhostUser(
      dbus: map['dbus'] == null ? null : (DomainDevicesDiskSourceVhostUserDbus.fromMap((map['dbus'] as Map).cast<String, dynamic>())).input(),
      dev: map['dev'] == null ? null : (DomainDevicesDiskSourceVhostUserDev.fromMap((map['dev'] as Map).cast<String, dynamic>())).input(),
      file: map['file'] == null ? null : (DomainDevicesDiskSourceVhostUserFile.fromMap((map['file'] as Map).cast<String, dynamic>())).input(),
      nmdm: map['nmdm'] == null ? null : (DomainDevicesDiskSourceVhostUserNmdm.fromMap((map['nmdm'] as Map).cast<String, dynamic>())).input(),
      null_: map['null'] == null ? null : (map['null'] as bool).input(),
      pipe: map['pipe'] == null ? null : (DomainDevicesDiskSourceVhostUserPipe.fromMap((map['pipe'] as Map).cast<String, dynamic>())).input(),
      pty: map['pty'] == null ? null : (DomainDevicesDiskSourceVhostUserPty.fromMap((map['pty'] as Map).cast<String, dynamic>())).input(),
      qemuvdAgent: map['qemuvdAgent'] == null ? null : (DomainDevicesDiskSourceVhostUserQemuvdAgent.fromMap((map['qemuvdAgent'] as Map).cast<String, dynamic>())).input(),
      spicePort: map['spicePort'] == null ? null : (DomainDevicesDiskSourceVhostUserSpicePort.fromMap((map['spicePort'] as Map).cast<String, dynamic>())).input(),
      spiceVmc: map['spiceVmc'] == null ? null : (map['spiceVmc'] as bool).input(),
      stdIo: map['stdIo'] == null ? null : (map['stdIo'] as bool).input(),
      tcp: map['tcp'] == null ? null : (DomainDevicesDiskSourceVhostUserTcp.fromMap((map['tcp'] as Map).cast<String, dynamic>())).input(),
      udp: map['udp'] == null ? null : (DomainDevicesDiskSourceVhostUserUdp.fromMap((map['udp'] as Map).cast<String, dynamic>())).input(),
      unix: map['unix'] == null ? null : (DomainDevicesDiskSourceVhostUserUnix.fromMap((map['unix'] as Map).cast<String, dynamic>())).input(),
      vc: map['vc'] == null ? null : (map['vc'] as bool).input(),
    );
  }
}

