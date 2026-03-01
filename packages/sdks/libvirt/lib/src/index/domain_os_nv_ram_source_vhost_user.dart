// ignore_for_file: unused_element, unnecessary_cast

import 'domain_os_nv_ram_source_vhost_user_dbus.dart';
import 'domain_os_nv_ram_source_vhost_user_dev.dart';
import 'domain_os_nv_ram_source_vhost_user_file.dart';
import 'domain_os_nv_ram_source_vhost_user_nmdm.dart';
import 'domain_os_nv_ram_source_vhost_user_pipe.dart';
import 'domain_os_nv_ram_source_vhost_user_pty.dart';
import 'domain_os_nv_ram_source_vhost_user_qemuvd_agent.dart';
import 'domain_os_nv_ram_source_vhost_user_spice_port.dart';
import 'domain_os_nv_ram_source_vhost_user_tcp.dart';
import 'domain_os_nv_ram_source_vhost_user_udp.dart';
import 'domain_os_nv_ram_source_vhost_user_unix.dart';

class DomainOsNvRamSourceVhostUser {
  /// Configures the DBus source for the EGD backend.
  final DomainOsNvRamSourceVhostUserDbus? dbus;
  /// Defines the device path for the source of the EGD backend.
  final DomainOsNvRamSourceVhostUserDev? dev;
  /// Defines a file source for the RNG EGD backend.
  final DomainOsNvRamSourceVhostUserFile? file;
  /// Configures the NMDM (null modem) device source for the EGD backend.
  final DomainOsNvRamSourceVhostUserNmdm? nmdm;
  /// Configures a null device type in the VHostUser source configuration for the mirrored disk.
  final bool? null_;
  /// Defines a pipe source for the EGD backend.
  final DomainOsNvRamSourceVhostUserPipe? pipe;
  /// Defines a pseudo-terminal (PTY) source for the EGD backend.
  final DomainOsNvRamSourceVhostUserPty? pty;
  /// Configures the QEMU guest agent for the random number generator backend.
  final DomainOsNvRamSourceVhostUserQemuvdAgent? qemuvdAgent;
  /// Configures the SPICE port settings for the random number generator backend.
  final DomainOsNvRamSourceVhostUserSpicePort? spicePort;
  /// Configures the Spice VMC settings in the VHostUser source configuration for the mirrored disk.
  final bool? spiceVmc;
  /// Configures standard I/O settings for the VHostUser interface associated with the mirrored disk.
  final bool? stdIo;
  /// Configures TCP settings for the random number generator backend.
  final DomainOsNvRamSourceVhostUserTcp? tcp;
  /// Configures UDP settings for the random number generator backend.
  final DomainOsNvRamSourceVhostUserUdp? udp;
  /// Configures UNIX domain socket settings for the random number generator backend.
  final DomainOsNvRamSourceVhostUserUnix? unix;
  /// Configures the VHostUser virtual channel settings for the source backing store.
  final bool? vc;

  /// Creates a new [DomainOsNvRamSourceVhostUser].
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
  DomainOsNvRamSourceVhostUser({
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

  factory DomainOsNvRamSourceVhostUser.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceVhostUser(
      dbus: map['dbus'] == null ? null : DomainOsNvRamSourceVhostUserDbus.fromMap((map['dbus'] as Map).cast<String, dynamic>()),
      dev: map['dev'] == null ? null : DomainOsNvRamSourceVhostUserDev.fromMap((map['dev'] as Map).cast<String, dynamic>()),
      file: map['file'] == null ? null : DomainOsNvRamSourceVhostUserFile.fromMap((map['file'] as Map).cast<String, dynamic>()),
      nmdm: map['nmdm'] == null ? null : DomainOsNvRamSourceVhostUserNmdm.fromMap((map['nmdm'] as Map).cast<String, dynamic>()),
      null_: map['null'] == null ? null : map['null'] as bool,
      pipe: map['pipe'] == null ? null : DomainOsNvRamSourceVhostUserPipe.fromMap((map['pipe'] as Map).cast<String, dynamic>()),
      pty: map['pty'] == null ? null : DomainOsNvRamSourceVhostUserPty.fromMap((map['pty'] as Map).cast<String, dynamic>()),
      qemuvdAgent: map['qemuvdAgent'] == null ? null : DomainOsNvRamSourceVhostUserQemuvdAgent.fromMap((map['qemuvdAgent'] as Map).cast<String, dynamic>()),
      spicePort: map['spicePort'] == null ? null : DomainOsNvRamSourceVhostUserSpicePort.fromMap((map['spicePort'] as Map).cast<String, dynamic>()),
      spiceVmc: map['spiceVmc'] == null ? null : map['spiceVmc'] as bool,
      stdIo: map['stdIo'] == null ? null : map['stdIo'] as bool,
      tcp: map['tcp'] == null ? null : DomainOsNvRamSourceVhostUserTcp.fromMap((map['tcp'] as Map).cast<String, dynamic>()),
      udp: map['udp'] == null ? null : DomainOsNvRamSourceVhostUserUdp.fromMap((map['udp'] as Map).cast<String, dynamic>()),
      unix: map['unix'] == null ? null : DomainOsNvRamSourceVhostUserUnix.fromMap((map['unix'] as Map).cast<String, dynamic>()),
      vc: map['vc'] == null ? null : map['vc'] as bool,
    );
  }
}

