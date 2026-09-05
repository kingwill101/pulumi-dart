// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AppArmorProfile defines a pod or container's AppArmor settings.
class AppArmorProfilePatch {
  /// localhostProfile indicates a profile loaded on the node that should be used. The profile must be preconfigured on the node to work. Must match the loaded name of the profile. Must be set if and only if type is "Localhost".
  final pulumi.Input<String?>? localhostProfile;
  /// type indicates which kind of AppArmor profile will be applied. Valid options are:
  /// Localhost - a profile pre-loaded on the node.
  /// RuntimeDefault - the container runtime's default profile.
  /// Unconfined - no AppArmor enforcement.
  final pulumi.Input<String?>? type;

  /// Creates a new [AppArmorProfilePatch].
  /// [localhostProfile] localhostProfile indicates a profile loaded on the node that should be used. The profile must be preconfigured on the node to work. Must match the loaded name of the profile. Must be set if and only if type is "Localhost".
  /// [type] type indicates which kind of AppArmor profile will be applied. Valid options are:
  const AppArmorProfilePatch({
    this.localhostProfile,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localhostProfile': ?localhostProfile,
      'type': ?type,
    };
  }

  factory AppArmorProfilePatch.fromMap(Map<String, dynamic> map) {
    return AppArmorProfilePatch(
      localhostProfile: (() { final guardedValue = map['localhostProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
