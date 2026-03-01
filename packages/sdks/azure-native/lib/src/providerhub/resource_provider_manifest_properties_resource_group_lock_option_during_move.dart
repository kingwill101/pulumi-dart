// ignore_for_file: unused_element, unnecessary_cast


/// Resource group lock option during move.
class ResourceProviderManifestPropertiesResourceGroupLockOptionDuringMove {
  /// The action verb that will be blocked when the resource group is locked during move.
  final String? blockActionVerb;

  /// Creates a new [ResourceProviderManifestPropertiesResourceGroupLockOptionDuringMove].
  /// [blockActionVerb] The action verb that will be blocked when the resource group is locked during move.
  ResourceProviderManifestPropertiesResourceGroupLockOptionDuringMove({
    this.blockActionVerb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockActionVerb': ?blockActionVerb,
    };
  }

  factory ResourceProviderManifestPropertiesResourceGroupLockOptionDuringMove.fromMap(Map<String, dynamic> map) {
    return ResourceProviderManifestPropertiesResourceGroupLockOptionDuringMove(
      blockActionVerb: map['blockActionVerb'] == null ? null : map['blockActionVerb'] as String,
    );
  }
}

