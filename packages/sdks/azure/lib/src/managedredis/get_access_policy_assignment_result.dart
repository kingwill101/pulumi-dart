// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getAccessPolicyAssignment.
class GetAccessPolicyAssignmentResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String managedRedisName;
  final String objectId;
  final String resourceGroupName;

  /// Creates a new [GetAccessPolicyAssignmentResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [managedRedisName] Required.
  /// [objectId] Required.
  /// [resourceGroupName] Required.
  GetAccessPolicyAssignmentResult({
    required this.id,
    required this.managedRedisName,
    required this.objectId,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'managedRedisName': managedRedisName,
      'objectId': objectId,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAccessPolicyAssignmentResult.fromMap(Map<String, dynamic> map) {
    return GetAccessPolicyAssignmentResult(
      id: map['id'] as String,
      managedRedisName: map['managedRedisName'] as String,
      objectId: map['objectId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}
