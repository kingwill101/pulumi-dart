// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSnapshot.
class GetSnapshotResult {
  final String accountName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Azure Region where the NetApp Snapshot exists.
  final String location;
  final String name;
  final String poolName;
  final String resourceGroupName;
  final String volumeName;

  /// Creates a new [GetSnapshotResult].
  /// [accountName] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the NetApp Snapshot exists.
  /// [name] Required.
  /// [poolName] Required.
  /// [resourceGroupName] Required.
  /// [volumeName] Required.
  const GetSnapshotResult({
    required this.accountName,
    required this.id,
    required this.location,
    required this.name,
    required this.poolName,
    required this.resourceGroupName,
    required this.volumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'id': id,
      'location': location,
      'name': name,
      'poolName': poolName,
      'resourceGroupName': resourceGroupName,
      'volumeName': volumeName,
    };
  }

  factory GetSnapshotResult.fromMap(Map<String, dynamic> map) {
    return GetSnapshotResult(
      accountName: map['accountName'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      poolName: map['poolName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      volumeName: map['volumeName'] as String,
    );
  }
}

