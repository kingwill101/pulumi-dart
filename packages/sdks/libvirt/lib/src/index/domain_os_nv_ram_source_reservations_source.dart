// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_os_nv_ram_source_reservations_source_dbus.dart';
import 'domain_os_nv_ram_source_reservations_source_dev.dart';
import 'domain_os_nv_ram_source_reservations_source_file.dart';
import 'domain_os_nv_ram_source_reservations_source_nmdm.dart';
import 'domain_os_nv_ram_source_reservations_source_pipe.dart';
import 'domain_os_nv_ram_source_reservations_source_pty.dart';
import 'domain_os_nv_ram_source_reservations_source_qemuvd_agent.dart';
import 'domain_os_nv_ram_source_reservations_source_spice_port.dart';
import 'domain_os_nv_ram_source_reservations_source_tcp.dart';
import 'domain_os_nv_ram_source_reservations_source_udp.dart';
import 'domain_os_nv_ram_source_reservations_source_unix.dart';

class DomainOsNvRamSourceReservationsSource {
  /// Configures the DBus source for the EGD backend.
  final pulumi.Input<DomainOsNvRamSourceReservationsSourceDbus>? dbus;
  /// Defines the device path for the source of the EGD backend.
  final pulumi.Input<DomainOsNvRamSourceReservationsSourceDev>? dev;
  /// Defines a file source for the RNG EGD backend.
  final pulumi.Input<DomainOsNvRamSourceReservationsSourceFile>? file;
  /// Configures the NMDM (null modem) device source for the EGD backend.
  final pulumi.Input<DomainOsNvRamSourceReservationsSourceNmdm>? nmdm;
  /// Configures settings for a null device used in reservations for storage.
  final pulumi.Input<bool>? null_;
  /// Defines a pipe source for the EGD backend.
  final pulumi.Input<DomainOsNvRamSourceReservationsSourcePipe>? pipe;
  /// Defines a pseudo-terminal (PTY) source for the EGD backend.
  final pulumi.Input<DomainOsNvRamSourceReservationsSourcePty>? pty;
  /// Configures the QEMU guest agent for the random number generator backend.
  final pulumi.Input<DomainOsNvRamSourceReservationsSourceQemuvdAgent>? qemuvdAgent;
  /// Configures the SPICE port settings for the random number generator backend.
  final pulumi.Input<DomainOsNvRamSourceReservationsSourceSpicePort>? spicePort;
  /// Configures settings for the SPICE VMC used in reservations related to disk mirroring.
  final pulumi.Input<bool>? spiceVmc;
  /// Manages standard I/O settings for the reservations in disk mirroring.
  final pulumi.Input<bool>? stdIo;
  /// Configures TCP settings for the random number generator backend.
  final pulumi.Input<DomainOsNvRamSourceReservationsSourceTcp>? tcp;
  /// Configures UDP settings for the random number generator backend.
  final pulumi.Input<DomainOsNvRamSourceReservationsSourceUdp>? udp;
  /// Configures UNIX domain socket settings for the random number generator backend.
  final pulumi.Input<DomainOsNvRamSourceReservationsSourceUnix>? unix;
  /// Configures settings for the VC source in the backing store for disk mirroring reservations.
  final pulumi.Input<bool>? vc;

  /// Creates a new [DomainOsNvRamSourceReservationsSource].
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
  DomainOsNvRamSourceReservationsSource({
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
      'dbus': ?pulumi.Input.mapOptionalInputValue<DomainOsNvRamSourceReservationsSourceDbus, Map<String, dynamic>>(dbus, (value) => value.toMap()),
      'dev': ?pulumi.Input.mapOptionalInputValue<DomainOsNvRamSourceReservationsSourceDev, Map<String, dynamic>>(dev, (value) => value.toMap()),
      'file': ?pulumi.Input.mapOptionalInputValue<DomainOsNvRamSourceReservationsSourceFile, Map<String, dynamic>>(file, (value) => value.toMap()),
      'nmdm': ?pulumi.Input.mapOptionalInputValue<DomainOsNvRamSourceReservationsSourceNmdm, Map<String, dynamic>>(nmdm, (value) => value.toMap()),
      'null': ?null_,
      'pipe': ?pulumi.Input.mapOptionalInputValue<DomainOsNvRamSourceReservationsSourcePipe, Map<String, dynamic>>(pipe, (value) => value.toMap()),
      'pty': ?pulumi.Input.mapOptionalInputValue<DomainOsNvRamSourceReservationsSourcePty, Map<String, dynamic>>(pty, (value) => value.toMap()),
      'qemuvdAgent': ?pulumi.Input.mapOptionalInputValue<DomainOsNvRamSourceReservationsSourceQemuvdAgent, Map<String, dynamic>>(qemuvdAgent, (value) => value.toMap()),
      'spicePort': ?pulumi.Input.mapOptionalInputValue<DomainOsNvRamSourceReservationsSourceSpicePort, Map<String, dynamic>>(spicePort, (value) => value.toMap()),
      'spiceVmc': ?spiceVmc,
      'stdIo': ?stdIo,
      'tcp': ?pulumi.Input.mapOptionalInputValue<DomainOsNvRamSourceReservationsSourceTcp, Map<String, dynamic>>(tcp, (value) => value.toMap()),
      'udp': ?pulumi.Input.mapOptionalInputValue<DomainOsNvRamSourceReservationsSourceUdp, Map<String, dynamic>>(udp, (value) => value.toMap()),
      'unix': ?pulumi.Input.mapOptionalInputValue<DomainOsNvRamSourceReservationsSourceUnix, Map<String, dynamic>>(unix, (value) => value.toMap()),
      'vc': ?vc,
    };
  }

  factory DomainOsNvRamSourceReservationsSource.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceReservationsSource(
      dbus: map['dbus'] == null ? null : (DomainOsNvRamSourceReservationsSourceDbus.fromMap((map['dbus']! as Map).cast<String, dynamic>())).input(),
      dev: map['dev'] == null ? null : (DomainOsNvRamSourceReservationsSourceDev.fromMap((map['dev']! as Map).cast<String, dynamic>())).input(),
      file: map['file'] == null ? null : (DomainOsNvRamSourceReservationsSourceFile.fromMap((map['file']! as Map).cast<String, dynamic>())).input(),
      nmdm: map['nmdm'] == null ? null : (DomainOsNvRamSourceReservationsSourceNmdm.fromMap((map['nmdm']! as Map).cast<String, dynamic>())).input(),
      null_: map['null'] == null ? null : (map['null']! as bool).input(),
      pipe: map['pipe'] == null ? null : (DomainOsNvRamSourceReservationsSourcePipe.fromMap((map['pipe']! as Map).cast<String, dynamic>())).input(),
      pty: map['pty'] == null ? null : (DomainOsNvRamSourceReservationsSourcePty.fromMap((map['pty']! as Map).cast<String, dynamic>())).input(),
      qemuvdAgent: map['qemuvdAgent'] == null ? null : (DomainOsNvRamSourceReservationsSourceQemuvdAgent.fromMap((map['qemuvdAgent']! as Map).cast<String, dynamic>())).input(),
      spicePort: map['spicePort'] == null ? null : (DomainOsNvRamSourceReservationsSourceSpicePort.fromMap((map['spicePort']! as Map).cast<String, dynamic>())).input(),
      spiceVmc: map['spiceVmc'] == null ? null : (map['spiceVmc']! as bool).input(),
      stdIo: map['stdIo'] == null ? null : (map['stdIo']! as bool).input(),
      tcp: map['tcp'] == null ? null : (DomainOsNvRamSourceReservationsSourceTcp.fromMap((map['tcp']! as Map).cast<String, dynamic>())).input(),
      udp: map['udp'] == null ? null : (DomainOsNvRamSourceReservationsSourceUdp.fromMap((map['udp']! as Map).cast<String, dynamic>())).input(),
      unix: map['unix'] == null ? null : (DomainOsNvRamSourceReservationsSourceUnix.fromMap((map['unix']! as Map).cast<String, dynamic>())).input(),
      vc: map['vc'] == null ? null : (map['vc']! as bool).input(),
    );
  }
}

