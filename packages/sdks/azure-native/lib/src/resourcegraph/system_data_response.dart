// ignore_for_file: unused_element, unnecessary_cast


/// Metadata pertaining to creation and last modification of the resource.
class SystemDataResponse {
  /// The timestamp of resource creation (UTC).
  final String? createdAt;
  /// The identity that created the resource.
  final String? createdBy;
  /// The type of identity that created the resource.
  final String? createdByType;
  /// The timestamp of resource last modification (UTC)
  final String? lastModifiedAt;
  /// The identity that last modified the resource.
  final String? lastModifiedBy;
  /// The type of identity that last modified the resource.
  final String? lastModifiedByType;

  /// Creates a new [SystemDataResponse].
  /// [createdAt] The timestamp of resource creation (UTC).
  /// [createdBy] The identity that created the resource.
  /// [createdByType] The type of identity that created the resource.
  /// [lastModifiedAt] The timestamp of resource last modification (UTC)
  /// [lastModifiedBy] The identity that last modified the resource.
  /// [lastModifiedByType] The type of identity that last modified the resource.
  SystemDataResponse({
    this.createdAt,
    this.createdBy,
    this.createdByType,
    this.lastModifiedAt,
    this.lastModifiedBy,
    this.lastModifiedByType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'createdBy': ?createdBy,
      'createdByType': ?createdByType,
      'lastModifiedAt': ?lastModifiedAt,
      'lastModifiedBy': ?lastModifiedBy,
      'lastModifiedByType': ?lastModifiedByType,
    };
  }

  factory SystemDataResponse.fromMap(Map<String, dynamic> map) {
    return SystemDataResponse(
      createdAt: map['createdAt'] == null ? null : map['createdAt'] as String,
      createdBy: map['createdBy'] == null ? null : map['createdBy'] as String,
      createdByType: map['createdByType'] == null ? null : map['createdByType'] as String,
      lastModifiedAt: map['lastModifiedAt'] == null ? null : map['lastModifiedAt'] as String,
      lastModifiedBy: map['lastModifiedBy'] == null ? null : map['lastModifiedBy'] as String,
      lastModifiedByType: map['lastModifiedByType'] == null ? null : map['lastModifiedByType'] as String,
    );
  }
}

