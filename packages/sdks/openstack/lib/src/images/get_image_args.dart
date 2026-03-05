// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_images_get_image_get_image_args_doc}
/// Arguments for getImage.
/// {@endtemplate}
/// {@macro pulumi_images_get_image_get_image_args_doc}
class GetImageArgs {
  /// The container format of the image.
  final pulumi.Input<String>? containerFormat;
  /// The disk format of the image.
  final pulumi.Input<String>? diskFormat;
  /// Whether or not the image is hidden from public list.
  final pulumi.Input<bool>? hidden;
  /// The status of the image. Must be one of
  /// "accepted", "pending", "rejected", or "all".
  final pulumi.Input<String>? memberStatus;
  /// If more than one result is returned, use the most
  /// recent image.
  final pulumi.Input<bool>? mostRecent;
  /// The name of the image. Cannot be used simultaneously with
  /// `name_regex`.
  final pulumi.Input<String>? name;
  /// The regular expressian of the name of the image.
  /// Cannot be used simultaneously with `name`. Unlike filtering by `name` the
  /// `name_regex` filtering does by client on the result of OpenStack search
  /// query.
  final pulumi.Input<String>? nameRegex;
  /// The owner (UUID) of the image.
  final pulumi.Input<String>? owner;
  /// a map of key/value pairs to match an image with.
  /// All specified properties must be matched. Unlike other options filtering by
  /// `properties` does by client on the result of OpenStack search query.
  /// Filtering is applied if server responce contains at least 2 images. In case
  /// there is only one image the `properties` ignores.
  final pulumi.Input<Map<String, String>>? properties;
  /// The region in which to obtain the V2 Glance client. A
  /// Glance client is needed to create an Image that can be used with a compute
  /// instance. If omitted, the `region` argument of the provider is used.
  final pulumi.Input<String>? region;
  /// The maximum size (in bytes) of the image to return.
  final pulumi.Input<int>? sizeMax;
  /// The minimum size (in bytes) of the image to return.
  final pulumi.Input<int>? sizeMin;
  /// Sorts the response by one or more attribute and sort
  /// direction combinations. You can also set multiple sort keys and directions.
  /// Default direction is `desc`. Use the comma (,) character to separate multiple
  /// values. For example expression `sort = "name:asc,status"` sorts ascending by
  /// name and descending by status.
  final pulumi.Input<String>? sort;
  /// Search for images with a specific tag.
  final pulumi.Input<String>? tag;
  /// A list of tags required to be set on the image (all
  /// specified tags must be in the images tag list for it to be matched).
  final pulumi.Input<List<String>>? tags;
  /// The visibility of the image. Must be one of
  /// "public", "private", "community", or "shared". Defaults to "private".
  final pulumi.Input<String>? visibility;

  /// Creates a new [GetImageArgs].
  /// [containerFormat] The container format of the image.
  /// [diskFormat] The disk format of the image.
  /// [hidden] Whether or not the image is hidden from public list.
  /// [memberStatus] The status of the image. Must be one of
  /// [mostRecent] If more than one result is returned, use the most
  /// [name] The name of the image. Cannot be used simultaneously with
  /// [nameRegex] The regular expressian of the name of the image.
  /// [owner] The owner (UUID) of the image.
  /// [properties] a map of key/value pairs to match an image with.
  /// [region] The region in which to obtain the V2 Glance client. A
  /// [sizeMax] The maximum size (in bytes) of the image to return.
  /// [sizeMin] The minimum size (in bytes) of the image to return.
  /// [sort] Sorts the response by one or more attribute and sort
  /// [tag] Search for images with a specific tag.
  /// [tags] A list of tags required to be set on the image (all
  /// [visibility] The visibility of the image. Must be one of
  GetImageArgs({
    this.containerFormat,
    this.diskFormat,
    this.hidden,
    this.memberStatus,
    this.mostRecent,
    this.name,
    this.nameRegex,
    this.owner,
    this.properties,
    this.region,
    this.sizeMax,
    this.sizeMin,
    this.sort,
    this.tag,
    this.tags,
    this.visibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerFormat': ?containerFormat,
      'diskFormat': ?diskFormat,
      'hidden': ?hidden,
      'memberStatus': ?memberStatus,
      'mostRecent': ?mostRecent,
      'name': ?name,
      'nameRegex': ?nameRegex,
      'owner': ?owner,
      'properties': ?properties,
      'region': ?region,
      'sizeMax': ?sizeMax,
      'sizeMin': ?sizeMin,
      'sort': ?sort,
      'tag': ?tag,
      'tags': ?tags,
      'visibility': ?visibility,
    };
  }

  factory GetImageArgs.fromMap(Map<String, dynamic> map) {
    return GetImageArgs(
      containerFormat: (() { final guardedValue = map['containerFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskFormat: (() { final guardedValue = map['diskFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hidden: (() { final guardedValue = map['hidden']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      memberStatus: (() { final guardedValue = map['memberStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mostRecent: (() { final guardedValue = map['mostRecent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      owner: (() { final guardedValue = map['owner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sizeMax: (() { final guardedValue = map['sizeMax']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sizeMin: (() { final guardedValue = map['sizeMin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sort: (() { final guardedValue = map['sort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      visibility: (() { final guardedValue = map['visibility']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

