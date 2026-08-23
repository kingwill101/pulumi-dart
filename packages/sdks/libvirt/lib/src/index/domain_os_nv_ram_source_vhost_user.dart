// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_os_nv_ram_source_vhost_user_dbus.dart';
import 'domain_os_nv_ram_source_vhost_user_dev.dart';
import 'domain_os_nv_ram_source_vhost_user_file.dart';
import 'domain_os_nv_ram_source_vhost_user_nmdm.dart';
import 'domain_os_nv_ram_source_vhost_user_pipe.dart';
import 'domain_os_nv_ram_source_vhost_user_pty.dart';
import 'domain_os_nv_ram_source_vhost_user_qemu_vd_agent.dart';
import 'domain_os_nv_ram_source_vhost_user_spice_port.dart';
import 'domain_os_nv_ram_source_vhost_user_tcp.dart';
import 'domain_os_nv_ram_source_vhost_user_udp.dart';
import 'domain_os_nv_ram_source_vhost_user_unix.dart';

class DomainOsNvRamSourceVhostUser {
  /// Configures the DBus source for the EGD backend.
  final pulumi.Input<DomainOsNvRamSourceVhostUserDbus>? dbus;
  /// Defines the device path for the source of the EGD backend.
  final pulumi.Input<DomainOsNvRamSourceVhostUserDev>? dev;
  /// Defines a file source for the RNG EGD backend.
  final pulumi.Input<DomainOsNvRamSourceVhostUserFile>? file;
  /// Configures the NMDM (null modem) device source for the EGD backend.
  final pulumi.Input<DomainOsNvRamSourceVhostUserNmdm>? nmdm;
  /// Configures a null device type in the VHostUser source configuration for the mirrored disk.
  final pulumi.Input<bool>? null_;
  /// Defines a pipe source for the EGD backend.
  final pulumi.Input<DomainOsNvRamSourceVhostUserPipe>? pipe;
  /// Defines a pseudo-terminal (PTY) source for the EGD backend.
  final pulumi.Input<DomainOsNvRamSourceVhostUserPty>? pty;
  final pulumi.Input<DomainOsNvRamSourceVhostUserQemuVdAgent>? qemuVdAgent;
  /// Configures the SPICE port settings for the random number generator backend.
  final pulumi.Input<DomainOsNvRamSourceVhostUserSpicePort>? spicePort;
  /// Configures the Spice VMC settings in the VHostUser source configuration for the mirrored disk.
  final pulumi.Input<bool>? spiceVmc;
  /// Configures standard I/O settings for the VHostUser interface associated with the mirrored disk.
  final pulumi.Input<bool>? stdIo;
  /// Configures TCP settings for the random number generator backend.
  final pulumi.Input<DomainOsNvRamSourceVhostUserTcp>? tcp;
  /// Configures UDP settings for the random number generator backend.
  final pulumi.Input<DomainOsNvRamSourceVhostUserUdp>? udp;
  /// Configures UNIX domain socket settings for the random number generator backend.
  final pulumi.Input<DomainOsNvRamSourceVhostUserUnix>? unix;
  /// Configures the VHostUser virtual channel settings for the source backing store.
  final pulumi.Input<bool>? vc;

  /// Creates a new [DomainOsNvRamSourceVhostUser].
  /// [dbus] Configures the DBus source for the EGD backend.
  /// [dev] Defines the device path for the source of the EGD backend.
  /// [file] Defines a file source for the RNG EGD backend.
  /// [nmdm] Configures the NMDM (null modem) device source for the EGD backend.
  /// [null_] Configures a null device type in the VHostUser source configuration for the mirrored disk.
  /// [pipe] Defines a pipe source for the EGD backend.
  /// [pty] Defines a pseudo-terminal (PTY) source for the EGD backend.
  /// [qemuVdAgent] Optional.
  /// [spicePort] Configures the SPICE port settings for the random number generator backend.
  /// [spiceVmc] Configures the Spice VMC settings in the VHostUser source configuration for the mirrored disk.
  /// [stdIo] Configures standard I/O settings for the VHostUser interface associated with the mirrored disk.
  /// [tcp] Configures TCP settings for the random number generator backend.
  /// [udp] Configures UDP settings for the random number generator backend.
  /// [unix] Configures UNIX domain socket settings for the random number generator backend.
  /// [vc] Configures the VHostUser virtual channel settings for the source backing store.
  const DomainOsNvRamSourceVhostUser({
    this.dbus,
    this.dev,
    this.file,
    this.nmdm,
    this.null_,
    this.pipe,
    this.pty,
    this.qemuVdAgent,
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
      'dbus': ?pulumi.Input.mapOptionalInputValue<DomainOsNvRamSourceVhostUserDbus, Map<String, dynamic>>(dbus, (value) => value.toMap()),
      'dev': ?pulumi.Input.mapOptionalInputValue<DomainOsNvRamSourceVhostUserDev, Map<String, dynamic>>(dev, (value) => value.toMap()),
      'file': ?pulumi.Input.mapOptionalInputValue<DomainOsNvRamSourceVhostUserFile, Map<String, dynamic>>(file, (value) => value.toMap()),
      'nmdm': ?pulumi.Input.mapOptionalInputValue<DomainOsNvRamSourceVhostUserNmdm, Map<String, dynamic>>(nmdm, (value) => value.toMap()),
      'null': ?null_,
      'pipe': ?pulumi.Input.mapOptionalInputValue<DomainOsNvRamSourceVhostUserPipe, Map<String, dynamic>>(pipe, (value) => value.toMap()),
      'pty': ?pulumi.Input.mapOptionalInputValue<DomainOsNvRamSourceVhostUserPty, Map<String, dynamic>>(pty, (value) => value.toMap()),
      'qemuVdAgent': ?pulumi.Input.mapOptionalInputValue<DomainOsNvRamSourceVhostUserQemuVdAgent, Map<String, dynamic>>(qemuVdAgent, (value) => value.toMap()),
      'spicePort': ?pulumi.Input.mapOptionalInputValue<DomainOsNvRamSourceVhostUserSpicePort, Map<String, dynamic>>(spicePort, (value) => value.toMap()),
      'spiceVmc': ?spiceVmc,
      'stdIo': ?stdIo,
      'tcp': ?pulumi.Input.mapOptionalInputValue<DomainOsNvRamSourceVhostUserTcp, Map<String, dynamic>>(tcp, (value) => value.toMap()),
      'udp': ?pulumi.Input.mapOptionalInputValue<DomainOsNvRamSourceVhostUserUdp, Map<String, dynamic>>(udp, (value) => value.toMap()),
      'unix': ?pulumi.Input.mapOptionalInputValue<DomainOsNvRamSourceVhostUserUnix, Map<String, dynamic>>(unix, (value) => value.toMap()),
      'vc': ?vc,
    };
  }

  factory DomainOsNvRamSourceVhostUser.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceVhostUser(
      dbus: (() { final guardedValue = map['dbus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainOsNvRamSourceVhostUserDbus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dev: (() { final guardedValue = map['dev']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainOsNvRamSourceVhostUserDev.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      file: (() { final guardedValue = map['file']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainOsNvRamSourceVhostUserFile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nmdm: (() { final guardedValue = map['nmdm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainOsNvRamSourceVhostUserNmdm.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      null_: (() { final guardedValue = map['null']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      pipe: (() { final guardedValue = map['pipe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainOsNvRamSourceVhostUserPipe.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pty: (() { final guardedValue = map['pty']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainOsNvRamSourceVhostUserPty.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      qemuVdAgent: (() { final guardedValue = map['qemuVdAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainOsNvRamSourceVhostUserQemuVdAgent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spicePort: (() { final guardedValue = map['spicePort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainOsNvRamSourceVhostUserSpicePort.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spiceVmc: (() { final guardedValue = map['spiceVmc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      stdIo: (() { final guardedValue = map['stdIo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tcp: (() { final guardedValue = map['tcp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainOsNvRamSourceVhostUserTcp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      udp: (() { final guardedValue = map['udp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainOsNvRamSourceVhostUserUdp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      unix: (() { final guardedValue = map['unix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainOsNvRamSourceVhostUserUnix.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vc: (() { final guardedValue = map['vc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
