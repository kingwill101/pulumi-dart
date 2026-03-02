// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata pertaining to creation and last modification of the resource.
class SystemDataResponse {
  /// The timestamp of resource creation (UTC).
  final pulumi.Input<String>? createdAt;
  /// The identity that created the resource.
  final pulumi.Input<String>? createdBy;
  /// The type of identity that created the resource.
  final pulumi.Input<String>? createdByType;
  /// The type of identity that last modified the resource.
  final pulumi.Input<String>? lastModifiedAt;
  /// The identity that last modified the resource.
  final pulumi.Input<String>? lastModifiedBy;
  /// The type of identity that last modified the resource.
  final pulumi.Input<String>? lastModifiedByType;

  /// Creates a new [SystemDataResponse].
  /// [createdAt] The timestamp of resource creation (UTC).
  /// [createdBy] The identity that created the resource.
  /// [createdByType] The type of identity that created the resource.
  /// [lastModifiedAt] The type of identity that last modified the resource.
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
      createdAt: map['createdAt'] == null ? null : (map['createdAt']! as String).input(),
      createdBy: map['createdBy'] == null ? null : (map['createdBy']! as String).input(),
      createdByType: map['createdByType'] == null ? null : (map['createdByType']! as String).input(),
      lastModifiedAt: map['lastModifiedAt'] == null ? null : (map['lastModifiedAt']! as String).input(),
      lastModifiedBy: map['lastModifiedBy'] == null ? null : (map['lastModifiedBy']! as String).input(),
      lastModifiedByType: map['lastModifiedByType'] == null ? null : (map['lastModifiedByType']! as String).input(),
    );
  }
}

