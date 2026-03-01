// ignore_for_file: unused_element, unnecessary_cast

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
  final DomainDevicesDiskSourceVhostUserDbus? dbus;
  /// Defines the device path for the source of the EGD backend.
  final DomainDevicesDiskSourceVhostUserDev? dev;
  /// Defines a file source for the RNG EGD backend.
  final DomainDevicesDiskSourceVhostUserFile? file;
  /// Configures the NMDM (null modem) device source for the EGD backend.
  final DomainDevicesDiskSourceVhostUserNmdm? nmdm;
  /// Configures a null device type in the VHostUser source configuration for the mirrored disk.
  final bool? null_;
  /// Defines a pipe source for the EGD backend.
  final DomainDevicesDiskSourceVhostUserPipe? pipe;
  /// Defines a pseudo-terminal (PTY) source for the EGD backend.
  final DomainDevicesDiskSourceVhostUserPty? pty;
  /// Configures the QEMU guest agent for the random number generator backend.
  final DomainDevicesDiskSourceVhostUserQemuvdAgent? qemuvdAgent;
  /// Configures the SPICE port settings for the random number generator backend.
  final DomainDevicesDiskSourceVhostUserSpicePort? spicePort;
  /// Configures the Spice VMC settings in the VHostUser source configuration for the mirrored disk.
  final bool? spiceVmc;
  /// Configures standard I/O settings for the VHostUser interface associated with the mirrored disk.
  final bool? stdIo;
  /// Configures TCP settings for the random number generator backend.
  final DomainDevicesDiskSourceVhostUserTcp? tcp;
  /// Configures UDP settings for the random number generator backend.
  final DomainDevicesDiskSourceVhostUserUdp? udp;
  /// Configures UNIX domain socket settings for the random number generator backend.
  final DomainDevicesDiskSourceVhostUserUnix? unix;
  /// Configures the VHostUser virtual channel settings for the source backing store.
  final bool? vc;

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
      'dbus': ?dbus == null ? null : dbus!.toMap(),
      'dev': ?dev == null ? null : dev!.toMap(),
      'file': ?file == null ? null : file!.toMap(),
      'nmdm': ?nmdm == null ? null : nmdm!.toMap(),
      'null': ?null_,
      'pipe': ?pipe == null ? null : pipe!.toMap(),
      'pty': ?pty == null ? null : pty!.toMap(),
      'qemuvdAgent': ?qemuvdAgent == null ? null : qemuvdAgent!.toMap(),
      'spicePort': ?spicePort == null ? null : spicePort!.toMap(),
      'spiceVmc': ?spiceVmc,
      'stdIo': ?stdIo,
      'tcp': ?tcp == null ? null : tcp!.toMap(),
      'udp': ?udp == null ? null : udp!.toMap(),
      'unix': ?unix == null ? null : unix!.toMap(),
      'vc': ?vc,
    };
  }

  factory DomainDevicesDiskSourceVhostUser.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceVhostUser(
      dbus: map['dbus'] == null ? null : DomainDevicesDiskSourceVhostUserDbus.fromMap((map['dbus'] as Map).cast<String, dynamic>()),
      dev: map['dev'] == null ? null : DomainDevicesDiskSourceVhostUserDev.fromMap((map['dev'] as Map).cast<String, dynamic>()),
      file: map['file'] == null ? null : DomainDevicesDiskSourceVhostUserFile.fromMap((map['file'] as Map).cast<String, dynamic>()),
      nmdm: map['nmdm'] == null ? null : DomainDevicesDiskSourceVhostUserNmdm.fromMap((map['nmdm'] as Map).cast<String, dynamic>()),
      null_: map['null'] == null ? null : map['null'] as bool,
      pipe: map['pipe'] == null ? null : DomainDevicesDiskSourceVhostUserPipe.fromMap((map['pipe'] as Map).cast<String, dynamic>()),
      pty: map['pty'] == null ? null : DomainDevicesDiskSourceVhostUserPty.fromMap((map['pty'] as Map).cast<String, dynamic>()),
      qemuvdAgent: map['qemuvdAgent'] == null ? null : DomainDevicesDiskSourceVhostUserQemuvdAgent.fromMap((map['qemuvdAgent'] as Map).cast<String, dynamic>()),
      spicePort: map['spicePort'] == null ? null : DomainDevicesDiskSourceVhostUserSpicePort.fromMap((map['spicePort'] as Map).cast<String, dynamic>()),
      spiceVmc: map['spiceVmc'] == null ? null : map['spiceVmc'] as bool,
      stdIo: map['stdIo'] == null ? null : map['stdIo'] as bool,
      tcp: map['tcp'] == null ? null : DomainDevicesDiskSourceVhostUserTcp.fromMap((map['tcp'] as Map).cast<String, dynamic>()),
      udp: map['udp'] == null ? null : DomainDevicesDiskSourceVhostUserUdp.fromMap((map['udp'] as Map).cast<String, dynamic>()),
      unix: map['unix'] == null ? null : DomainDevicesDiskSourceVhostUserUnix.fromMap((map['unix'] as Map).cast<String, dynamic>()),
      vc: map['vc'] == null ? null : map['vc'] as bool,
    );
  }
}

