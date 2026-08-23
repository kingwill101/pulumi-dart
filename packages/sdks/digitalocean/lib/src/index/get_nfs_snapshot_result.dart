// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNfsSnapshot.
class GetNfsSnapshotResult {
  final String createdAt;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? name;
  final String? nameRegex;
  final String? region;
  final String shareId;
  final int size;
  final int status;
  final List<String> tags;

  /// Creates a new [GetNfsSnapshotResult].
  /// [createdAt] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [nameRegex] Optional.
  /// [region] Optional.
  /// [shareId] Required.
  /// [size] Required.
  /// [status] Required.
  /// [tags] Required.
  const GetNfsSnapshotResult({
    required this.createdAt,
    required this.id,
    this.name,
    this.nameRegex,
    this.region,
    required this.shareId,
    required this.size,
    required this.status,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'id': id,
      'name': ?name,
      'nameRegex': ?nameRegex,
      'region': ?region,
      'shareId': shareId,
      'size': size,
      'status': status,
      'tags': tags,
    };
  }

  factory GetNfsSnapshotResult.fromMap(Map<String, dynamic> map) {
    return GetNfsSnapshotResult(
      createdAt: map['createdAt'] as String,
      id: map['id'] as String,
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      shareId: map['shareId'] as String,
      size: map['size'] as int,
      status: map['status'] as int,
      tags: (map['tags'] as List).cast<String>(),
    );
  }
}
