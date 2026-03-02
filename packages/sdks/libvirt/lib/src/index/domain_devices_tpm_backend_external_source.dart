// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_tpm_backend_external_source_dbus.dart';
import 'domain_devices_tpm_backend_external_source_dev.dart';
import 'domain_devices_tpm_backend_external_source_file.dart';
import 'domain_devices_tpm_backend_external_source_nmdm.dart';
import 'domain_devices_tpm_backend_external_source_pipe.dart';
import 'domain_devices_tpm_backend_external_source_pty.dart';
import 'domain_devices_tpm_backend_external_source_qemuvd_agent.dart';
import 'domain_devices_tpm_backend_external_source_spice_port.dart';
import 'domain_devices_tpm_backend_external_source_tcp.dart';
import 'domain_devices_tpm_backend_external_source_udp.dart';
import 'domain_devices_tpm_backend_external_source_unix.dart';

class DomainDevicesTpmBackendExternalSource {
  /// Configures the DBus source for the EGD backend.
  final pulumi.Input<DomainDevicesTpmBackendExternalSourceDbus>? dbus;
  /// Defines the device path for the source of the EGD backend.
  final pulumi.Input<DomainDevicesTpmBackendExternalSourceDev>? dev;
  /// Defines a file source for the RNG EGD backend.
  final pulumi.Input<DomainDevicesTpmBackendExternalSourceFile>? file;
  /// Configures the NMDM (null modem) device source for the EGD backend.
  final pulumi.Input<DomainDevicesTpmBackendExternalSourceNmdm>? nmdm;
  /// Configures a null device source, which is equivalent to a device that receives no input.
  final pulumi.Input<bool>? null_;
  /// Defines a pipe source for the EGD backend.
  final pulumi.Input<DomainDevicesTpmBackendExternalSourcePipe>? pipe;
  /// Defines a pseudo-terminal (PTY) source for the EGD backend.
  final pulumi.Input<DomainDevicesTpmBackendExternalSourcePty>? pty;
  /// Configures the QEMU guest agent for the random number generator backend.
  final pulumi.Input<DomainDevicesTpmBackendExternalSourceQemuvdAgent>? qemuvdAgent;
  /// Configures the SPICE port settings for the random number generator backend.
  final pulumi.Input<DomainDevicesTpmBackendExternalSourceSpicePort>? spicePort;
  /// Configures a SPICE Virtual Machine Channel as a source for enhanced communication with guests.
  final pulumi.Input<bool>? spiceVmc;
  /// Configures standard input/output for device interactions, allowing typical stdin/stdout handling.
  final pulumi.Input<bool>? stdIo;
  /// Configures TCP settings for the random number generator backend.
  final pulumi.Input<DomainDevicesTpmBackendExternalSourceTcp>? tcp;
  /// Configures UDP settings for the random number generator backend.
  final pulumi.Input<DomainDevicesTpmBackendExternalSourceUdp>? udp;
  /// Configures UNIX domain socket settings for the random number generator backend.
  final pulumi.Input<DomainDevicesTpmBackendExternalSourceUnix>? unix;
  /// Configures a virtual console as a source for communication, enabling interaction with the guest.
  final pulumi.Input<bool>? vc;

  /// Creates a new [DomainDevicesTpmBackendExternalSource].
  /// [dbus] Configures the DBus source for the EGD backend.
  /// [dev] Defines the device path for the source of the EGD backend.
  /// [file] Defines a file source for the RNG EGD backend.
  /// [nmdm] Configures the NMDM (null modem) device source for the EGD backend.
  /// [null_] Configures a null device source, which is equivalent to a device that receives no input.
  /// [pipe] Defines a pipe source for the EGD backend.
  /// [pty] Defines a pseudo-terminal (PTY) source for the EGD backend.
  /// [qemuvdAgent] Configures the QEMU guest agent for the random number generator backend.
  /// [spicePort] Configures the SPICE port settings for the random number generator backend.
  /// [spiceVmc] Configures a SPICE Virtual Machine Channel as a source for enhanced communication with guests.
  /// [stdIo] Configures standard input/output for device interactions, allowing typical stdin/stdout handling.
  /// [tcp] Configures TCP settings for the random number generator backend.
  /// [udp] Configures UDP settings for the random number generator backend.
  /// [unix] Configures UNIX domain socket settings for the random number generator backend.
  /// [vc] Configures a virtual console as a source for communication, enabling interaction with the guest.
  DomainDevicesTpmBackendExternalSource({
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
      'dbus': ?pulumi.Input.mapOptionalInputValue<DomainDevicesTpmBackendExternalSourceDbus, Map<String, dynamic>>(dbus, (value) => value.toMap()),
      'dev': ?pulumi.Input.mapOptionalInputValue<DomainDevicesTpmBackendExternalSourceDev, Map<String, dynamic>>(dev, (value) => value.toMap()),
      'file': ?pulumi.Input.mapOptionalInputValue<DomainDevicesTpmBackendExternalSourceFile, Map<String, dynamic>>(file, (value) => value.toMap()),
      'nmdm': ?pulumi.Input.mapOptionalInputValue<DomainDevicesTpmBackendExternalSourceNmdm, Map<String, dynamic>>(nmdm, (value) => value.toMap()),
      'null': ?null_,
      'pipe': ?pulumi.Input.mapOptionalInputValue<DomainDevicesTpmBackendExternalSourcePipe, Map<String, dynamic>>(pipe, (value) => value.toMap()),
      'pty': ?pulumi.Input.mapOptionalInputValue<DomainDevicesTpmBackendExternalSourcePty, Map<String, dynamic>>(pty, (value) => value.toMap()),
      'qemuvdAgent': ?pulumi.Input.mapOptionalInputValue<DomainDevicesTpmBackendExternalSourceQemuvdAgent, Map<String, dynamic>>(qemuvdAgent, (value) => value.toMap()),
      'spicePort': ?pulumi.Input.mapOptionalInputValue<DomainDevicesTpmBackendExternalSourceSpicePort, Map<String, dynamic>>(spicePort, (value) => value.toMap()),
      'spiceVmc': ?spiceVmc,
      'stdIo': ?stdIo,
      'tcp': ?pulumi.Input.mapOptionalInputValue<DomainDevicesTpmBackendExternalSourceTcp, Map<String, dynamic>>(tcp, (value) => value.toMap()),
      'udp': ?pulumi.Input.mapOptionalInputValue<DomainDevicesTpmBackendExternalSourceUdp, Map<String, dynamic>>(udp, (value) => value.toMap()),
      'unix': ?pulumi.Input.mapOptionalInputValue<DomainDevicesTpmBackendExternalSourceUnix, Map<String, dynamic>>(unix, (value) => value.toMap()),
      'vc': ?vc,
    };
  }

  factory DomainDevicesTpmBackendExternalSource.fromMap(Map<String, dynamic> map) {
    return DomainDevicesTpmBackendExternalSource(
      dbus: map['dbus'] == null ? null : (DomainDevicesTpmBackendExternalSourceDbus.fromMap((map['dbus'] as Map).cast<String, dynamic>())).input(),
      dev: map['dev'] == null ? null : (DomainDevicesTpmBackendExternalSourceDev.fromMap((map['dev'] as Map).cast<String, dynamic>())).input(),
      file: map['file'] == null ? null : (DomainDevicesTpmBackendExternalSourceFile.fromMap((map['file'] as Map).cast<String, dynamic>())).input(),
      nmdm: map['nmdm'] == null ? null : (DomainDevicesTpmBackendExternalSourceNmdm.fromMap((map['nmdm'] as Map).cast<String, dynamic>())).input(),
      null_: map['null'] == null ? null : (map['null'] as bool).input(),
      pipe: map['pipe'] == null ? null : (DomainDevicesTpmBackendExternalSourcePipe.fromMap((map['pipe'] as Map).cast<String, dynamic>())).input(),
      pty: map['pty'] == null ? null : (DomainDevicesTpmBackendExternalSourcePty.fromMap((map['pty'] as Map).cast<String, dynamic>())).input(),
      qemuvdAgent: map['qemuvdAgent'] == null ? null : (DomainDevicesTpmBackendExternalSourceQemuvdAgent.fromMap((map['qemuvdAgent'] as Map).cast<String, dynamic>())).input(),
      spicePort: map['spicePort'] == null ? null : (DomainDevicesTpmBackendExternalSourceSpicePort.fromMap((map['spicePort'] as Map).cast<String, dynamic>())).input(),
      spiceVmc: map['spiceVmc'] == null ? null : (map['spiceVmc'] as bool).input(),
      stdIo: map['stdIo'] == null ? null : (map['stdIo'] as bool).input(),
      tcp: map['tcp'] == null ? null : (DomainDevicesTpmBackendExternalSourceTcp.fromMap((map['tcp'] as Map).cast<String, dynamic>())).input(),
      udp: map['udp'] == null ? null : (DomainDevicesTpmBackendExternalSourceUdp.fromMap((map['udp'] as Map).cast<String, dynamic>())).input(),
      unix: map['unix'] == null ? null : (DomainDevicesTpmBackendExternalSourceUnix.fromMap((map['unix'] as Map).cast<String, dynamic>())).input(),
      vc: map['vc'] == null ? null : (map['vc'] as bool).input(),
    );
  }
}

