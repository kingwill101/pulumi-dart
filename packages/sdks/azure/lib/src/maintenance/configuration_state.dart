// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_install_patches.dart';
import 'configuration_window.dart';

/// Input properties used for looking up and filtering Configuration resources.
class ConfigurationState {
  /// The in guest user patch mode. Possible values are `Platform` or `User`. Must be specified when `scope` is `InGuestPatch`.
  final pulumi.Input<String>? inGuestUserPatchMode;
  /// An `install_patches` block as defined below.
  ///
  /// &gt; **Note:** `install_patches` must be specified when `scope` is `InGuestPatch`.
  final pulumi.Input<ConfigurationInstallPatches>? installPatches;
  /// Specified the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Maintenance Configuration. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A mapping of properties to assign to the resource.
  final pulumi.Input<Map<String, String>>? properties;
  /// The name of the Resource Group where the Maintenance Configuration should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The scope of the Maintenance Configuration. Possible values are `Extension`, `Host`, `InGuestPatch`, `OSImage`, `SQLDB` or `SQLManagedInstance`.
  final pulumi.Input<String>? scope;
  /// A mapping of tags to assign to the resource. The key could not contain upper case letter.
  final pulumi.Input<Map<String, String>>? tags;
  /// The visibility of the Maintenance Configuration. The only allowable value is `Custom`. Defaults to `Custom`.
  final pulumi.Input<String>? visibility;
  /// A `window` block as defined below.
  final pulumi.Input<ConfigurationWindow>? window;

  /// Creates a new [ConfigurationState].
  /// [inGuestUserPatchMode] The in guest user patch mode. Possible values are `Platform` or `User`. Must be specified when `scope` is `InGuestPatch`.
  /// [installPatches] An `install_patches` block as defined below.
  /// [location] Specified the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Maintenance Configuration. Changing this forces a new resource to be created.
  /// [properties] A mapping of properties to assign to the resource.
  /// [resourceGroupName] The name of the Resource Group where the Maintenance Configuration should exist. Changing this forces a new resource to be created.
  /// [scope] The scope of the Maintenance Configuration. Possible values are `Extension`, `Host`, `InGuestPatch`, `OSImage`, `SQLDB` or `SQLManagedInstance`.
  /// [tags] A mapping of tags to assign to the resource. The key could not contain upper case letter.
  /// [visibility] The visibility of the Maintenance Configuration. The only allowable value is `Custom`. Defaults to `Custom`.
  /// [window] A `window` block as defined below.
  const ConfigurationState({
    this.inGuestUserPatchMode,
    this.installPatches,
    this.location,
    this.name,
    this.properties,
    this.resourceGroupName,
    this.scope,
    this.tags,
    this.visibility,
    this.window,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inGuestUserPatchMode': ?inGuestUserPatchMode,
      'installPatches': ?pulumi.Input.mapOptionalInputValue<ConfigurationInstallPatches, Map<String, dynamic>>(installPatches, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'properties': ?properties,
      'resourceGroupName': ?resourceGroupName,
      'scope': ?scope,
      'tags': ?tags,
      'visibility': ?visibility,
      'window': ?pulumi.Input.mapOptionalInputValue<ConfigurationWindow, Map<String, dynamic>>(window, (value) => value.toMap()),
    };
  }

  factory ConfigurationState.fromMap(Map<String, dynamic> map) {
    return ConfigurationState(
      inGuestUserPatchMode: (() { final guardedValue = map['inGuestUserPatchMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      installPatches: (() { final guardedValue = map['installPatches']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigurationInstallPatches.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      visibility: (() { final guardedValue = map['visibility']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      window: (() { final guardedValue = map['window']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigurationWindow.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

