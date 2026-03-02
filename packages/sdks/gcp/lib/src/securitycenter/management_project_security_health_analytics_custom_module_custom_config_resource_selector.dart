// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigResourceSelector {
  /// The resource types to run the detector on.
  final pulumi.Input<List<String>> resourceTypes;

  /// Creates a new [ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigResourceSelector].
  /// [resourceTypes] The resource types to run the detector on.
  ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigResourceSelector({
    required this.resourceTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceTypes': resourceTypes,
    };
  }

  factory ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigResourceSelector.fromMap(Map<String, dynamic> map) {
    return ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigResourceSelector(
      resourceTypes: ((map['resourceTypes'] as List).cast<String>()).input(),
    );
  }
}

