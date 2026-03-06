// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FolderCustomModuleCustomConfigResourceSelector {
  /// The resource types to run the detector on.
  final pulumi.Input<List<String>> resourceTypes;

  /// Creates a new [FolderCustomModuleCustomConfigResourceSelector].
  /// [resourceTypes] The resource types to run the detector on.
  const FolderCustomModuleCustomConfigResourceSelector({
    required this.resourceTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceTypes': resourceTypes,
    };
  }

  factory FolderCustomModuleCustomConfigResourceSelector.fromMap(Map<String, dynamic> map) {
    return FolderCustomModuleCustomConfigResourceSelector(
      resourceTypes: pulumi.Input.fromValue((map['resourceTypes'] as List).cast<String>()),
    );
  }
}

