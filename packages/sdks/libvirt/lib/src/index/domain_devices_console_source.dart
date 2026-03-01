// ignore_for_file: unused_element, unnecessary_cast

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
  final DomainDevicesConsoleSourceDbus? dbus;
  /// Defines the device path for the source of the EGD backend.
  final DomainDevicesConsoleSourceDev? dev;
  /// Defines a file source for the RNG EGD backend.
  final DomainDevicesConsoleSourceFile? file;
  /// Configures the NMDM (null modem) device source for the EGD backend.
  final DomainDevicesConsoleSourceNmdm? nmdm;
  /// Configures a null source for the EGD backend.
  final bool? null_;
  /// Defines a pipe source for the EGD backend.
  final DomainDevicesConsoleSourcePipe? pipe;
  /// Defines a pseudo-terminal (PTY) source for the EGD backend.
  final DomainDevicesConsoleSourcePty? pty;
  /// Configures the QEMU guest agent for the random number generator backend.
  final DomainDevicesConsoleSourceQemuvdAgent? qemuvdAgent;
  /// Configures the SPICE port settings for the random number generator backend.
  final DomainDevicesConsoleSourceSpicePort? spicePort;
  /// Configures the SPICE VMC settings for the random number generator backend.
  final bool? spiceVmc;
  /// Configures standard input/output settings for the random number generator backend.
  final bool? stdIo;
  /// Configures TCP settings for the random number generator backend.
  final DomainDevicesConsoleSourceTcp? tcp;
  /// Configures UDP settings for the random number generator backend.
  final DomainDevicesConsoleSourceUdp? udp;
  /// Configures UNIX domain socket settings for the random number generator backend.
  final DomainDevicesConsoleSourceUnix? unix;
  /// Configures settings for the virtual console connection in the random number generator backend.
  final bool? vc;

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
      'dbus': ?dbus == null ? null : dbus!.toMap(),
      'dev': ?dev == null ? null : dev!.toMap(),
      'file': ?file == null ? null : file!.toMap(),
      'nmdm': ?nmdm == null ? null : nmdm!.toMap(),
      'null': ?null_,
      'pipe': ?pipe == null ? null : pipe!.toMap(),
      'pty': ?pty == null ? null : pty!.toMap(),
      'qemuvdAgent': ?qemuvdAgent == null ? null : qemuvdAgent!.toMap(),
      'spicePort': ?spicePort == null ? null : spicePort!.toMap(),
      'spiceVmc': ?spiceVmc,
      'stdIo': ?stdIo,
      'tcp': ?tcp == null ? null : tcp!.toMap(),
      'udp': ?udp == null ? null : udp!.toMap(),
      'unix': ?unix == null ? null : unix!.toMap(),
      'vc': ?vc,
    };
  }

  factory DomainDevicesConsoleSource.fromMap(Map<String, dynamic> map) {
    return DomainDevicesConsoleSource(
      dbus: map['dbus'] == null ? null : DomainDevicesConsoleSourceDbus.fromMap((map['dbus'] as Map).cast<String, dynamic>()),
      dev: map['dev'] == null ? null : DomainDevicesConsoleSourceDev.fromMap((map['dev'] as Map).cast<String, dynamic>()),
      file: map['file'] == null ? null : DomainDevicesConsoleSourceFile.fromMap((map['file'] as Map).cast<String, dynamic>()),
      nmdm: map['nmdm'] == null ? null : DomainDevicesConsoleSourceNmdm.fromMap((map['nmdm'] as Map).cast<String, dynamic>()),
      null_: map['null'] == null ? null : map['null'] as bool,
      pipe: map['pipe'] == null ? null : DomainDevicesConsoleSourcePipe.fromMap((map['pipe'] as Map).cast<String, dynamic>()),
      pty: map['pty'] == null ? null : DomainDevicesConsoleSourcePty.fromMap((map['pty'] as Map).cast<String, dynamic>()),
      qemuvdAgent: map['qemuvdAgent'] == null ? null : DomainDevicesConsoleSourceQemuvdAgent.fromMap((map['qemuvdAgent'] as Map).cast<String, dynamic>()),
      spicePort: map['spicePort'] == null ? null : DomainDevicesConsoleSourceSpicePort.fromMap((map['spicePort'] as Map).cast<String, dynamic>()),
      spiceVmc: map['spiceVmc'] == null ? null : map['spiceVmc'] as bool,
      stdIo: map['stdIo'] == null ? null : map['stdIo'] as bool,
      tcp: map['tcp'] == null ? null : DomainDevicesConsoleSourceTcp.fromMap((map['tcp'] as Map).cast<String, dynamic>()),
      udp: map['udp'] == null ? null : DomainDevicesConsoleSourceUdp.fromMap((map['udp'] as Map).cast<String, dynamic>()),
      unix: map['unix'] == null ? null : DomainDevicesConsoleSourceUnix.fromMap((map['unix'] as Map).cast<String, dynamic>()),
      vc: map['vc'] == null ? null : map['vc'] as bool,
    );
  }
}

