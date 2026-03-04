// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OrganizationCustomModuleCustomConfigResourceSelector {
  /// The resource types to run the detector on.
  final pulumi.Input<List<String>> resourceTypes;

  /// Creates a new [OrganizationCustomModuleCustomConfigResourceSelector].
  /// [resourceTypes] The resource types to run the detector on.
  OrganizationCustomModuleCustomConfigResourceSelector({
    required this.resourceTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'resourceTypes': resourceTypes};
  }

  factory OrganizationCustomModuleCustomConfigResourceSelector.fromMap(
    Map<String, dynamic> map,
  ) {
    return OrganizationCustomModuleCustomConfigResourceSelector(
      resourceTypes: pulumi.Input.fromValue(
        (map['resourceTypes'] as List).cast<String>(),
      ),
    );
  }
}
