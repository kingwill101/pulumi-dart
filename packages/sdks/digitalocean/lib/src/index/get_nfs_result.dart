// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNfs.
class GetNfsResult {
  /// The host IP of the NFS server accessible from the associated VPC.
  final String host;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The mount path for accessing the NFS share.
  final String mountPath;
  /// Name of the NFS share.
  final String name;
  /// The performance tier of the NFS share (`standard` or `high`).
  final String performanceTier;
  /// The region where the NFS share is located.
  final String? region;
  /// The size of the NFS share in GiB.
  final int size;
  /// The current status of the NFS share.
  final String status;
  final List<String> tags;

  /// Creates a new [GetNfsResult].
  /// [host] The host IP of the NFS server accessible from the associated VPC.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [mountPath] The mount path for accessing the NFS share.
  /// [name] Name of the NFS share.
  /// [performanceTier] The performance tier of the NFS share (`standard` or `high`).
  /// [region] The region where the NFS share is located.
  /// [size] The size of the NFS share in GiB.
  /// [status] The current status of the NFS share.
  /// [tags] Required.
  GetNfsResult({
    required this.host,
    required this.id,
    required this.mountPath,
    required this.name,
    required this.performanceTier,
    this.region,
    required this.size,
    required this.status,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': host,
      'id': id,
      'mountPath': mountPath,
      'name': name,
      'performanceTier': performanceTier,
      'region': ?region,
      'size': size,
      'status': status,
      'tags': tags,
    };
  }

  factory GetNfsResult.fromMap(Map<String, dynamic> map) {
    return GetNfsResult(
      host: map['host'] as String,
      id: map['id'] as String,
      mountPath: map['mountPath'] as String,
      name: map['name'] as String,
      performanceTier: map['performanceTier'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      size: map['size'] as int,
      status: map['status'] as String,
      tags: (map['tags'] as List).cast<String>(),
    );
  }
}

