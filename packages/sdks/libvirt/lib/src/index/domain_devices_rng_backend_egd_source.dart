// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_rng_backend_egd_source_dbus.dart';
import 'domain_devices_rng_backend_egd_source_dev.dart';
import 'domain_devices_rng_backend_egd_source_file.dart';
import 'domain_devices_rng_backend_egd_source_nmdm.dart';
import 'domain_devices_rng_backend_egd_source_pipe.dart';
import 'domain_devices_rng_backend_egd_source_pty.dart';
import 'domain_devices_rng_backend_egd_source_qemuvd_agent.dart';
import 'domain_devices_rng_backend_egd_source_spice_port.dart';
import 'domain_devices_rng_backend_egd_source_tcp.dart';
import 'domain_devices_rng_backend_egd_source_udp.dart';
import 'domain_devices_rng_backend_egd_source_unix.dart';

class DomainDevicesRngBackendEgdSource {
  /// Configures the DBus source for the EGD backend.
  final pulumi.Input<DomainDevicesRngBackendEgdSourceDbus>? dbus;
  /// Defines the device path for the source of the EGD backend.
  final pulumi.Input<DomainDevicesRngBackendEgdSourceDev>? dev;
  /// Defines a file source for the RNG EGD backend.
  final pulumi.Input<DomainDevicesRngBackendEgdSourceFile>? file;
  /// Configures the NMDM (null modem) device source for the EGD backend.
  final pulumi.Input<DomainDevicesRngBackendEgdSourceNmdm>? nmdm;
  /// Configures a null source for the EGD backend.
  final pulumi.Input<bool>? null_;
  /// Defines a pipe source for the EGD backend.
  final pulumi.Input<DomainDevicesRngBackendEgdSourcePipe>? pipe;
  /// Defines a pseudo-terminal (PTY) source for the EGD backend.
  final pulumi.Input<DomainDevicesRngBackendEgdSourcePty>? pty;
  /// Configures the QEMU guest agent for the random number generator backend.
  final pulumi.Input<DomainDevicesRngBackendEgdSourceQemuvdAgent>? qemuvdAgent;
  /// Configures the SPICE port settings for the random number generator backend.
  final pulumi.Input<DomainDevicesRngBackendEgdSourceSpicePort>? spicePort;
  /// Configures the SPICE VMC settings for the random number generator backend.
  final pulumi.Input<bool>? spiceVmc;
  /// Configures standard input/output settings for the random number generator backend.
  final pulumi.Input<bool>? stdIo;
  /// Configures TCP settings for the random number generator backend.
  final pulumi.Input<DomainDevicesRngBackendEgdSourceTcp>? tcp;
  /// Configures UDP settings for the random number generator backend.
  final pulumi.Input<DomainDevicesRngBackendEgdSourceUdp>? udp;
  /// Configures UNIX domain socket settings for the random number generator backend.
  final pulumi.Input<DomainDevicesRngBackendEgdSourceUnix>? unix;
  /// Configures settings for the virtual console connection in the random number generator backend.
  final pulumi.Input<bool>? vc;

  /// Creates a new [DomainDevicesRngBackendEgdSource].
  /// [dbus] Configures the DBus source for the EGD backend.
  /// [dev] Defines the device path for the source of the EGD backend.
  /// [file] Defines a file source for the RNG EGD backend.
  /// [nmdm] Configures the NMDM (null modem) device source for the EGD backend.
  /// [null_] Configures a null source for the EGD backend.
  /// [pipe] Defines a pipe source for the EGD backend.
  /// [pty] Defines a pseudo-terminal (PTY) source for the EGD backend.
  /// [qemuvdAgent] Configures the QEMU guest agent for the random number generator backend.
  /// [spicePort] Configures the SPICE port settings for the random number generator backend.
  /// [spiceVmc] Configures the SPICE VMC settings for the random number generator backend.
  /// [stdIo] Configures standard input/output settings for the random number generator backend.
  /// [tcp] Configures TCP settings for the random number generator backend.
  /// [udp] Configures UDP settings for the random number generator backend.
  /// [unix] Configures UNIX domain socket settings for the random number generator backend.
  /// [vc] Configures settings for the virtual console connection in the random number generator backend.
  DomainDevicesRngBackendEgdSource({
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
      'dbus': ?pulumi.Input.mapOptionalInputValue<DomainDevicesRngBackendEgdSourceDbus, Map<String, dynamic>>(dbus, (value) => value.toMap()),
      'dev': ?pulumi.Input.mapOptionalInputValue<DomainDevicesRngBackendEgdSourceDev, Map<String, dynamic>>(dev, (value) => value.toMap()),
      'file': ?pulumi.Input.mapOptionalInputValue<DomainDevicesRngBackendEgdSourceFile, Map<String, dynamic>>(file, (value) => value.toMap()),
      'nmdm': ?pulumi.Input.mapOptionalInputValue<DomainDevicesRngBackendEgdSourceNmdm, Map<String, dynamic>>(nmdm, (value) => value.toMap()),
      'null': ?null_,
      'pipe': ?pulumi.Input.mapOptionalInputValue<DomainDevicesRngBackendEgdSourcePipe, Map<String, dynamic>>(pipe, (value) => value.toMap()),
      'pty': ?pulumi.Input.mapOptionalInputValue<DomainDevicesRngBackendEgdSourcePty, Map<String, dynamic>>(pty, (value) => value.toMap()),
      'qemuvdAgent': ?pulumi.Input.mapOptionalInputValue<DomainDevicesRngBackendEgdSourceQemuvdAgent, Map<String, dynamic>>(qemuvdAgent, (value) => value.toMap()),
      'spicePort': ?pulumi.Input.mapOptionalInputValue<DomainDevicesRngBackendEgdSourceSpicePort, Map<String, dynamic>>(spicePort, (value) => value.toMap()),
      'spiceVmc': ?spiceVmc,
      'stdIo': ?stdIo,
      'tcp': ?pulumi.Input.mapOptionalInputValue<DomainDevicesRngBackendEgdSourceTcp, Map<String, dynamic>>(tcp, (value) => value.toMap()),
      'udp': ?pulumi.Input.mapOptionalInputValue<DomainDevicesRngBackendEgdSourceUdp, Map<String, dynamic>>(udp, (value) => value.toMap()),
      'unix': ?pulumi.Input.mapOptionalInputValue<DomainDevicesRngBackendEgdSourceUnix, Map<String, dynamic>>(unix, (value) => value.toMap()),
      'vc': ?vc,
    };
  }

  factory DomainDevicesRngBackendEgdSource.fromMap(Map<String, dynamic> map) {
    return DomainDevicesRngBackendEgdSource(
      dbus: map['dbus'] == null ? null : (DomainDevicesRngBackendEgdSourceDbus.fromMap((map['dbus']! as Map).cast<String, dynamic>())).input(),
      dev: map['dev'] == null ? null : (DomainDevicesRngBackendEgdSourceDev.fromMap((map['dev']! as Map).cast<String, dynamic>())).input(),
      file: map['file'] == null ? null : (DomainDevicesRngBackendEgdSourceFile.fromMap((map['file']! as Map).cast<String, dynamic>())).input(),
      nmdm: map['nmdm'] == null ? null : (DomainDevicesRngBackendEgdSourceNmdm.fromMap((map['nmdm']! as Map).cast<String, dynamic>())).input(),
      null_: map['null'] == null ? null : (map['null']! as bool).input(),
      pipe: map['pipe'] == null ? null : (DomainDevicesRngBackendEgdSourcePipe.fromMap((map['pipe']! as Map).cast<String, dynamic>())).input(),
      pty: map['pty'] == null ? null : (DomainDevicesRngBackendEgdSourcePty.fromMap((map['pty']! as Map).cast<String, dynamic>())).input(),
      qemuvdAgent: map['qemuvdAgent'] == null ? null : (DomainDevicesRngBackendEgdSourceQemuvdAgent.fromMap((map['qemuvdAgent']! as Map).cast<String, dynamic>())).input(),
      spicePort: map['spicePort'] == null ? null : (DomainDevicesRngBackendEgdSourceSpicePort.fromMap((map['spicePort']! as Map).cast<String, dynamic>())).input(),
      spiceVmc: map['spiceVmc'] == null ? null : (map['spiceVmc']! as bool).input(),
      stdIo: map['stdIo'] == null ? null : (map['stdIo']! as bool).input(),
      tcp: map['tcp'] == null ? null : (DomainDevicesRngBackendEgdSourceTcp.fromMap((map['tcp']! as Map).cast<String, dynamic>())).input(),
      udp: map['udp'] == null ? null : (DomainDevicesRngBackendEgdSourceUdp.fromMap((map['udp']! as Map).cast<String, dynamic>())).input(),
      unix: map['unix'] == null ? null : (DomainDevicesRngBackendEgdSourceUnix.fromMap((map['unix']! as Map).cast<String, dynamic>())).input(),
      vc: map['vc'] == null ? null : (map['vc']! as bool).input(),
    );
  }
}

