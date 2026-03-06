// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SharedflowMetaData {
  /// Time at which the API proxy was created, in milliseconds since epoch.
  final pulumi.Input<String>? createdAt;
  /// Time at which the API proxy was most recently modified, in milliseconds since epoch.
  final pulumi.Input<String>? lastModifiedAt;
  /// The type of entity described
  final pulumi.Input<String>? subType;

  /// Creates a new [SharedflowMetaData].
  /// [createdAt] Time at which the API proxy was created, in milliseconds since epoch.
  /// [lastModifiedAt] Time at which the API proxy was most recently modified, in milliseconds since epoch.
  /// [subType] The type of entity described
  const SharedflowMetaData({
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

  factory SharedflowMetaData.fromMap(Map<String, dynamic> map) {
    return SharedflowMetaData(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastModifiedAt: (() { final guardedValue = map['lastModifiedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subType: (() { final guardedValue = map['subType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

