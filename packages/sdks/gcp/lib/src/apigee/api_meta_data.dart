// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiMetaData {
  /// Time at which the API proxy was created, in milliseconds since epoch.
  final pulumi.Input<String>? createdAt;
  /// Time at which the API proxy was most recently modified, in milliseconds since epoch.
  final pulumi.Input<String>? lastModifiedAt;
  /// The type of entity described
  final pulumi.Input<String>? subType;

  /// Creates a new [ApiMetaData].
  /// [createdAt] Time at which the API proxy was created, in milliseconds since epoch.
  /// [lastModifiedAt] Time at which the API proxy was most recently modified, in milliseconds since epoch.
  /// [subType] The type of entity described
  ApiMetaData({
    this.createdAt,
    this.lastModifiedAt,
    this.subType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'lastModifiedAt': ?lastModifiedAt,
      'subType': ?subType,
    };
  }

  factory ApiMetaData.fromMap(Map<String, dynamic> map) {
    return ApiMetaData(
      createdAt: map['createdAt'] == null ? null : (map['createdAt'] as String).input(),
      lastModifiedAt: map['lastModifiedAt'] == null ? null : (map['lastModifiedAt'] as String).input(),
      subType: map['subType'] == null ? null : (map['subType'] as String).input(),
    );
  }
}

