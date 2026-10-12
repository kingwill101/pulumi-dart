// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNfs.
class GetNfsResult {
  /// The host IP of the NFS server accessible from the associated VPC.
  final String? host;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The mount path for accessing the NFS share.
  final String? mountPath;
  /// Name of the NFS share.
  final String? name;
  /// The performance tier of the NFS share (`standard` or `high`).
  final String? performanceTier;
  /// The region where the NFS share is located.
  final String? region;
  /// The size of the NFS share in GiB.
  final int? size;
  /// The current status of the NFS share.
  final String? status;
  final List<String>? tags;

  /// Creates a new [GetNfsResult].
  /// [host] The host IP of the NFS server accessible from the associated VPC.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [mountPath] The mount path for accessing the NFS share.
  /// [name] Name of the NFS share.
  /// [performanceTier] The performance tier of the NFS share (`standard` or `high`).
  /// [region] The region where the NFS share is located.
  /// [size] The size of the NFS share in GiB.
  /// [status] The current status of the NFS share.
  /// [tags] Optional.
  const GetNfsResult({
    this.host,
    this.id,
    this.mountPath,
    this.name,
    this.performanceTier,
    this.region,
    this.size,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?host,
      'id': ?id,
      'mountPath': ?mountPath,
      'name': ?name,
      'performanceTier': ?performanceTier,
      'region': ?region,
      'size': ?size,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetNfsResult.fromMap(Map<String, dynamic> map) {
    return GetNfsResult(
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mountPath: (() { final guardedValue = map['mountPath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      performanceTier: (() { final guardedValue = map['performanceTier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
