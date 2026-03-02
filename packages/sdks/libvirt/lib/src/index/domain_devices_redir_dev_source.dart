// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_redir_dev_source_dbus.dart';
import 'domain_devices_redir_dev_source_dev.dart';
import 'domain_devices_redir_dev_source_file.dart';
import 'domain_devices_redir_dev_source_nmdm.dart';
import 'domain_devices_redir_dev_source_pipe.dart';
import 'domain_devices_redir_dev_source_pty.dart';
import 'domain_devices_redir_dev_source_qemuvd_agent.dart';
import 'domain_devices_redir_dev_source_spice_port.dart';
import 'domain_devices_redir_dev_source_tcp.dart';
import 'domain_devices_redir_dev_source_udp.dart';
import 'domain_devices_redir_dev_source_unix.dart';

class DomainDevicesRedirDevSource {
  /// Configures the DBus source for the EGD backend.
  final pulumi.Input<DomainDevicesRedirDevSourceDbus>? dbus;
  /// Defines the device path for the source of the EGD backend.
  final pulumi.Input<DomainDevicesRedirDevSourceDev>? dev;
  /// Defines a file source for the RNG EGD backend.
  final pulumi.Input<DomainDevicesRedirDevSourceFile>? file;
  /// Configures the NMDM (null modem) device source for the EGD backend.
  final pulumi.Input<DomainDevicesRedirDevSourceNmdm>? nmdm;
  /// Configures a null source for the EGD backend.
  final pulumi.Input<bool>? null_;
  /// Defines a pipe source for the EGD backend.
  final pulumi.Input<DomainDevicesRedirDevSourcePipe>? pipe;
  /// Defines a pseudo-terminal (PTY) source for the EGD backend.
  final pulumi.Input<DomainDevicesRedirDevSourcePty>? pty;
  /// Configures the QEMU guest agent for the random number generator backend.
  final pulumi.Input<DomainDevicesRedirDevSourceQemuvdAgent>? qemuvdAgent;
  /// Configures the SPICE port settings for the random number generator backend.
  final pulumi.Input<DomainDevicesRedirDevSourceSpicePort>? spicePort;
  /// Configures the SPICE VMC settings for the random number generator backend.
  final pulumi.Input<bool>? spiceVmc;
  /// Configures standard input/output settings for the random number generator backend.
  final pulumi.Input<bool>? stdIo;
  /// Configures TCP settings for the random number generator backend.
  final pulumi.Input<DomainDevicesRedirDevSourceTcp>? tcp;
  /// Configures UDP settings for the random number generator backend.
  final pulumi.Input<DomainDevicesRedirDevSourceUdp>? udp;
  /// Configures UNIX domain socket settings for the random number generator backend.
  final pulumi.Input<DomainDevicesRedirDevSourceUnix>? unix;
  /// Configures settings for the virtual console connection in the random number generator backend.
  final pulumi.Input<bool>? vc;

  /// Creates a new [DomainDevicesRedirDevSource].
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
  DomainDevicesRedirDevSource({
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
      'dbus': ?pulumi.Input.mapOptionalInputValue<DomainDevicesRedirDevSourceDbus, Map<String, dynamic>>(dbus, (value) => value.toMap()),
      'dev': ?pulumi.Input.mapOptionalInputValue<DomainDevicesRedirDevSourceDev, Map<String, dynamic>>(dev, (value) => value.toMap()),
      'file': ?pulumi.Input.mapOptionalInputValue<DomainDevicesRedirDevSourceFile, Map<String, dynamic>>(file, (value) => value.toMap()),
      'nmdm': ?pulumi.Input.mapOptionalInputValue<DomainDevicesRedirDevSourceNmdm, Map<String, dynamic>>(nmdm, (value) => value.toMap()),
      'null': ?null_,
      'pipe': ?pulumi.Input.mapOptionalInputValue<DomainDevicesRedirDevSourcePipe, Map<String, dynamic>>(pipe, (value) => value.toMap()),
      'pty': ?pulumi.Input.mapOptionalInputValue<DomainDevicesRedirDevSourcePty, Map<String, dynamic>>(pty, (value) => value.toMap()),
      'qemuvdAgent': ?pulumi.Input.mapOptionalInputValue<DomainDevicesRedirDevSourceQemuvdAgent, Map<String, dynamic>>(qemuvdAgent, (value) => value.toMap()),
      'spicePort': ?pulumi.Input.mapOptionalInputValue<DomainDevicesRedirDevSourceSpicePort, Map<String, dynamic>>(spicePort, (value) => value.toMap()),
      'spiceVmc': ?spiceVmc,
      'stdIo': ?stdIo,
      'tcp': ?pulumi.Input.mapOptionalInputValue<DomainDevicesRedirDevSourceTcp, Map<String, dynamic>>(tcp, (value) => value.toMap()),
      'udp': ?pulumi.Input.mapOptionalInputValue<DomainDevicesRedirDevSourceUdp, Map<String, dynamic>>(udp, (value) => value.toMap()),
      'unix': ?pulumi.Input.mapOptionalInputValue<DomainDevicesRedirDevSourceUnix, Map<String, dynamic>>(unix, (value) => value.toMap()),
      'vc': ?vc,
    };
  }

  factory DomainDevicesRedirDevSource.fromMap(Map<String, dynamic> map) {
    return DomainDevicesRedirDevSource(
      dbus: map['dbus'] == null ? null : (DomainDevicesRedirDevSourceDbus.fromMap((map['dbus'] as Map).cast<String, dynamic>())).input(),
      dev: map['dev'] == null ? null : (DomainDevicesRedirDevSourceDev.fromMap((map['dev'] as Map).cast<String, dynamic>())).input(),
      file: map['file'] == null ? null : (DomainDevicesRedirDevSourceFile.fromMap((map['file'] as Map).cast<String, dynamic>())).input(),
      nmdm: map['nmdm'] == null ? null : (DomainDevicesRedirDevSourceNmdm.fromMap((map['nmdm'] as Map).cast<String, dynamic>())).input(),
      null_: map['null'] == null ? null : (map['null'] as bool).input(),
      pipe: map['pipe'] == null ? null : (DomainDevicesRedirDevSourcePipe.fromMap((map['pipe'] as Map).cast<String, dynamic>())).input(),
      pty: map['pty'] == null ? null : (DomainDevicesRedirDevSourcePty.fromMap((map['pty'] as Map).cast<String, dynamic>())).input(),
      qemuvdAgent: map['qemuvdAgent'] == null ? null : (DomainDevicesRedirDevSourceQemuvdAgent.fromMap((map['qemuvdAgent'] as Map).cast<String, dynamic>())).input(),
      spicePort: map['spicePort'] == null ? null : (DomainDevicesRedirDevSourceSpicePort.fromMap((map['spicePort'] as Map).cast<String, dynamic>())).input(),
      spiceVmc: map['spiceVmc'] == null ? null : (map['spiceVmc'] as bool).input(),
      stdIo: map['stdIo'] == null ? null : (map['stdIo'] as bool).input(),
      tcp: map['tcp'] == null ? null : (DomainDevicesRedirDevSourceTcp.fromMap((map['tcp'] as Map).cast<String, dynamic>())).input(),
      udp: map['udp'] == null ? null : (DomainDevicesRedirDevSourceUdp.fromMap((map['udp'] as Map).cast<String, dynamic>())).input(),
      unix: map['unix'] == null ? null : (DomainDevicesRedirDevSourceUnix.fromMap((map['unix'] as Map).cast<String, dynamic>())).input(),
      vc: map['vc'] == null ? null : (map['vc'] as bool).input(),
    );
  }
}

