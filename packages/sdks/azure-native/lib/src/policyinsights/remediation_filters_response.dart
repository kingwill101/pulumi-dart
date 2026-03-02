// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The filters that will be applied to determine which resources to remediate.
class RemediationFiltersResponse {
  /// The resource locations that will be remediated.
  final pulumi.Input<List<String>>? locations;
  /// The IDs of the resources that will be remediated. Can specify at most 100 IDs. This filter cannot be used when ReEvaluateCompliance is set to ReEvaluateCompliance, and cannot be empty if provided.
  final pulumi.Input<List<String>>? resourceIds;

  /// Creates a new [RemediationFiltersResponse].
  /// [locations] The resource locations that will be remediated.
  /// [resourceIds] The IDs of the resources that will be remediated. Can specify at most 100 IDs. This filter cannot be used when ReEvaluateCompliance is set to ReEvaluateCompliance, and cannot be empty if provided.
  RemediationFiltersResponse({
    this.locations,
    this.resourceIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locations': ?locations,
      'resourceIds': ?resourceIds,
    };
  }

  factory RemediationFiltersResponse.fromMap(Map<String, dynamic> map) {
    return RemediationFiltersResponse(
      locations: map['locations'] == null ? null : ((map['locations'] as List).cast<String>()).input(),
      resourceIds: map['resourceIds'] == null ? null : ((map['resourceIds'] as List).cast<String>()).input(),
    );
  }
}

