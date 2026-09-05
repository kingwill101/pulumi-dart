// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSnapshot.
class GetSnapshotResult {
  final String? accountName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Azure Region where the NetApp Snapshot exists.
  final String? location;
  final String? name;
  final String? poolName;
  final String? resourceGroupName;
  final String? volumeName;

  /// Creates a new [GetSnapshotResult].
  /// [accountName] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the NetApp Snapshot exists.
  /// [name] Optional.
  /// [poolName] Optional.
  /// [resourceGroupName] Optional.
  /// [volumeName] Optional.
  const GetSnapshotResult({
    this.accountName,
    this.id,
    this.location,
    this.name,
    this.poolName,
    this.resourceGroupName,
    this.volumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'poolName': ?poolName,
      'resourceGroupName': ?resourceGroupName,
      'volumeName': ?volumeName,
    };
  }

  factory GetSnapshotResult.fromMap(Map<String, dynamic> map) {
    return GetSnapshotResult(
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      poolName: (() { final guardedValue = map['poolName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      volumeName: (() { final guardedValue = map['volumeName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
