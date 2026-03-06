// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a Quobyte mount that lasts the lifetime of a pod. Quobyte volumes do not support ownership management or SELinux relabeling.
class QuobyteVolumeSource {
  /// group to map volume access to Default is no group
  final pulumi.Input<String>? group;
  /// readOnly here will force the Quobyte volume to be mounted with read-only permissions. Defaults to false.
  final pulumi.Input<bool>? readOnly;
  /// registry represents a single or multiple Quobyte Registry services specified as a string as host:port pair (multiple entries are separated with commas) which acts as the central registry for volumes
  final pulumi.Input<String> registry;
  /// tenant owning the given Quobyte volume in the Backend Used with dynamically provisioned Quobyte volumes, value is set by the plugin
  final pulumi.Input<String>? tenant;
  /// user to map volume access to Defaults to serivceaccount user
  final pulumi.Input<String>? user;
  /// volume is a string that references an already created Quobyte volume by name.
  final pulumi.Input<String> volume;

  /// Creates a new [QuobyteVolumeSource].
  /// [group] group to map volume access to Default is no group
  /// [readOnly] readOnly here will force the Quobyte volume to be mounted with read-only permissions. Defaults to false.
  /// [registry] registry represents a single or multiple Quobyte Registry services specified as a string as host:port pair (multiple entries are separated with commas) which acts as the central registry for volumes
  /// [tenant] tenant owning the given Quobyte volume in the Backend Used with dynamically provisioned Quobyte volumes, value is set by the plugin
  /// [user] user to map volume access to Defaults to serivceaccount user
  /// [volume] volume is a string that references an already created Quobyte volume by name.
  const QuobyteVolumeSource({
    this.group,
    this.readOnly,
    required this.registry,
    this.tenant,
    this.user,
    required this.volume,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': ?group,
      'readOnly': ?readOnly,
      'registry': registry,
      'tenant': ?tenant,
      'user': ?user,
      'volume': volume,
    };
  }

  factory QuobyteVolumeSource.fromMap(Map<String, dynamic> map) {
    return QuobyteVolumeSource(
      group: (() { final guardedValue = map['group']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      readOnly: (() { final guardedValue = map['readOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      registry: pulumi.Input.fromValue(map['registry'] as String),
      tenant: (() { final guardedValue = map['tenant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volume: pulumi.Input.fromValue(map['volume'] as String),
    );
  }
}

