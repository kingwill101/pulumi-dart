// ignore_for_file: unused_element, unnecessary_cast


/// Azure Managed Disk to attach to the Disk Pool.
class DiskResponse {
  /// Unique Azure Resource ID of the Managed Disk.
  final String id;

  /// Creates a new [DiskResponse].
  /// [id] Unique Azure Resource ID of the Managed Disk.
  DiskResponse({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory DiskResponse.fromMap(Map<String, dynamic> map) {
    return DiskResponse(
      id: map['id'] as String,
    );
  }
}

