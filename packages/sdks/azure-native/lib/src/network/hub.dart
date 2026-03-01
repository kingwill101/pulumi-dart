// ignore_for_file: unused_element, unnecessary_cast


/// Hub Item.
class Hub {
  /// Resource Id.
  final String? resourceId;
  /// Resource Type.
  final String? resourceType;

  /// Creates a new [Hub].
  /// [resourceId] Resource Id.
  /// [resourceType] Resource Type.
  Hub({
    this.resourceId,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
      'resourceType': ?resourceType,
    };
  }

  factory Hub.fromMap(Map<String, dynamic> map) {
    return Hub(
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
      resourceType: map['resourceType'] == null ? null : map['resourceType'] as String,
    );
  }
}

