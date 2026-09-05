// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_configuration_install_patch.dart';
import 'get_configuration_window.dart';

/// Result data returned by getConfiguration.
class GetConfigurationResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The in guest user patch mode.
  final String? inGuestUserPatchMode;
  /// An `installPatches` block as defined below.
  final List<GetConfigurationInstallPatch>? installPatches;
  /// The Azure location where the resource exists.
  final String? location;
  final String? name;
  /// The properties assigned to the resource.
  final Map<String, String>? properties;
  final String? resourceGroupName;
  /// The scope of the Maintenance Configuration.
  final String? scope;
  /// A mapping of tags assigned to the resource.
  final Map<String, String>? tags;
  /// The visibility of the Maintenance Configuration.
  final String? visibility;
  /// A `window` block as defined below.
  final List<GetConfigurationWindow>? windows;

  /// Creates a new [GetConfigurationResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [inGuestUserPatchMode] The in guest user patch mode.
  /// [installPatches] An `installPatches` block as defined below.
  /// [location] The Azure location where the resource exists.
  /// [name] Optional.
  /// [properties] The properties assigned to the resource.
  /// [resourceGroupName] Optional.
  /// [scope] The scope of the Maintenance Configuration.
  /// [tags] A mapping of tags assigned to the resource.
  /// [visibility] The visibility of the Maintenance Configuration.
  /// [windows] A `window` block as defined below.
  const GetConfigurationResult({
    this.id,
    this.inGuestUserPatchMode,
    this.installPatches,
    this.location,
    this.name,
    this.properties,
    this.resourceGroupName,
    this.scope,
    this.tags,
    this.visibility,
    this.windows,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'inGuestUserPatchMode': ?inGuestUserPatchMode,
      'installPatches': ?(() { final guardedValue = installPatches; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetConfigurationInstallPatch, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'name': ?name,
      'properties': ?properties,
      'resourceGroupName': ?resourceGroupName,
      'scope': ?scope,
      'tags': ?tags,
      'visibility': ?visibility,
      'windows': ?(() { final guardedValue = windows; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetConfigurationWindow, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetConfigurationResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      inGuestUserPatchMode: (() { final guardedValue = map['inGuestUserPatchMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      installPatches: (() { final guardedValue = map['installPatches']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetConfigurationInstallPatch>(guardedValue, (value) => GetConfigurationInstallPatch.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      visibility: (() { final guardedValue = map['visibility']; if (guardedValue == null) return null; return guardedValue as String; })(),
      windows: (() { final guardedValue = map['windows']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetConfigurationWindow>(guardedValue, (value) => GetConfigurationWindow.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
