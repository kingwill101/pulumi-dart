// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Server resources.
class ServerState {
  /// When true, will drop objects that depend on the server (such as user mappings), and in turn all objects that depend on those objects . (Default: false)
  final pulumi.Input<bool>? dropCascade;
  /// The name of the foreign-data wrapper that manages the server.
  /// Changing this value
  /// will force the creation of a new resource as this value can only be set
  /// when the foreign server is created.
  final pulumi.Input<String>? fdwName;
  /// This clause specifies the options for the server. The options typically define the connection details of the server, but the actual names and values are dependent on the server's foreign-data wrapper.
  final pulumi.Input<Map<String, String>>? options;
  /// The name of the foreign server to be created.
  final pulumi.Input<String>? serverName;
  /// By default, the user who defines the server becomes its owner. Set this value to configure the new owner of the foreign server.
  final pulumi.Input<String>? serverOwner;
  /// Optional server type, potentially useful to foreign-data wrappers.
  /// Changing this value
  /// will force the creation of a new resource as this value can only be set
  /// when the foreign server is created.
  final pulumi.Input<String>? serverType;
  /// Optional server version, potentially useful to foreign-data wrappers.
  final pulumi.Input<String>? serverVersion;

  /// Creates a new [ServerState].
  /// [dropCascade] When true, will drop objects that depend on the server (such as user mappings), and in turn all objects that depend on those objects . (Default: false)
  /// [fdwName] The name of the foreign-data wrapper that manages the server.
  /// [options] This clause specifies the options for the server. The options typically define the connection details of the server, but the actual names and values are dependent on the server's foreign-data wrapper.
  /// [serverName] The name of the foreign server to be created.
  /// [serverOwner] By default, the user who defines the server becomes its owner. Set this value to configure the new owner of the foreign server.
  /// [serverType] Optional server type, potentially useful to foreign-data wrappers.
  /// [serverVersion] Optional server version, potentially useful to foreign-data wrappers.
  ServerState({
    this.dropCascade,
    this.fdwName,
    this.options,
    this.serverName,
    this.serverOwner,
    this.serverType,
    this.serverVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dropCascade': ?dropCascade,
      'fdwName': ?fdwName,
      'options': ?options,
      'serverName': ?serverName,
      'serverOwner': ?serverOwner,
      'serverType': ?serverType,
      'serverVersion': ?serverVersion,
    };
  }

  factory ServerState.fromMap(Map<String, dynamic> map) {
    return ServerState(
      dropCascade: (() { final guardedValue = map['dropCascade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      fdwName: (() { final guardedValue = map['fdwName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      serverName: (() { final guardedValue = map['serverName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverOwner: (() { final guardedValue = map['serverOwner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverType: (() { final guardedValue = map['serverType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverVersion: (() { final guardedValue = map['serverVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

