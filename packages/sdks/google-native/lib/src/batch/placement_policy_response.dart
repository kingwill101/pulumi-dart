// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PlacementPolicy describes a group placement policy for the VMs controlled by this AllocationPolicy.
class PlacementPolicyResponse {
  /// UNSPECIFIED vs. COLLOCATED (default UNSPECIFIED). Use COLLOCATED when you want VMs to be located close to each other for low network latency between the VMs. No placement policy will be generated when collocation is UNSPECIFIED.
  final pulumi.Input<String> collocation;
  /// When specified, causes the job to fail if more than max_distance logical switches are required between VMs. Batch uses the most compact possible placement of VMs even when max_distance is not specified. An explicit max_distance makes that level of compactness a strict requirement. Not yet implemented
  final pulumi.Input<String> maxDistance;

  /// Creates a new [PlacementPolicyResponse].
  /// [collocation] UNSPECIFIED vs. COLLOCATED (default UNSPECIFIED). Use COLLOCATED when you want VMs to be located close to each other for low network latency between the VMs. No placement policy will be generated when collocation is UNSPECIFIED.
  /// [maxDistance] When specified, causes the job to fail if more than max_distance logical switches are required between VMs. Batch uses the most compact possible placement of VMs even when max_distance is not specified. An explicit max_distance makes that level of compactness a strict requirement. Not yet implemented
  const PlacementPolicyResponse({
    required this.collocation,
    required this.maxDistance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collocation': collocation,
      'maxDistance': maxDistance,
    };
  }

  factory PlacementPolicyResponse.fromMap(Map<String, dynamic> map) {
    return PlacementPolicyResponse(
      collocation: pulumi.Input.fromValue(map['collocation'] as String),
      maxDistance: pulumi.Input.fromValue(map['maxDistance'] as String),
    );
  }
}

