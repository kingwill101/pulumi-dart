// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_tpm_backend_external_source_dbus.dart';
import 'domain_devices_tpm_backend_external_source_dev.dart';
import 'domain_devices_tpm_backend_external_source_file.dart';
import 'domain_devices_tpm_backend_external_source_nmdm.dart';
import 'domain_devices_tpm_backend_external_source_pipe.dart';
import 'domain_devices_tpm_backend_external_source_pty.dart';
import 'domain_devices_tpm_backend_external_source_qemu_vd_agent.dart';
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
  final pulumi.Input<DomainDevicesTpmBackendExternalSourceQemuVdAgent>? qemuVdAgent;
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
  /// [qemuVdAgent] Optional.
  /// [spicePort] Configures the SPICE port settings for the random number generator backend.
  /// [spiceVmc] Configures a SPICE Virtual Machine Channel as a source for enhanced communication with guests.
  /// [stdIo] Configures standard input/output for device interactions, allowing typical stdin/stdout handling.
  /// [tcp] Configures TCP settings for the random number generator backend.
  /// [udp] Configures UDP settings for the random number generator backend.
  /// [unix] Configures UNIX domain socket settings for the random number generator backend.
  /// [vc] Configures a virtual console as a source for communication, enabling interaction with the guest.
  const DomainDevicesTpmBackendExternalSource({
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
      'dbus': ?pulumi.Input.mapOptionalInputValue<DomainDevicesTpmBackendExternalSourceDbus, Map<String, dynamic>>(dbus, (value) => value.toMap()),
      'dev': ?pulumi.Input.mapOptionalInputValue<DomainDevicesTpmBackendExternalSourceDev, Map<String, dynamic>>(dev, (value) => value.toMap()),
      'file': ?pulumi.Input.mapOptionalInputValue<DomainDevicesTpmBackendExternalSourceFile, Map<String, dynamic>>(file, (value) => value.toMap()),
      'nmdm': ?pulumi.Input.mapOptionalInputValue<DomainDevicesTpmBackendExternalSourceNmdm, Map<String, dynamic>>(nmdm, (value) => value.toMap()),
      'null': ?null_,
      'pipe': ?pulumi.Input.mapOptionalInputValue<DomainDevicesTpmBackendExternalSourcePipe, Map<String, dynamic>>(pipe, (value) => value.toMap()),
      'pty': ?pulumi.Input.mapOptionalInputValue<DomainDevicesTpmBackendExternalSourcePty, Map<String, dynamic>>(pty, (value) => value.toMap()),
      'qemuVdAgent': ?pulumi.Input.mapOptionalInputValue<DomainDevicesTpmBackendExternalSourceQemuVdAgent, Map<String, dynamic>>(qemuVdAgent, (value) => value.toMap()),
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
      dbus: (() { final guardedValue = map['dbus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesTpmBackendExternalSourceDbus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dev: (() { final guardedValue = map['dev']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesTpmBackendExternalSourceDev.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      file: (() { final guardedValue = map['file']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesTpmBackendExternalSourceFile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nmdm: (() { final guardedValue = map['nmdm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesTpmBackendExternalSourceNmdm.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      null_: (() { final guardedValue = map['null']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      pipe: (() { final guardedValue = map['pipe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesTpmBackendExternalSourcePipe.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pty: (() { final guardedValue = map['pty']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesTpmBackendExternalSourcePty.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      qemuVdAgent: (() { final guardedValue = map['qemuVdAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesTpmBackendExternalSourceQemuVdAgent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spicePort: (() { final guardedValue = map['spicePort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesTpmBackendExternalSourceSpicePort.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spiceVmc: (() { final guardedValue = map['spiceVmc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      stdIo: (() { final guardedValue = map['stdIo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tcp: (() { final guardedValue = map['tcp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesTpmBackendExternalSourceTcp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      udp: (() { final guardedValue = map['udp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesTpmBackendExternalSourceUdp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      unix: (() { final guardedValue = map['unix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesTpmBackendExternalSourceUnix.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vc: (() { final guardedValue = map['vc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
