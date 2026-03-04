// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_parallel_source_dbus.dart';
import 'domain_devices_parallel_source_dev.dart';
import 'domain_devices_parallel_source_file.dart';
import 'domain_devices_parallel_source_nmdm.dart';
import 'domain_devices_parallel_source_pipe.dart';
import 'domain_devices_parallel_source_pty.dart';
import 'domain_devices_parallel_source_qemuvd_agent.dart';
import 'domain_devices_parallel_source_spice_port.dart';
import 'domain_devices_parallel_source_tcp.dart';
import 'domain_devices_parallel_source_udp.dart';
import 'domain_devices_parallel_source_unix.dart';

class DomainDevicesParallelSource {
  /// Configures the DBus source for the EGD backend.
  final pulumi.Input<DomainDevicesParallelSourceDbus>? dbus;

  /// Defines the device path for the source of the EGD backend.
  final pulumi.Input<DomainDevicesParallelSourceDev>? dev;

  /// Defines a file source for the RNG EGD backend.
  final pulumi.Input<DomainDevicesParallelSourceFile>? file;

  /// Configures the NMDM (null modem) device source for the EGD backend.
  final pulumi.Input<DomainDevicesParallelSourceNmdm>? nmdm;

  /// Configures a null source for the EGD backend.
  final pulumi.Input<bool>? null_;

  /// Defines a pipe source for the EGD backend.
  final pulumi.Input<DomainDevicesParallelSourcePipe>? pipe;

  /// Defines a pseudo-terminal (PTY) source for the EGD backend.
  final pulumi.Input<DomainDevicesParallelSourcePty>? pty;

  /// Configures the QEMU guest agent for the random number generator backend.
  final pulumi.Input<DomainDevicesParallelSourceQemuvdAgent>? qemuvdAgent;

  /// Configures the SPICE port settings for the random number generator backend.
  final pulumi.Input<DomainDevicesParallelSourceSpicePort>? spicePort;

  /// Configures the SPICE VMC settings for the random number generator backend.
  final pulumi.Input<bool>? spiceVmc;

  /// Configures standard input/output settings for the random number generator backend.
  final pulumi.Input<bool>? stdIo;

  /// Configures TCP settings for the random number generator backend.
  final pulumi.Input<DomainDevicesParallelSourceTcp>? tcp;

  /// Configures UDP settings for the random number generator backend.
  final pulumi.Input<DomainDevicesParallelSourceUdp>? udp;

  /// Configures UNIX domain socket settings for the random number generator backend.
  final pulumi.Input<DomainDevicesParallelSourceUnix>? unix;

  /// Configures settings for the virtual console connection in the random number generator backend.
  final pulumi.Input<bool>? vc;

  /// Creates a new [DomainDevicesParallelSource].
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
  DomainDevicesParallelSource({
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
      'dbus':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesParallelSourceDbus,
            Map<String, dynamic>
          >(dbus, (value) => value.toMap()),
      'dev':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesParallelSourceDev,
            Map<String, dynamic>
          >(dev, (value) => value.toMap()),
      'file':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesParallelSourceFile,
            Map<String, dynamic>
          >(file, (value) => value.toMap()),
      'nmdm':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesParallelSourceNmdm,
            Map<String, dynamic>
          >(nmdm, (value) => value.toMap()),
      'null': ?null_,
      'pipe':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesParallelSourcePipe,
            Map<String, dynamic>
          >(pipe, (value) => value.toMap()),
      'pty':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesParallelSourcePty,
            Map<String, dynamic>
          >(pty, (value) => value.toMap()),
      'qemuvdAgent':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesParallelSourceQemuvdAgent,
            Map<String, dynamic>
          >(qemuvdAgent, (value) => value.toMap()),
      'spicePort':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesParallelSourceSpicePort,
            Map<String, dynamic>
          >(spicePort, (value) => value.toMap()),
      'spiceVmc': ?spiceVmc,
      'stdIo': ?stdIo,
      'tcp':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesParallelSourceTcp,
            Map<String, dynamic>
          >(tcp, (value) => value.toMap()),
      'udp':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesParallelSourceUdp,
            Map<String, dynamic>
          >(udp, (value) => value.toMap()),
      'unix':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesParallelSourceUnix,
            Map<String, dynamic>
          >(unix, (value) => value.toMap()),
      'vc': ?vc,
    };
  }

  factory DomainDevicesParallelSource.fromMap(Map<String, dynamic> map) {
    return DomainDevicesParallelSource(
      dbus: (() {
        final guardedValue = map['dbus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesParallelSourceDbus.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      dev: (() {
        final guardedValue = map['dev'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesParallelSourceDev.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      file: (() {
        final guardedValue = map['file'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesParallelSourceFile.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      nmdm: (() {
        final guardedValue = map['nmdm'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesParallelSourceNmdm.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      null_: (() {
        final guardedValue = map['null'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      pipe: (() {
        final guardedValue = map['pipe'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesParallelSourcePipe.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      pty: (() {
        final guardedValue = map['pty'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesParallelSourcePty.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      qemuvdAgent: (() {
        final guardedValue = map['qemuvdAgent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesParallelSourceQemuvdAgent.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      spicePort: (() {
        final guardedValue = map['spicePort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesParallelSourceSpicePort.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      spiceVmc: (() {
        final guardedValue = map['spiceVmc'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      stdIo: (() {
        final guardedValue = map['stdIo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      tcp: (() {
        final guardedValue = map['tcp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesParallelSourceTcp.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      udp: (() {
        final guardedValue = map['udp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesParallelSourceUdp.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      unix: (() {
        final guardedValue = map['unix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesParallelSourceUnix.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      vc: (() {
        final guardedValue = map['vc'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
