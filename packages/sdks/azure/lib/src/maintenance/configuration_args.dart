// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_install_patches.dart';
import 'configuration_window.dart';

/// {@template pulumi_maintenance_configuration_configuration_args_doc}
/// The set of arguments for Configuration.
/// {@endtemplate}
/// {@macro pulumi_maintenance_configuration_configuration_args_doc}
class ConfigurationArgs {
  /// The in guest user patch mode. Possible values are `Platform` or `User`. Must be specified when `scope` is `InGuestPatch`.
  final pulumi.Input<String>? inGuestUserPatchMode;
  /// An `install_patches` block as defined below.
  ///
  /// > **Note:** `install_patches` must be specified when `scope` is `InGuestPatch`.
  final pulumi.Input<ConfigurationInstallPatches>? installPatches;
  /// Specified the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Maintenance Configuration. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A mapping of properties to assign to the resource.
  final pulumi.Input<Map<String, String>>? properties;
  /// The name of the Resource Group where the Maintenance Configuration should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The scope of the Maintenance Configuration. Possible values are `Extension`, `Host`, `InGuestPatch`, `OSImage`, `SQLDB` or `SQLManagedInstance`.
  final pulumi.Input<String> scope;
  /// A mapping of tags to assign to the resource. The key could not contain upper case letter.
  final pulumi.Input<Map<String, String>>? tags;
  /// The visibility of the Maintenance Configuration. The only allowable value is `Custom`. Defaults to `Custom`.
  final pulumi.Input<String>? visibility;
  /// A `window` block as defined below.
  final pulumi.Input<ConfigurationWindow>? window;

  /// Creates a new [ConfigurationArgs].
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
  ConfigurationArgs({
    this.inGuestUserPatchMode,
    this.installPatches,
    this.location,
    this.name,
    this.properties,
    required this.resourceGroupName,
    required this.scope,
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
      'resourceGroupName': resourceGroupName,
      'scope': scope,
      'tags': ?tags,
      'visibility': ?visibility,
      'window': ?pulumi.Input.mapOptionalInputValue<ConfigurationWindow, Map<String, dynamic>>(window, (value) => value.toMap()),
    };
  }

  factory ConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return ConfigurationArgs(
      inGuestUserPatchMode: map['inGuestUserPatchMode'] == null ? null : (map['inGuestUserPatchMode']! as String).input(),
      installPatches: map['installPatches'] == null ? null : (ConfigurationInstallPatches.fromMap((map['installPatches']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      properties: map['properties'] == null ? null : ((map['properties']! as Map).cast<String, String>()).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      scope: (map['scope'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      visibility: map['visibility'] == null ? null : (map['visibility']! as String).input(),
      window: map['window'] == null ? null : (ConfigurationWindow.fromMap((map['window']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

