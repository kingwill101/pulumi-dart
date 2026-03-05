// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata pertaining to creation and last modification of the resource.
class ProxyResourceResponseSystemData {
  /// The timestamp of resource creation (UTC).
  final pulumi.Input<String> createdAt;
  /// The identity that created the resource.
  final pulumi.Input<String> createdBy;
  /// The type of identity that created the resource.
  final pulumi.Input<String> createdByType;
  /// The timestamp of the last modification the resource (UTC).
  final pulumi.Input<String> lastModifiedAt;
  /// The identity that last modified the resource.
  final pulumi.Input<String> lastModifiedBy;
  /// The type of identity that last modified the resource.
  final pulumi.Input<String> lastModifiedByType;

  /// Creates a new [ProxyResourceResponseSystemData].
  /// [createdAt] The timestamp of resource creation (UTC).
  /// [createdBy] The identity that created the resource.
  /// [createdByType] The type of identity that created the resource.
  /// [lastModifiedAt] The timestamp of the last modification the resource (UTC).
  /// [lastModifiedBy] The identity that last modified the resource.
  /// [lastModifiedByType] The type of identity that last modified the resource.
  ProxyResourceResponseSystemData({
    required this.createdAt,
    required this.createdBy,
    required this.createdByType,
    required this.lastModifiedAt,
    required this.lastModifiedBy,
    required this.lastModifiedByType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'createdBy': createdBy,
      'createdByType': createdByType,
      'lastModifiedAt': lastModifiedAt,
      'lastModifiedBy': lastModifiedBy,
      'lastModifiedByType': lastModifiedByType,
    };
  }

  factory ProxyResourceResponseSystemData.fromMap(Map<String, dynamic> map) {
    return ProxyResourceResponseSystemData(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      createdBy: pulumi.Input.fromValue(map['createdBy'] as String),
      createdByType: pulumi.Input.fromValue(map['createdByType'] as String),
      lastModifiedAt: pulumi.Input.fromValue(map['lastModifiedAt'] as String),
      lastModifiedBy: pulumi.Input.fromValue(map['lastModifiedBy'] as String),
      lastModifiedByType: pulumi.Input.fromValue(map['lastModifiedByType'] as String),
    );
  }
}

