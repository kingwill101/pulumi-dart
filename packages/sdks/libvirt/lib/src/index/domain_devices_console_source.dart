// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_console_source_dbus.dart';
import 'domain_devices_console_source_dev.dart';
import 'domain_devices_console_source_file.dart';
import 'domain_devices_console_source_nmdm.dart';
import 'domain_devices_console_source_pipe.dart';
import 'domain_devices_console_source_pty.dart';
import 'domain_devices_console_source_qemu_vd_agent.dart';
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
  final pulumi.Input<DomainDevicesConsoleSourceQemuVdAgent>? qemuVdAgent;
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
  /// [qemuVdAgent] Optional.
  /// [spicePort] Configures the SPICE port settings for the random number generator backend.
  /// [spiceVmc] Configures the SPICE VMC settings for the random number generator backend.
  /// [stdIo] Configures standard input/output settings for the random number generator backend.
  /// [tcp] Configures TCP settings for the random number generator backend.
  /// [udp] Configures UDP settings for the random number generator backend.
  /// [unix] Configures UNIX domain socket settings for the random number generator backend.
  /// [vc] Configures settings for the virtual console connection in the random number generator backend.
  const DomainDevicesConsoleSource({
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
      'dbus': ?pulumi.Input.mapOptionalInputValue<DomainDevicesConsoleSourceDbus, Map<String, dynamic>>(dbus, (value) => value.toMap()),
      'dev': ?pulumi.Input.mapOptionalInputValue<DomainDevicesConsoleSourceDev, Map<String, dynamic>>(dev, (value) => value.toMap()),
      'file': ?pulumi.Input.mapOptionalInputValue<DomainDevicesConsoleSourceFile, Map<String, dynamic>>(file, (value) => value.toMap()),
      'nmdm': ?pulumi.Input.mapOptionalInputValue<DomainDevicesConsoleSourceNmdm, Map<String, dynamic>>(nmdm, (value) => value.toMap()),
      'null': ?null_,
      'pipe': ?pulumi.Input.mapOptionalInputValue<DomainDevicesConsoleSourcePipe, Map<String, dynamic>>(pipe, (value) => value.toMap()),
      'pty': ?pulumi.Input.mapOptionalInputValue<DomainDevicesConsoleSourcePty, Map<String, dynamic>>(pty, (value) => value.toMap()),
      'qemuVdAgent': ?pulumi.Input.mapOptionalInputValue<DomainDevicesConsoleSourceQemuVdAgent, Map<String, dynamic>>(qemuVdAgent, (value) => value.toMap()),
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
      dbus: (() { final guardedValue = map['dbus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesConsoleSourceDbus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dev: (() { final guardedValue = map['dev']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesConsoleSourceDev.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      file: (() { final guardedValue = map['file']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesConsoleSourceFile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nmdm: (() { final guardedValue = map['nmdm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesConsoleSourceNmdm.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      null_: (() { final guardedValue = map['null']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      pipe: (() { final guardedValue = map['pipe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesConsoleSourcePipe.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pty: (() { final guardedValue = map['pty']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesConsoleSourcePty.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      qemuVdAgent: (() { final guardedValue = map['qemuVdAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesConsoleSourceQemuVdAgent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spicePort: (() { final guardedValue = map['spicePort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesConsoleSourceSpicePort.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spiceVmc: (() { final guardedValue = map['spiceVmc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      stdIo: (() { final guardedValue = map['stdIo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tcp: (() { final guardedValue = map['tcp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesConsoleSourceTcp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      udp: (() { final guardedValue = map['udp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesConsoleSourceUdp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      unix: (() { final guardedValue = map['unix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesConsoleSourceUnix.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vc: (() { final guardedValue = map['vc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
