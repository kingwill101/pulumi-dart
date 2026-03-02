// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_console_source_dbus.dart';
import 'domain_devices_console_source_dev.dart';
import 'domain_devices_console_source_file.dart';
import 'domain_devices_console_source_nmdm.dart';
import 'domain_devices_console_source_pipe.dart';
import 'domain_devices_console_source_pty.dart';
import 'domain_devices_console_source_qemuvd_agent.dart';
import 'domain_devices_console_source_spice_port.dart';
import 'domain_devices_console_source_tcp.dart';
import 'domain_devices_console_source_udp.dart';
import 'domain_devices_console_source_unix.dart';

class DomainDevicesConsoleSource {
  /// Configures the DBus source for the EGD backend.
  final pulumi.Input<DomainDevicesConsoleSourceDbus>? dbus;
  /// Defines the device path for the source of the EGD backend.
  final pulumi.Input<DomainDevicesConsoleSourceDev>? dev;
  /// Defines a file source for the RNG EGD backend.
  final pulumi.Input<DomainDevicesConsoleSourceFile>? file;
  /// Configures the NMDM (null modem) device source for the EGD backend.
  final pulumi.Input<DomainDevicesConsoleSourceNmdm>? nmdm;
  /// Configures a null source for the EGD backend.
  final pulumi.Input<bool>? null_;
  /// Defines a pipe source for the EGD backend.
  final pulumi.Input<DomainDevicesConsoleSourcePipe>? pipe;
  /// Defines a pseudo-terminal (PTY) source for the EGD backend.
  final pulumi.Input<DomainDevicesConsoleSourcePty>? pty;
  /// Configures the QEMU guest agent for the random number generator backend.
  final pulumi.Input<DomainDevicesConsoleSourceQemuvdAgent>? qemuvdAgent;
  /// Configures the SPICE port settings for the random number generator backend.
  final pulumi.Input<DomainDevicesConsoleSourceSpicePort>? spicePort;
  /// Configures the SPICE VMC settings for the random number generator backend.
  final pulumi.Input<bool>? spiceVmc;
  /// Configures standard input/output settings for the random number generator backend.
  final pulumi.Input<bool>? stdIo;
  /// Configures TCP settings for the random number generator backend.
  final pulumi.Input<DomainDevicesConsoleSourceTcp>? tcp;
  /// Configures UDP settings for the random number generator backend.
  final pulumi.Input<DomainDevicesConsoleSourceUdp>? udp;
  /// Configures UNIX domain socket settings for the random number generator backend.
  final pulumi.Input<DomainDevicesConsoleSourceUnix>? unix;
  /// Configures settings for the virtual console connection in the random number generator backend.
  final pulumi.Input<bool>? vc;

  /// Creates a new [DomainDevicesConsoleSource].
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
  DomainDevicesConsoleSource({
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
      'dbus': ?pulumi.Input.mapOptionalInputValue<DomainDevicesConsoleSourceDbus, Map<String, dynamic>>(dbus, (value) => value.toMap()),
      'dev': ?pulumi.Input.mapOptionalInputValue<DomainDevicesConsoleSourceDev, Map<String, dynamic>>(dev, (value) => value.toMap()),
      'file': ?pulumi.Input.mapOptionalInputValue<DomainDevicesConsoleSourceFile, Map<String, dynamic>>(file, (value) => value.toMap()),
      'nmdm': ?pulumi.Input.mapOptionalInputValue<DomainDevicesConsoleSourceNmdm, Map<String, dynamic>>(nmdm, (value) => value.toMap()),
      'null': ?null_,
      'pipe': ?pulumi.Input.mapOptionalInputValue<DomainDevicesConsoleSourcePipe, Map<String, dynamic>>(pipe, (value) => value.toMap()),
      'pty': ?pulumi.Input.mapOptionalInputValue<DomainDevicesConsoleSourcePty, Map<String, dynamic>>(pty, (value) => value.toMap()),
      'qemuvdAgent': ?pulumi.Input.mapOptionalInputValue<DomainDevicesConsoleSourceQemuvdAgent, Map<String, dynamic>>(qemuvdAgent, (value) => value.toMap()),
      'spicePort': ?pulumi.Input.mapOptionalInputValue<DomainDevicesConsoleSourceSpicePort, Map<String, dynamic>>(spicePort, (value) => value.toMap()),
      'spiceVmc': ?spiceVmc,
      'stdIo': ?stdIo,
      'tcp': ?pulumi.Input.mapOptionalInputValue<DomainDevicesConsoleSourceTcp, Map<String, dynamic>>(tcp, (value) => value.toMap()),
      'udp': ?pulumi.Input.mapOptionalInputValue<DomainDevicesConsoleSourceUdp, Map<String, dynamic>>(udp, (value) => value.toMap()),
      'unix': ?pulumi.Input.mapOptionalInputValue<DomainDevicesConsoleSourceUnix, Map<String, dynamic>>(unix, (value) => value.toMap()),
      'vc': ?vc,
    };
  }

  factory DomainDevicesConsoleSource.fromMap(Map<String, dynamic> map) {
    return DomainDevicesConsoleSource(
      dbus: map['dbus'] == null ? null : (DomainDevicesConsoleSourceDbus.fromMap((map['dbus'] as Map).cast<String, dynamic>())).input(),
      dev: map['dev'] == null ? null : (DomainDevicesConsoleSourceDev.fromMap((map['dev'] as Map).cast<String, dynamic>())).input(),
      file: map['file'] == null ? null : (DomainDevicesConsoleSourceFile.fromMap((map['file'] as Map).cast<String, dynamic>())).input(),
      nmdm: map['nmdm'] == null ? null : (DomainDevicesConsoleSourceNmdm.fromMap((map['nmdm'] as Map).cast<String, dynamic>())).input(),
      null_: map['null'] == null ? null : (map['null'] as bool).input(),
      pipe: map['pipe'] == null ? null : (DomainDevicesConsoleSourcePipe.fromMap((map['pipe'] as Map).cast<String, dynamic>())).input(),
      pty: map['pty'] == null ? null : (DomainDevicesConsoleSourcePty.fromMap((map['pty'] as Map).cast<String, dynamic>())).input(),
      qemuvdAgent: map['qemuvdAgent'] == null ? null : (DomainDevicesConsoleSourceQemuvdAgent.fromMap((map['qemuvdAgent'] as Map).cast<String, dynamic>())).input(),
      spicePort: map['spicePort'] == null ? null : (DomainDevicesConsoleSourceSpicePort.fromMap((map['spicePort'] as Map).cast<String, dynamic>())).input(),
      spiceVmc: map['spiceVmc'] == null ? null : (map['spiceVmc'] as bool).input(),
      stdIo: map['stdIo'] == null ? null : (map['stdIo'] as bool).input(),
      tcp: map['tcp'] == null ? null : (DomainDevicesConsoleSourceTcp.fromMap((map['tcp'] as Map).cast<String, dynamic>())).input(),
      udp: map['udp'] == null ? null : (DomainDevicesConsoleSourceUdp.fromMap((map['udp'] as Map).cast<String, dynamic>())).input(),
      unix: map['unix'] == null ? null : (DomainDevicesConsoleSourceUnix.fromMap((map['unix'] as Map).cast<String, dynamic>())).input(),
      vc: map['vc'] == null ? null : (map['vc'] as bool).input(),
    );
  }
}

