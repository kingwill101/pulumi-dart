// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigResourceSelector {
  /// The resource types to run the detector on.
  final pulumi.Input<List<String>> resourceTypes;

  /// Creates a new [ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigResourceSelector].
  /// [resourceTypes] The resource types to run the detector on.
  ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigResourceSelector({
    required this.resourceTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'resourceTypes': resourceTypes};
  }

  factory ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigResourceSelector.fromMap(
    Map<String, dynamic> map,
  ) {
    return ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigResourceSelector(
      resourceTypes: pulumi.Input.fromValue(
        (map['resourceTypes'] as List).cast<String>(),
      ),
    );
  }
}
