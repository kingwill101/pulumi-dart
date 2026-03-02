// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_channel_source_dbus.dart';
import 'domain_devices_channel_source_dev.dart';
import 'domain_devices_channel_source_file.dart';
import 'domain_devices_channel_source_nmdm.dart';
import 'domain_devices_channel_source_pipe.dart';
import 'domain_devices_channel_source_pty.dart';
import 'domain_devices_channel_source_qemuvd_agent.dart';
import 'domain_devices_channel_source_spice_port.dart';
import 'domain_devices_channel_source_tcp.dart';
import 'domain_devices_channel_source_udp.dart';
import 'domain_devices_channel_source_unix.dart';

class DomainDevicesChannelSource {
  /// Configures the DBus source for the EGD backend.
  final pulumi.Input<DomainDevicesChannelSourceDbus>? dbus;
  /// Defines the device path for the source of the EGD backend.
  final pulumi.Input<DomainDevicesChannelSourceDev>? dev;
  /// Defines a file source for the RNG EGD backend.
  final pulumi.Input<DomainDevicesChannelSourceFile>? file;
  /// Configures the NMDM (null modem) device source for the EGD backend.
  final pulumi.Input<DomainDevicesChannelSourceNmdm>? nmdm;
  /// Configures a null source for the EGD backend.
  final pulumi.Input<bool>? null_;
  /// Defines a pipe source for the EGD backend.
  final pulumi.Input<DomainDevicesChannelSourcePipe>? pipe;
  /// Defines a pseudo-terminal (PTY) source for the EGD backend.
  final pulumi.Input<DomainDevicesChannelSourcePty>? pty;
  /// Configures the QEMU guest agent for the random number generator backend.
  final pulumi.Input<DomainDevicesChannelSourceQemuvdAgent>? qemuvdAgent;
  /// Configures the SPICE port settings for the random number generator backend.
  final pulumi.Input<DomainDevicesChannelSourceSpicePort>? spicePort;
  /// Configures the SPICE VMC settings for the random number generator backend.
  final pulumi.Input<bool>? spiceVmc;
  /// Configures standard input/output settings for the random number generator backend.
  final pulumi.Input<bool>? stdIo;
  /// Configures TCP settings for the random number generator backend.
  final pulumi.Input<DomainDevicesChannelSourceTcp>? tcp;
  /// Configures UDP settings for the random number generator backend.
  final pulumi.Input<DomainDevicesChannelSourceUdp>? udp;
  /// Configures UNIX domain socket settings for the random number generator backend.
  final pulumi.Input<DomainDevicesChannelSourceUnix>? unix;
  /// Configures settings for the virtual console connection in the random number generator backend.
  final pulumi.Input<bool>? vc;

  /// Creates a new [DomainDevicesChannelSource].
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
  DomainDevicesChannelSource({
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
      'dbus': ?pulumi.Input.mapOptionalInputValue<DomainDevicesChannelSourceDbus, Map<String, dynamic>>(dbus, (value) => value.toMap()),
      'dev': ?pulumi.Input.mapOptionalInputValue<DomainDevicesChannelSourceDev, Map<String, dynamic>>(dev, (value) => value.toMap()),
      'file': ?pulumi.Input.mapOptionalInputValue<DomainDevicesChannelSourceFile, Map<String, dynamic>>(file, (value) => value.toMap()),
      'nmdm': ?pulumi.Input.mapOptionalInputValue<DomainDevicesChannelSourceNmdm, Map<String, dynamic>>(nmdm, (value) => value.toMap()),
      'null': ?null_,
      'pipe': ?pulumi.Input.mapOptionalInputValue<DomainDevicesChannelSourcePipe, Map<String, dynamic>>(pipe, (value) => value.toMap()),
      'pty': ?pulumi.Input.mapOptionalInputValue<DomainDevicesChannelSourcePty, Map<String, dynamic>>(pty, (value) => value.toMap()),
      'qemuvdAgent': ?pulumi.Input.mapOptionalInputValue<DomainDevicesChannelSourceQemuvdAgent, Map<String, dynamic>>(qemuvdAgent, (value) => value.toMap()),
      'spicePort': ?pulumi.Input.mapOptionalInputValue<DomainDevicesChannelSourceSpicePort, Map<String, dynamic>>(spicePort, (value) => value.toMap()),
      'spiceVmc': ?spiceVmc,
      'stdIo': ?stdIo,
      'tcp': ?pulumi.Input.mapOptionalInputValue<DomainDevicesChannelSourceTcp, Map<String, dynamic>>(tcp, (value) => value.toMap()),
      'udp': ?pulumi.Input.mapOptionalInputValue<DomainDevicesChannelSourceUdp, Map<String, dynamic>>(udp, (value) => value.toMap()),
      'unix': ?pulumi.Input.mapOptionalInputValue<DomainDevicesChannelSourceUnix, Map<String, dynamic>>(unix, (value) => value.toMap()),
      'vc': ?vc,
    };
  }

  factory DomainDevicesChannelSource.fromMap(Map<String, dynamic> map) {
    return DomainDevicesChannelSource(
      dbus: map['dbus'] == null ? null : (DomainDevicesChannelSourceDbus.fromMap((map['dbus']! as Map).cast<String, dynamic>())).input(),
      dev: map['dev'] == null ? null : (DomainDevicesChannelSourceDev.fromMap((map['dev']! as Map).cast<String, dynamic>())).input(),
      file: map['file'] == null ? null : (DomainDevicesChannelSourceFile.fromMap((map['file']! as Map).cast<String, dynamic>())).input(),
      nmdm: map['nmdm'] == null ? null : (DomainDevicesChannelSourceNmdm.fromMap((map['nmdm']! as Map).cast<String, dynamic>())).input(),
      null_: map['null'] == null ? null : (map['null']! as bool).input(),
      pipe: map['pipe'] == null ? null : (DomainDevicesChannelSourcePipe.fromMap((map['pipe']! as Map).cast<String, dynamic>())).input(),
      pty: map['pty'] == null ? null : (DomainDevicesChannelSourcePty.fromMap((map['pty']! as Map).cast<String, dynamic>())).input(),
      qemuvdAgent: map['qemuvdAgent'] == null ? null : (DomainDevicesChannelSourceQemuvdAgent.fromMap((map['qemuvdAgent']! as Map).cast<String, dynamic>())).input(),
      spicePort: map['spicePort'] == null ? null : (DomainDevicesChannelSourceSpicePort.fromMap((map['spicePort']! as Map).cast<String, dynamic>())).input(),
      spiceVmc: map['spiceVmc'] == null ? null : (map['spiceVmc']! as bool).input(),
      stdIo: map['stdIo'] == null ? null : (map['stdIo']! as bool).input(),
      tcp: map['tcp'] == null ? null : (DomainDevicesChannelSourceTcp.fromMap((map['tcp']! as Map).cast<String, dynamic>())).input(),
      udp: map['udp'] == null ? null : (DomainDevicesChannelSourceUdp.fromMap((map['udp']! as Map).cast<String, dynamic>())).input(),
      unix: map['unix'] == null ? null : (DomainDevicesChannelSourceUnix.fromMap((map['unix']! as Map).cast<String, dynamic>())).input(),
      vc: map['vc'] == null ? null : (map['vc']! as bool).input(),
    );
  }
}

