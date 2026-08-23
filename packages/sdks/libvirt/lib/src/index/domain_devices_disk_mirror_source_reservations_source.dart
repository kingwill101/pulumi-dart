// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_source_reservations_source_dbus.dart';
import 'domain_devices_disk_mirror_source_reservations_source_dev.dart';
import 'domain_devices_disk_mirror_source_reservations_source_file.dart';
import 'domain_devices_disk_mirror_source_reservations_source_nmdm.dart';
import 'domain_devices_disk_mirror_source_reservations_source_pipe.dart';
import 'domain_devices_disk_mirror_source_reservations_source_pty.dart';
import 'domain_devices_disk_mirror_source_reservations_source_qemu_vd_agent.dart';
import 'domain_devices_disk_mirror_source_reservations_source_spice_port.dart';
import 'domain_devices_disk_mirror_source_reservations_source_tcp.dart';
import 'domain_devices_disk_mirror_source_reservations_source_udp.dart';
import 'domain_devices_disk_mirror_source_reservations_source_unix.dart';

class DomainDevicesDiskMirrorSourceReservationsSource {
  /// Configures the DBus source for the EGD backend.
  final pulumi.Input<DomainDevicesDiskMirrorSourceReservationsSourceDbus>? dbus;
  /// Defines the device path for the source of the EGD backend.
  final pulumi.Input<DomainDevicesDiskMirrorSourceReservationsSourceDev>? dev;
  /// Defines a file source for the RNG EGD backend.
  final pulumi.Input<DomainDevicesDiskMirrorSourceReservationsSourceFile>? file;
  /// Configures the NMDM (null modem) device source for the EGD backend.
  final pulumi.Input<DomainDevicesDiskMirrorSourceReservationsSourceNmdm>? nmdm;
  /// Configures settings for a null device used in reservations for storage.
  final pulumi.Input<bool>? null_;
  /// Defines a pipe source for the EGD backend.
  final pulumi.Input<DomainDevicesDiskMirrorSourceReservationsSourcePipe>? pipe;
  /// Defines a pseudo-terminal (PTY) source for the EGD backend.
  final pulumi.Input<DomainDevicesDiskMirrorSourceReservationsSourcePty>? pty;
  final pulumi.Input<DomainDevicesDiskMirrorSourceReservationsSourceQemuVdAgent>? qemuVdAgent;
  /// Configures the SPICE port settings for the random number generator backend.
  final pulumi.Input<DomainDevicesDiskMirrorSourceReservationsSourceSpicePort>? spicePort;
  /// Configures settings for the SPICE VMC used in reservations related to disk mirroring.
  final pulumi.Input<bool>? spiceVmc;
  /// Manages standard I/O settings for the reservations in disk mirroring.
  final pulumi.Input<bool>? stdIo;
  /// Configures TCP settings for the random number generator backend.
  final pulumi.Input<DomainDevicesDiskMirrorSourceReservationsSourceTcp>? tcp;
  /// Configures UDP settings for the random number generator backend.
  final pulumi.Input<DomainDevicesDiskMirrorSourceReservationsSourceUdp>? udp;
  /// Configures UNIX domain socket settings for the random number generator backend.
  final pulumi.Input<DomainDevicesDiskMirrorSourceReservationsSourceUnix>? unix;
  /// Configures settings for the VC source in the backing store for disk mirroring reservations.
  final pulumi.Input<bool>? vc;

  /// Creates a new [DomainDevicesDiskMirrorSourceReservationsSource].
  /// [dbus] Configures the DBus source for the EGD backend.
  /// [dev] Defines the device path for the source of the EGD backend.
  /// [file] Defines a file source for the RNG EGD backend.
  /// [nmdm] Configures the NMDM (null modem) device source for the EGD backend.
  /// [null_] Configures settings for a null device used in reservations for storage.
  /// [pipe] Defines a pipe source for the EGD backend.
  /// [pty] Defines a pseudo-terminal (PTY) source for the EGD backend.
  /// [qemuVdAgent] Optional.
  /// [spicePort] Configures the SPICE port settings for the random number generator backend.
  /// [spiceVmc] Configures settings for the SPICE VMC used in reservations related to disk mirroring.
  /// [stdIo] Manages standard I/O settings for the reservations in disk mirroring.
  /// [tcp] Configures TCP settings for the random number generator backend.
  /// [udp] Configures UDP settings for the random number generator backend.
  /// [unix] Configures UNIX domain socket settings for the random number generator backend.
  /// [vc] Configures settings for the VC source in the backing store for disk mirroring reservations.
  const DomainDevicesDiskMirrorSourceReservationsSource({
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
      'dbus': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorSourceReservationsSourceDbus, Map<String, dynamic>>(dbus, (value) => value.toMap()),
      'dev': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorSourceReservationsSourceDev, Map<String, dynamic>>(dev, (value) => value.toMap()),
      'file': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorSourceReservationsSourceFile, Map<String, dynamic>>(file, (value) => value.toMap()),
      'nmdm': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorSourceReservationsSourceNmdm, Map<String, dynamic>>(nmdm, (value) => value.toMap()),
      'null': ?null_,
      'pipe': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorSourceReservationsSourcePipe, Map<String, dynamic>>(pipe, (value) => value.toMap()),
      'pty': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorSourceReservationsSourcePty, Map<String, dynamic>>(pty, (value) => value.toMap()),
      'qemuVdAgent': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorSourceReservationsSourceQemuVdAgent, Map<String, dynamic>>(qemuVdAgent, (value) => value.toMap()),
      'spicePort': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorSourceReservationsSourceSpicePort, Map<String, dynamic>>(spicePort, (value) => value.toMap()),
      'spiceVmc': ?spiceVmc,
      'stdIo': ?stdIo,
      'tcp': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorSourceReservationsSourceTcp, Map<String, dynamic>>(tcp, (value) => value.toMap()),
      'udp': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorSourceReservationsSourceUdp, Map<String, dynamic>>(udp, (value) => value.toMap()),
      'unix': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorSourceReservationsSourceUnix, Map<String, dynamic>>(unix, (value) => value.toMap()),
      'vc': ?vc,
    };
  }

  factory DomainDevicesDiskMirrorSourceReservationsSource.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceReservationsSource(
      dbus: (() { final guardedValue = map['dbus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesDiskMirrorSourceReservationsSourceDbus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dev: (() { final guardedValue = map['dev']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesDiskMirrorSourceReservationsSourceDev.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      file: (() { final guardedValue = map['file']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesDiskMirrorSourceReservationsSourceFile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nmdm: (() { final guardedValue = map['nmdm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesDiskMirrorSourceReservationsSourceNmdm.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      null_: (() { final guardedValue = map['null']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      pipe: (() { final guardedValue = map['pipe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesDiskMirrorSourceReservationsSourcePipe.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pty: (() { final guardedValue = map['pty']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesDiskMirrorSourceReservationsSourcePty.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      qemuVdAgent: (() { final guardedValue = map['qemuVdAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesDiskMirrorSourceReservationsSourceQemuVdAgent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spicePort: (() { final guardedValue = map['spicePort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesDiskMirrorSourceReservationsSourceSpicePort.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spiceVmc: (() { final guardedValue = map['spiceVmc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      stdIo: (() { final guardedValue = map['stdIo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tcp: (() { final guardedValue = map['tcp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesDiskMirrorSourceReservationsSourceTcp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      udp: (() { final guardedValue = map['udp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesDiskMirrorSourceReservationsSourceUdp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      unix: (() { final guardedValue = map['unix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesDiskMirrorSourceReservationsSourceUnix.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vc: (() { final guardedValue = map['vc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
