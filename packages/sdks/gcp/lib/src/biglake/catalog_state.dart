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
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? deleteTime,
    pulumi.Output<String>? expireTime,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      deleteTime = pulumi.Input.asOptionalInput<String>(deleteTime),
      expireTime = pulumi.Input.asOptionalInput<String>(expireTime),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      deleteTime: map['deleteTime'] == null ? null : pulumi.Output.create<String>(map['deleteTime'] as String),
      expireTime: map['expireTime'] == null ? null : pulumi.Output.create<String>(map['expireTime'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

