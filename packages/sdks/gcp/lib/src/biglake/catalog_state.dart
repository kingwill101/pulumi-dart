// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Catalog resources.
class CatalogState {
  /// Output only. The creation time of the catalog. A timestamp in RFC3339 UTC
  /// "Zulu" format, with nanosecond resolution and up to nine fractional
  /// digits.
  final pulumi.Input<String>? createTime;
  /// Output only. The deletion time of the catalog. Only set after the catalog
  /// is deleted. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
  /// resolution and up to nine fractional digits.
  final pulumi.Input<String>? deleteTime;
  /// Output only. The time when this catalog is considered expired. Only set
  /// after the catalog is deleted. Only set after the catalog is deleted.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits.
  final pulumi.Input<String>? expireTime;
  /// The geographic location where the Catalog should reside.
  final pulumi.Input<String>? location;
  /// The name of the Catalog. Format:
  /// projects/{project_id_or_number}/locations/{locationId}/catalogs/{catalogId}
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Output only. The last modification time of the catalog. A timestamp in
  /// RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [CatalogState].
  /// [createTime] Output only. The creation time of the catalog. A timestamp in RFC3339 UTC
  /// [deleteTime] Output only. The deletion time of the catalog. Only set after the catalog
  /// [expireTime] Output only. The time when this catalog is considered expired. Only set
  /// [location] The geographic location where the Catalog should reside.
  /// [name] The name of the Catalog. Format:
  /// [project] The ID of the project in which the resource belongs.
  /// [updateTime] Output only. The last modification time of the catalog. A timestamp in
  CatalogState({
    this.createTime,
    this.deleteTime,
    this.expireTime,
    this.location,
    this.name,
    this.project,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deleteTime': ?deleteTime,
      'expireTime': ?expireTime,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'updateTime': ?updateTime,
    };
  }

  factory CatalogState.fromMap(Map<String, dynamic> map) {
    return CatalogState(
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      deleteTime: map['deleteTime'] == null ? null : (map['deleteTime'] as String).input(),
      expireTime: map['expireTime'] == null ? null : (map['expireTime'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

