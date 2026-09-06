// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata pertaining to creation and last modification of the resource.
class SystemMetadataResponse {
  /// The timestamp of resource creation (UTC).
  final pulumi.Input<String?>? createdAt;
  /// The identity that created the resource.
  final pulumi.Input<String?>? createdBy;
  /// The type of identity that created the resource.
  final pulumi.Input<String?>? createdByType;
  /// The type of identity that last modified the resource.
  final pulumi.Input<String?>? lastModifiedAt;
  /// The identity that last modified the resource.
  final pulumi.Input<String?>? lastModifiedBy;
  /// The type of identity that last modified the resource.
  final pulumi.Input<String?>? lastModifiedByType;

  /// Creates a new [SystemMetadataResponse].
  /// [createdAt] The timestamp of resource creation (UTC).
  /// [createdBy] The identity that created the resource.
  /// [createdByType] The type of identity that created the resource.
  /// [lastModifiedAt] The type of identity that last modified the resource.
  /// [lastModifiedBy] The identity that last modified the resource.
  /// [lastModifiedByType] The type of identity that last modified the resource.
  const SystemMetadataResponse({
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

  factory SystemMetadataResponse.fromMap(Map<String, dynamic> map) {
    return SystemMetadataResponse(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdByType: (() { final guardedValue = map['createdByType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastModifiedAt: (() { final guardedValue = map['lastModifiedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastModifiedBy: (() { final guardedValue = map['lastModifiedBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastModifiedByType: (() { final guardedValue = map['lastModifiedByType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
