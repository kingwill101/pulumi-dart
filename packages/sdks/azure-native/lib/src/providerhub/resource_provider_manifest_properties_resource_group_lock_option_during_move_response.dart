// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource group lock option during move.
class ResourceProviderManifestPropertiesResourceGroupLockOptionDuringMoveResponse {
  /// The action verb that will be blocked when the resource group is locked during move.
  final pulumi.Input<String>? blockActionVerb;

  /// Creates a new [ResourceProviderManifestPropertiesResourceGroupLockOptionDuringMoveResponse].
  /// [blockActionVerb] The action verb that will be blocked when the resource group is locked during move.
  const ResourceProviderManifestPropertiesResourceGroupLockOptionDuringMoveResponse({
    this.blockActionVerb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockActionVerb': ?blockActionVerb,
    };
  }

  factory ResourceProviderManifestPropertiesResourceGroupLockOptionDuringMoveResponse.fromMap(Map<String, dynamic> map) {
    return ResourceProviderManifestPropertiesResourceGroupLockOptionDuringMoveResponse(
      blockActionVerb: (() { final guardedValue = map['blockActionVerb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
