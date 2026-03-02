// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_backing_store_source_reservations_source_dbus.dart';
import 'domain_devices_disk_mirror_backing_store_source_reservations_source_dev.dart';
import 'domain_devices_disk_mirror_backing_store_source_reservations_source_file.dart';
import 'domain_devices_disk_mirror_backing_store_source_reservations_source_nmdm.dart';
import 'domain_devices_disk_mirror_backing_store_source_reservations_source_pipe.dart';
import 'domain_devices_disk_mirror_backing_store_source_reservations_source_pty.dart';
import 'domain_devices_disk_mirror_backing_store_source_reservations_source_qemuvd_agent.dart';
import 'domain_devices_disk_mirror_backing_store_source_reservations_source_spice_port.dart';
import 'domain_devices_disk_mirror_backing_store_source_reservations_source_tcp.dart';
import 'domain_devices_disk_mirror_backing_store_source_reservations_source_udp.dart';
import 'domain_devices_disk_mirror_backing_store_source_reservations_source_unix.dart';

class DomainDevicesDiskMirrorBackingStoreSourceReservationsSource {
  /// Configures the DBus source for the EGD backend.
  final pulumi.Input<DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceDbus>? dbus;
  /// Defines the device path for the source of the EGD backend.
  final pulumi.Input<DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceDev>? dev;
  /// Defines a file source for the RNG EGD backend.
  final pulumi.Input<DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceFile>? file;
  /// Configures the NMDM (null modem) device source for the EGD backend.
  final pulumi.Input<DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceNmdm>? nmdm;
  /// Configures settings for a null device used in reservations for storage.
  final pulumi.Input<bool>? null_;
  /// Defines a pipe source for the EGD backend.
  final pulumi.Input<DomainDevicesDiskMirrorBackingStoreSourceReservationsSourcePipe>? pipe;
  /// Defines a pseudo-terminal (PTY) source for the EGD backend.
  final pulumi.Input<DomainDevicesDiskMirrorBackingStoreSourceReservationsSourcePty>? pty;
  /// Configures the QEMU guest agent for the random number generator backend.
  final pulumi.Input<DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceQemuvdAgent>? qemuvdAgent;
  /// Configures the SPICE port settings for the random number generator backend.
  final pulumi.Input<DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceSpicePort>? spicePort;
  /// Configures settings for the SPICE VMC used in reservations related to disk mirroring.
  final pulumi.Input<bool>? spiceVmc;
  /// Manages standard I/O settings for the reservations in disk mirroring.
  final pulumi.Input<bool>? stdIo;
  /// Configures TCP settings for the random number generator backend.
  final pulumi.Input<DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceTcp>? tcp;
  /// Configures UDP settings for the random number generator backend.
  final pulumi.Input<DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceUdp>? udp;
  /// Configures UNIX domain socket settings for the random number generator backend.
  final pulumi.Input<DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceUnix>? unix;
  /// Configures settings for the VC source in the backing store for disk mirroring reservations.
  final pulumi.Input<bool>? vc;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreSourceReservationsSource].
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
  DomainDevicesDiskMirrorBackingStoreSourceReservationsSource({
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
      'dbus': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceDbus, Map<String, dynamic>>(dbus, (value) => value.toMap()),
      'dev': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceDev, Map<String, dynamic>>(dev, (value) => value.toMap()),
      'file': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceFile, Map<String, dynamic>>(file, (value) => value.toMap()),
      'nmdm': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceNmdm, Map<String, dynamic>>(nmdm, (value) => value.toMap()),
      'null': ?null_,
      'pipe': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorBackingStoreSourceReservationsSourcePipe, Map<String, dynamic>>(pipe, (value) => value.toMap()),
      'pty': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorBackingStoreSourceReservationsSourcePty, Map<String, dynamic>>(pty, (value) => value.toMap()),
      'qemuvdAgent': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceQemuvdAgent, Map<String, dynamic>>(qemuvdAgent, (value) => value.toMap()),
      'spicePort': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceSpicePort, Map<String, dynamic>>(spicePort, (value) => value.toMap()),
      'spiceVmc': ?spiceVmc,
      'stdIo': ?stdIo,
      'tcp': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceTcp, Map<String, dynamic>>(tcp, (value) => value.toMap()),
      'udp': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceUdp, Map<String, dynamic>>(udp, (value) => value.toMap()),
      'unix': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceUnix, Map<String, dynamic>>(unix, (value) => value.toMap()),
      'vc': ?vc,
    };
  }

  factory DomainDevicesDiskMirrorBackingStoreSourceReservationsSource.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorBackingStoreSourceReservationsSource(
      dbus: map['dbus'] == null ? null : (DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceDbus.fromMap((map['dbus']! as Map).cast<String, dynamic>())).input(),
      dev: map['dev'] == null ? null : (DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceDev.fromMap((map['dev']! as Map).cast<String, dynamic>())).input(),
      file: map['file'] == null ? null : (DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceFile.fromMap((map['file']! as Map).cast<String, dynamic>())).input(),
      nmdm: map['nmdm'] == null ? null : (DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceNmdm.fromMap((map['nmdm']! as Map).cast<String, dynamic>())).input(),
      null_: map['null'] == null ? null : (map['null']! as bool).input(),
      pipe: map['pipe'] == null ? null : (DomainDevicesDiskMirrorBackingStoreSourceReservationsSourcePipe.fromMap((map['pipe']! as Map).cast<String, dynamic>())).input(),
      pty: map['pty'] == null ? null : (DomainDevicesDiskMirrorBackingStoreSourceReservationsSourcePty.fromMap((map['pty']! as Map).cast<String, dynamic>())).input(),
      qemuvdAgent: map['qemuvdAgent'] == null ? null : (DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceQemuvdAgent.fromMap((map['qemuvdAgent']! as Map).cast<String, dynamic>())).input(),
      spicePort: map['spicePort'] == null ? null : (DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceSpicePort.fromMap((map['spicePort']! as Map).cast<String, dynamic>())).input(),
      spiceVmc: map['spiceVmc'] == null ? null : (map['spiceVmc']! as bool).input(),
      stdIo: map['stdIo'] == null ? null : (map['stdIo']! as bool).input(),
      tcp: map['tcp'] == null ? null : (DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceTcp.fromMap((map['tcp']! as Map).cast<String, dynamic>())).input(),
      udp: map['udp'] == null ? null : (DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceUdp.fromMap((map['udp']! as Map).cast<String, dynamic>())).input(),
      unix: map['unix'] == null ? null : (DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceUnix.fromMap((map['unix']! as Map).cast<String, dynamic>())).input(),
      vc: map['vc'] == null ? null : (map['vc']! as bool).input(),
    );
  }
}

