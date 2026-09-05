// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAccessPolicyAssignment.
class GetAccessPolicyAssignmentResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? managedRedisName;
  final String? objectId;
  final String? resourceGroupName;

  /// Creates a new [GetAccessPolicyAssignmentResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [managedRedisName] Optional.
  /// [objectId] Optional.
  /// [resourceGroupName] Optional.
  const GetAccessPolicyAssignmentResult({
    this.id,
    this.managedRedisName,
    this.objectId,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'managedRedisName': ?managedRedisName,
      'objectId': ?objectId,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory GetAccessPolicyAssignmentResult.fromMap(Map<String, dynamic> map) {
    return GetAccessPolicyAssignmentResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedRedisName: (() { final guardedValue = map['managedRedisName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
