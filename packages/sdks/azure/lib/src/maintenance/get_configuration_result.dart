// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_configuration_install_patch.dart';
import 'get_configuration_window.dart';

/// Result data returned by getConfiguration.
class GetConfigurationResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The in guest user patch mode.
  final String inGuestUserPatchMode;

  /// An `install_patches` block as defined below.
  final List<GetConfigurationInstallPatch> installPatches;

  /// The Azure location where the resource exists.
  final String location;
  final String name;

  /// The properties assigned to the resource.
  final Map<String, String> properties;
  final String resourceGroupName;

  /// The scope of the Maintenance Configuration.
  final String scope;

  /// A mapping of tags assigned to the resource.
  final Map<String, String> tags;

  /// The visibility of the Maintenance Configuration.
  final String visibility;

  /// A `window` block as defined below.
  final List<GetConfigurationWindow> windows;

  /// Creates a new [GetConfigurationResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [inGuestUserPatchMode] The in guest user patch mode.
  /// [installPatches] An `install_patches` block as defined below.
  /// [location] The Azure location where the resource exists.
  /// [name] Required.
  /// [properties] The properties assigned to the resource.
  /// [resourceGroupName] Required.
  /// [scope] The scope of the Maintenance Configuration.
  /// [tags] A mapping of tags assigned to the resource.
  /// [visibility] The visibility of the Maintenance Configuration.
  /// [windows] A `window` block as defined below.
  GetConfigurationResult({
    required this.id,
    required this.inGuestUserPatchMode,
    required this.installPatches,
    required this.location,
    required this.name,
    required this.properties,
    required this.resourceGroupName,
    required this.scope,
    required this.tags,
    required this.visibility,
    required this.windows,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'inGuestUserPatchMode': inGuestUserPatchMode,
      'installPatches':
          pulumi.Input.encodeList<
            GetConfigurationInstallPatch,
            Map<String, dynamic>
          >(installPatches, (value) => value.toMap()),
      'location': location,
      'name': name,
      'properties': properties,
      'resourceGroupName': resourceGroupName,
      'scope': scope,
      'tags': tags,
      'visibility': visibility,
      'windows':
          pulumi.Input.encodeList<GetConfigurationWindow, Map<String, dynamic>>(
            windows,
            (value) => value.toMap(),
          ),
    };
  }

  factory GetConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetConfigurationResult(
      id: map['id'] as String,
      inGuestUserPatchMode: map['inGuestUserPatchMode'] as String,
      installPatches: pulumi.Input.decodeList<GetConfigurationInstallPatch>(
        map['installPatches']!,
        (value) => GetConfigurationInstallPatch.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      location: map['location'] as String,
      name: map['name'] as String,
      properties: (map['properties'] as Map).cast<String, String>(),
      resourceGroupName: map['resourceGroupName'] as String,
      scope: map['scope'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      visibility: map['visibility'] as String,
      windows: pulumi.Input.decodeList<GetConfigurationWindow>(
        map['windows']!,
        (value) => GetConfigurationWindow.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
