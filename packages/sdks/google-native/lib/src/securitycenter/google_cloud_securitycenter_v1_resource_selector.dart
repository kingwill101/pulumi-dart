// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource for selecting resource type.
class GoogleCloudSecuritycenterV1ResourceSelector {
  /// The resource types to run the detector on.
  final pulumi.Input<List<String>>? resourceTypes;

  /// Creates a new [GoogleCloudSecuritycenterV1ResourceSelector].
  /// [resourceTypes] The resource types to run the detector on.
  GoogleCloudSecuritycenterV1ResourceSelector({
    this.resourceTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceTypes': ?resourceTypes,
    };
  }

  factory GoogleCloudSecuritycenterV1ResourceSelector.fromMap(Map<String, dynamic> map) {
    return GoogleCloudSecuritycenterV1ResourceSelector(
      resourceTypes: map['resourceTypes'] == null ? null : ((map['resourceTypes'] as List).cast<String>()).input(),
    );
  }
}

