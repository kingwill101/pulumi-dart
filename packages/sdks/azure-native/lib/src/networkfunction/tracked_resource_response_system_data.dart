// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata pertaining to creation and last modification of the resource.
class TrackedResourceResponseSystemData {
  /// The timestamp of resource creation (UTC).
  final pulumi.Input<String>? createdAt;
  /// The identity that created the resource.
  final pulumi.Input<String>? createdBy;
  /// The type of identity that created the resource.
  final pulumi.Input<String>? createdByType;
  /// The identity that last modified the resource.
  final pulumi.Input<String>? lastModifiedBy;
  /// The type of identity that last modified the resource.
  final pulumi.Input<String>? lastModifiedByType;

  /// Creates a new [TrackedResourceResponseSystemData].
  /// [createdAt] The timestamp of resource creation (UTC).
  /// [createdBy] The identity that created the resource.
  /// [createdByType] The type of identity that created the resource.
  /// [lastModifiedBy] The identity that last modified the resource.
  /// [lastModifiedByType] The type of identity that last modified the resource.
  const TrackedResourceResponseSystemData({
    this.createdAt,
    this.createdBy,
    this.createdByType,
    this.lastModifiedBy,
    this.lastModifiedByType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'createdBy': ?createdBy,
      'createdByType': ?createdByType,
      'lastModifiedBy': ?lastModifiedBy,
      'lastModifiedByType': ?lastModifiedByType,
    };
  }

  factory TrackedResourceResponseSystemData.fromMap(Map<String, dynamic> map) {
    return TrackedResourceResponseSystemData(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdByType: (() { final guardedValue = map['createdByType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastModifiedBy: (() { final guardedValue = map['lastModifiedBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastModifiedByType: (() { final guardedValue = map['lastModifiedByType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

