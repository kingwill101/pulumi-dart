// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_graphic_spice_channel.dart';
import 'domain_devices_graphic_spice_clip_board.dart';
import 'domain_devices_graphic_spice_file_transfer.dart';
import 'domain_devices_graphic_spice_gl.dart';
import 'domain_devices_graphic_spice_image.dart';
import 'domain_devices_graphic_spice_jpeg.dart';
import 'domain_devices_graphic_spice_listener.dart';
import 'domain_devices_graphic_spice_mouse.dart';
import 'domain_devices_graphic_spice_playback.dart';
import 'domain_devices_graphic_spice_streaming.dart';
import 'domain_devices_graphic_spice_zlib.dart';

class DomainDevicesGraphicSpice {
  /// Enables automatic port assignment for SPICE connections.
  final pulumi.Input<bool>? autoPort;
  /// Configures the SPICE channels used for the graphics connection.
  final pulumi.Input<List<DomainDevicesGraphicSpiceChannel>>? channels;
  /// Enables or disables clipboard sharing between the guest and host through the Spice protocol.
  final pulumi.Input<DomainDevicesGraphicSpiceClipBoard>? clipBoard;
  /// Indicates whether the Spice graphical interface is currently connected to the client.
  final pulumi.Input<String>? connected;
  /// Sets the default graphical mode for the Spice display, defining initial display settings.
  final pulumi.Input<String>? defaultMode;
  /// Configures file transfer capabilities over the Spice connection.
  final pulumi.Input<DomainDevicesGraphicSpiceFileTransfer>? fileTransfer;
  /// Configures settings for OpenGL rendering within the Spice graphical interface.
  final pulumi.Input<DomainDevicesGraphicSpiceGl>? gl;
  /// Configures graphical image settings for the Spice connection.
  final pulumi.Input<DomainDevicesGraphicSpiceImage>? image;
  /// Configures JPEG image settings for the Spice graphical output.
  final pulumi.Input<DomainDevicesGraphicSpiceJpeg>? jpeg;
  /// Specifies the keymap used for the keyboard input in the Spice session.
  final pulumi.Input<String>? keymap;
  /// Configures the listening criteria for the Spice server, determining how it accepts connections.
  final pulumi.Input<String>? listen;
  /// Defines listeners for the Spice channel, which are used for handling incoming connections.
  final pulumi.Input<List<DomainDevicesGraphicSpiceListener>>? listeners;
  /// Configures mouse settings for the Spice graphical interface, managing input behavior.
  final pulumi.Input<DomainDevicesGraphicSpiceMouse>? mouse;
  /// Specifies a password required for authentication when connecting to the Spice server.
  final pulumi.Input<String>? passwd;
  /// Defines the expiration time for the Spice password, indicating when it becomes invalid.
  final pulumi.Input<String>? passwdValidTo;
  /// Configures playback settings for multimedia content within the Spice graphical session.
  final pulumi.Input<DomainDevicesGraphicSpicePlayback>? playback;
  /// Specifies the port number used by the Spice server for connections.
  final pulumi.Input<double>? port;
  /// Configures streaming options for live content delivery through the Spice connection.
  final pulumi.Input<DomainDevicesGraphicSpiceStreaming>? streaming;
  /// Specifies the port number for TLS connections in the Spice protocol to enhance security.
  final pulumi.Input<double>? tlsPort;
  /// Configures settings for zlib compression within the Spice graphical environment.
  final pulumi.Input<DomainDevicesGraphicSpiceZlib>? zlib;

  /// Creates a new [DomainDevicesGraphicSpice].
  /// [autoPort] Enables automatic port assignment for SPICE connections.
  /// [channels] Configures the SPICE channels used for the graphics connection.
  /// [clipBoard] Enables or disables clipboard sharing between the guest and host through the Spice protocol.
  /// [connected] Indicates whether the Spice graphical interface is currently connected to the client.
  /// [defaultMode] Sets the default graphical mode for the Spice display, defining initial display settings.
  /// [fileTransfer] Configures file transfer capabilities over the Spice connection.
  /// [gl] Configures settings for OpenGL rendering within the Spice graphical interface.
  /// [image] Configures graphical image settings for the Spice connection.
  /// [jpeg] Configures JPEG image settings for the Spice graphical output.
  /// [keymap] Specifies the keymap used for the keyboard input in the Spice session.
  /// [listen] Configures the listening criteria for the Spice server, determining how it accepts connections.
  /// [listeners] Defines listeners for the Spice channel, which are used for handling incoming connections.
  /// [mouse] Configures mouse settings for the Spice graphical interface, managing input behavior.
  /// [passwd] Specifies a password required for authentication when connecting to the Spice server.
  /// [passwdValidTo] Defines the expiration time for the Spice password, indicating when it becomes invalid.
  /// [playback] Configures playback settings for multimedia content within the Spice graphical session.
  /// [port] Specifies the port number used by the Spice server for connections.
  /// [streaming] Configures streaming options for live content delivery through the Spice connection.
  /// [tlsPort] Specifies the port number for TLS connections in the Spice protocol to enhance security.
  /// [zlib] Configures settings for zlib compression within the Spice graphical environment.
  DomainDevicesGraphicSpice({
    this.autoPort,
    this.channels,
    this.clipBoard,
    this.connected,
    this.defaultMode,
    this.fileTransfer,
    this.gl,
    this.image,
    this.jpeg,
    this.keymap,
    this.listen,
    this.listeners,
    this.mouse,
    this.passwd,
    this.passwdValidTo,
    this.playback,
    this.port,
    this.streaming,
    this.tlsPort,
    this.zlib,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPort': ?autoPort,
      'channels': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesGraphicSpiceChannel>, List<Map<String, dynamic>>>(channels, (value) => pulumi.Input.encodeList<DomainDevicesGraphicSpiceChannel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clipBoard': ?pulumi.Input.mapOptionalInputValue<DomainDevicesGraphicSpiceClipBoard, Map<String, dynamic>>(clipBoard, (value) => value.toMap()),
      'connected': ?connected,
      'defaultMode': ?defaultMode,
      'fileTransfer': ?pulumi.Input.mapOptionalInputValue<DomainDevicesGraphicSpiceFileTransfer, Map<String, dynamic>>(fileTransfer, (value) => value.toMap()),
      'gl': ?pulumi.Input.mapOptionalInputValue<DomainDevicesGraphicSpiceGl, Map<String, dynamic>>(gl, (value) => value.toMap()),
      'image': ?pulumi.Input.mapOptionalInputValue<DomainDevicesGraphicSpiceImage, Map<String, dynamic>>(image, (value) => value.toMap()),
      'jpeg': ?pulumi.Input.mapOptionalInputValue<DomainDevicesGraphicSpiceJpeg, Map<String, dynamic>>(jpeg, (value) => value.toMap()),
      'keymap': ?keymap,
      'listen': ?listen,
      'listeners': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesGraphicSpiceListener>, List<Map<String, dynamic>>>(listeners, (value) => pulumi.Input.encodeList<DomainDevicesGraphicSpiceListener, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mouse': ?pulumi.Input.mapOptionalInputValue<DomainDevicesGraphicSpiceMouse, Map<String, dynamic>>(mouse, (value) => value.toMap()),
      'passwd': ?passwd,
      'passwdValidTo': ?passwdValidTo,
      'playback': ?pulumi.Input.mapOptionalInputValue<DomainDevicesGraphicSpicePlayback, Map<String, dynamic>>(playback, (value) => value.toMap()),
      'port': ?port,
      'streaming': ?pulumi.Input.mapOptionalInputValue<DomainDevicesGraphicSpiceStreaming, Map<String, dynamic>>(streaming, (value) => value.toMap()),
      'tlsPort': ?tlsPort,
      'zlib': ?pulumi.Input.mapOptionalInputValue<DomainDevicesGraphicSpiceZlib, Map<String, dynamic>>(zlib, (value) => value.toMap()),
    };
  }

  factory DomainDevicesGraphicSpice.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphicSpice(
      autoPort: map['autoPort'] == null ? null : (map['autoPort']! as bool).input(),
      channels: map['channels'] == null ? null : (pulumi.Input.decodeList<DomainDevicesGraphicSpiceChannel>(map['channels']!, (value) => DomainDevicesGraphicSpiceChannel.fromMap((value as Map).cast<String, dynamic>()))).input(),
      clipBoard: map['clipBoard'] == null ? null : (DomainDevicesGraphicSpiceClipBoard.fromMap((map['clipBoard']! as Map).cast<String, dynamic>())).input(),
      connected: map['connected'] == null ? null : (map['connected']! as String).input(),
      defaultMode: map['defaultMode'] == null ? null : (map['defaultMode']! as String).input(),
      fileTransfer: map['fileTransfer'] == null ? null : (DomainDevicesGraphicSpiceFileTransfer.fromMap((map['fileTransfer']! as Map).cast<String, dynamic>())).input(),
      gl: map['gl'] == null ? null : (DomainDevicesGraphicSpiceGl.fromMap((map['gl']! as Map).cast<String, dynamic>())).input(),
      image: map['image'] == null ? null : (DomainDevicesGraphicSpiceImage.fromMap((map['image']! as Map).cast<String, dynamic>())).input(),
      jpeg: map['jpeg'] == null ? null : (DomainDevicesGraphicSpiceJpeg.fromMap((map['jpeg']! as Map).cast<String, dynamic>())).input(),
      keymap: map['keymap'] == null ? null : (map['keymap']! as String).input(),
      listen: map['listen'] == null ? null : (map['listen']! as String).input(),
      listeners: map['listeners'] == null ? null : (pulumi.Input.decodeList<DomainDevicesGraphicSpiceListener>(map['listeners']!, (value) => DomainDevicesGraphicSpiceListener.fromMap((value as Map).cast<String, dynamic>()))).input(),
      mouse: map['mouse'] == null ? null : (DomainDevicesGraphicSpiceMouse.fromMap((map['mouse']! as Map).cast<String, dynamic>())).input(),
      passwd: map['passwd'] == null ? null : (map['passwd']! as String).input(),
      passwdValidTo: map['passwdValidTo'] == null ? null : (map['passwdValidTo']! as String).input(),
      playback: map['playback'] == null ? null : (DomainDevicesGraphicSpicePlayback.fromMap((map['playback']! as Map).cast<String, dynamic>())).input(),
      port: map['port'] == null ? null : (map['port']! as double).input(),
      streaming: map['streaming'] == null ? null : (DomainDevicesGraphicSpiceStreaming.fromMap((map['streaming']! as Map).cast<String, dynamic>())).input(),
      tlsPort: map['tlsPort'] == null ? null : (map['tlsPort']! as double).input(),
      zlib: map['zlib'] == null ? null : (DomainDevicesGraphicSpiceZlib.fromMap((map['zlib']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

