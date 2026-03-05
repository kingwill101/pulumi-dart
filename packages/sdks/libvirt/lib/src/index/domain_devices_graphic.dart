// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_graphic_audio.dart';
import 'domain_devices_graphic_dbus.dart';
import 'domain_devices_graphic_desktop.dart';
import 'domain_devices_graphic_egl_headless.dart';
import 'domain_devices_graphic_rdp.dart';
import 'domain_devices_graphic_sdl.dart';
import 'domain_devices_graphic_spice.dart';
import 'domain_devices_graphic_vnc.dart';

class DomainDevicesGraphic {
  /// Configures the audio settings for the graphics device in the guest.
  final pulumi.Input<DomainDevicesGraphicAudio>? audio;
  /// Specifies the D-Bus settings for inter-process communication for the graphics display.
  final pulumi.Input<DomainDevicesGraphicDbus>? dbus;
  /// Configures the desktop environment settings for the graphics display.
  final pulumi.Input<DomainDevicesGraphicDesktop>? desktop;
  /// Configures headless EGL graphics settings for the domain.
  final pulumi.Input<DomainDevicesGraphicEglHeadless>? eglHeadless;
  /// Configures the RDP settings for remote desktop access to the graphics device.
  final pulumi.Input<DomainDevicesGraphicRdp>? rdp;
  /// Configures the SDL display settings for graphics output.
  final pulumi.Input<DomainDevicesGraphicSdl>? sdl;
  /// Configures the SPICE settings for graphical interaction with the guest.
  final pulumi.Input<DomainDevicesGraphicSpice>? spice;
  /// Configures the VNC graphical interface settings for the virtual machine.
  final pulumi.Input<DomainDevicesGraphicVnc>? vnc;

  /// Creates a new [DomainDevicesGraphic].
  /// [audio] Configures the audio settings for the graphics device in the guest.
  /// [dbus] Specifies the D-Bus settings for inter-process communication for the graphics display.
  /// [desktop] Configures the desktop environment settings for the graphics display.
  /// [eglHeadless] Configures headless EGL graphics settings for the domain.
  /// [rdp] Configures the RDP settings for remote desktop access to the graphics device.
  /// [sdl] Configures the SDL display settings for graphics output.
  /// [spice] Configures the SPICE settings for graphical interaction with the guest.
  /// [vnc] Configures the VNC graphical interface settings for the virtual machine.
  DomainDevicesGraphic({
    this.audio,
    this.dbus,
    this.desktop,
    this.eglHeadless,
    this.rdp,
    this.sdl,
    this.spice,
    this.vnc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audio': ?pulumi.Input.mapOptionalInputValue<DomainDevicesGraphicAudio, Map<String, dynamic>>(audio, (value) => value.toMap()),
      'dbus': ?pulumi.Input.mapOptionalInputValue<DomainDevicesGraphicDbus, Map<String, dynamic>>(dbus, (value) => value.toMap()),
      'desktop': ?pulumi.Input.mapOptionalInputValue<DomainDevicesGraphicDesktop, Map<String, dynamic>>(desktop, (value) => value.toMap()),
      'eglHeadless': ?pulumi.Input.mapOptionalInputValue<DomainDevicesGraphicEglHeadless, Map<String, dynamic>>(eglHeadless, (value) => value.toMap()),
      'rdp': ?pulumi.Input.mapOptionalInputValue<DomainDevicesGraphicRdp, Map<String, dynamic>>(rdp, (value) => value.toMap()),
      'sdl': ?pulumi.Input.mapOptionalInputValue<DomainDevicesGraphicSdl, Map<String, dynamic>>(sdl, (value) => value.toMap()),
      'spice': ?pulumi.Input.mapOptionalInputValue<DomainDevicesGraphicSpice, Map<String, dynamic>>(spice, (value) => value.toMap()),
      'vnc': ?pulumi.Input.mapOptionalInputValue<DomainDevicesGraphicVnc, Map<String, dynamic>>(vnc, (value) => value.toMap()),
    };
  }

  factory DomainDevicesGraphic.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphic(
      audio: (() { final guardedValue = map['audio']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesGraphicAudio.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dbus: (() { final guardedValue = map['dbus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesGraphicDbus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      desktop: (() { final guardedValue = map['desktop']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesGraphicDesktop.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      eglHeadless: (() { final guardedValue = map['eglHeadless']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesGraphicEglHeadless.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rdp: (() { final guardedValue = map['rdp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesGraphicRdp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sdl: (() { final guardedValue = map['sdl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesGraphicSdl.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spice: (() { final guardedValue = map['spice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesGraphicSpice.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vnc: (() { final guardedValue = map['vnc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesGraphicVnc.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

