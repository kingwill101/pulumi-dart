// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_source_reservations_source_dbus.dart';
import 'domain_devices_disk_source_reservations_source_dev.dart';
import 'domain_devices_disk_source_reservations_source_file.dart';
import 'domain_devices_disk_source_reservations_source_nmdm.dart';
import 'domain_devices_disk_source_reservations_source_pipe.dart';
import 'domain_devices_disk_source_reservations_source_pty.dart';
import 'domain_devices_disk_source_reservations_source_qemuvd_agent.dart';
import 'domain_devices_disk_source_reservations_source_spice_port.dart';
import 'domain_devices_disk_source_reservations_source_tcp.dart';
import 'domain_devices_disk_source_reservations_source_udp.dart';
import 'domain_devices_disk_source_reservations_source_unix.dart';

class DomainDevicesDiskSourceReservationsSource {
  /// Configures the DBus source for the EGD backend.
  final pulumi.Input<DomainDevicesDiskSourceReservationsSourceDbus>? dbus;
  /// Defines the device path for the source of the EGD backend.
  final pulumi.Input<DomainDevicesDiskSourceReservationsSourceDev>? dev;
  /// Defines a file source for the RNG EGD backend.
  final pulumi.Input<DomainDevicesDiskSourceReservationsSourceFile>? file;
  /// Configures the NMDM (null modem) device source for the EGD backend.
  final pulumi.Input<DomainDevicesDiskSourceReservationsSourceNmdm>? nmdm;
  /// Configures settings for a null device used in reservations for storage.
  final pulumi.Input<bool>? null_;
  /// Defines a pipe source for the EGD backend.
  final pulumi.Input<DomainDevicesDiskSourceReservationsSourcePipe>? pipe;
  /// Defines a pseudo-terminal (PTY) source for the EGD backend.
  final pulumi.Input<DomainDevicesDiskSourceReservationsSourcePty>? pty;
  /// Configures the QEMU guest agent for the random number generator backend.
  final pulumi.Input<DomainDevicesDiskSourceReservationsSourceQemuvdAgent>? qemuvdAgent;
  /// Configures the SPICE port settings for the random number generator backend.
  final pulumi.Input<DomainDevicesDiskSourceReservationsSourceSpicePort>? spicePort;
  /// Configures settings for the SPICE VMC used in reservations related to disk mirroring.
  final pulumi.Input<bool>? spiceVmc;
  /// Manages standard I/O settings for the reservations in disk mirroring.
  final pulumi.Input<bool>? stdIo;
  /// Configures TCP settings for the random number generator backend.
  final pulumi.Input<DomainDevicesDiskSourceReservationsSourceTcp>? tcp;
  /// Configures UDP settings for the random number generator backend.
  final pulumi.Input<DomainDevicesDiskSourceReservationsSourceUdp>? udp;
  /// Configures UNIX domain socket settings for the random number generator backend.
  final pulumi.Input<DomainDevicesDiskSourceReservationsSourceUnix>? unix;
  /// Configures settings for the VC source in the backing store for disk mirroring reservations.
  final pulumi.Input<bool>? vc;

  /// Creates a new [DomainDevicesDiskSourceReservationsSource].
  /// [dbus] Configures the DBus source for the EGD backend.
  /// [dev] Defines the device path for the source of the EGD backend.
  /// [file] Defines a file source for the RNG EGD backend.
  /// [nmdm] Configures the NMDM (null modem) device source for the EGD backend.
  /// [null_] Configures settings for a null device used in reservations for storage.
  /// [pipe] Defines a pipe source for the EGD backend.
  /// [pty] Defines a pseudo-terminal (PTY) source for the EGD backend.
  /// [qemuvdAgent] Configures the QEMU guest agent for the random number generator backend.
  /// [spicePort] Configures the SPICE port settings for the random number generator backend.
  /// [spiceVmc] Configures settings for the SPICE VMC used in reservations related to disk mirroring.
  /// [stdIo] Manages standard I/O settings for the reservations in disk mirroring.
  /// [tcp] Configures TCP settings for the random number generator backend.
  /// [udp] Configures UDP settings for the random number generator backend.
  /// [unix] Configures UNIX domain socket settings for the random number generator backend.
  /// [vc] Configures settings for the VC source in the backing store for disk mirroring reservations.
  DomainDevicesDiskSourceReservationsSource({
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
      'dbus': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskSourceReservationsSourceDbus, Map<String, dynamic>>(dbus, (value) => value.toMap()),
      'dev': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskSourceReservationsSourceDev, Map<String, dynamic>>(dev, (value) => value.toMap()),
      'file': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskSourceReservationsSourceFile, Map<String, dynamic>>(file, (value) => value.toMap()),
      'nmdm': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskSourceReservationsSourceNmdm, Map<String, dynamic>>(nmdm, (value) => value.toMap()),
      'null': ?null_,
      'pipe': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskSourceReservationsSourcePipe, Map<String, dynamic>>(pipe, (value) => value.toMap()),
      'pty': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskSourceReservationsSourcePty, Map<String, dynamic>>(pty, (value) => value.toMap()),
      'qemuvdAgent': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskSourceReservationsSourceQemuvdAgent, Map<String, dynamic>>(qemuvdAgent, (value) => value.toMap()),
      'spicePort': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskSourceReservationsSourceSpicePort, Map<String, dynamic>>(spicePort, (value) => value.toMap()),
      'spiceVmc': ?spiceVmc,
      'stdIo': ?stdIo,
      'tcp': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskSourceReservationsSourceTcp, Map<String, dynamic>>(tcp, (value) => value.toMap()),
      'udp': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskSourceReservationsSourceUdp, Map<String, dynamic>>(udp, (value) => value.toMap()),
      'unix': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskSourceReservationsSourceUnix, Map<String, dynamic>>(unix, (value) => value.toMap()),
      'vc': ?vc,
    };
  }

  factory DomainDevicesDiskSourceReservationsSource.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceReservationsSource(
      dbus: map['dbus'] == null ? null : (DomainDevicesDiskSourceReservationsSourceDbus.fromMap((map['dbus']! as Map).cast<String, dynamic>())).input(),
      dev: map['dev'] == null ? null : (DomainDevicesDiskSourceReservationsSourceDev.fromMap((map['dev']! as Map).cast<String, dynamic>())).input(),
      file: map['file'] == null ? null : (DomainDevicesDiskSourceReservationsSourceFile.fromMap((map['file']! as Map).cast<String, dynamic>())).input(),
      nmdm: map['nmdm'] == null ? null : (DomainDevicesDiskSourceReservationsSourceNmdm.fromMap((map['nmdm']! as Map).cast<String, dynamic>())).input(),
      null_: map['null'] == null ? null : (map['null']! as bool).input(),
      pipe: map['pipe'] == null ? null : (DomainDevicesDiskSourceReservationsSourcePipe.fromMap((map['pipe']! as Map).cast<String, dynamic>())).input(),
      pty: map['pty'] == null ? null : (DomainDevicesDiskSourceReservationsSourcePty.fromMap((map['pty']! as Map).cast<String, dynamic>())).input(),
      qemuvdAgent: map['qemuvdAgent'] == null ? null : (DomainDevicesDiskSourceReservationsSourceQemuvdAgent.fromMap((map['qemuvdAgent']! as Map).cast<String, dynamic>())).input(),
      spicePort: map['spicePort'] == null ? null : (DomainDevicesDiskSourceReservationsSourceSpicePort.fromMap((map['spicePort']! as Map).cast<String, dynamic>())).input(),
      spiceVmc: map['spiceVmc'] == null ? null : (map['spiceVmc']! as bool).input(),
      stdIo: map['stdIo'] == null ? null : (map['stdIo']! as bool).input(),
      tcp: map['tcp'] == null ? null : (DomainDevicesDiskSourceReservationsSourceTcp.fromMap((map['tcp']! as Map).cast<String, dynamic>())).input(),
      udp: map['udp'] == null ? null : (DomainDevicesDiskSourceReservationsSourceUdp.fromMap((map['udp']! as Map).cast<String, dynamic>())).input(),
      unix: map['unix'] == null ? null : (DomainDevicesDiskSourceReservationsSourceUnix.fromMap((map['unix']! as Map).cast<String, dynamic>())).input(),
      vc: map['vc'] == null ? null : (map['vc']! as bool).input(),
    );
  }
}

