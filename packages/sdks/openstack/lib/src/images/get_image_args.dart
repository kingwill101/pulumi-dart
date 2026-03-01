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
    pulumi.Output<String>? containerFormat,
    pulumi.Output<String>? diskFormat,
    pulumi.Output<bool>? hidden,
    pulumi.Output<String>? memberStatus,
    pulumi.Output<bool>? mostRecent,
    pulumi.Output<String>? name,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? owner,
    pulumi.Output<Map<String, String>>? properties,
    pulumi.Output<String>? region,
    pulumi.Output<int>? sizeMax,
    pulumi.Output<int>? sizeMin,
    pulumi.Output<String>? sort,
    pulumi.Output<String>? tag,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<String>? visibility,
  }) :
      containerFormat = pulumi.Input.asOptionalInput<String>(containerFormat),
      diskFormat = pulumi.Input.asOptionalInput<String>(diskFormat),
      hidden = pulumi.Input.asOptionalInput<bool>(hidden),
      memberStatus = pulumi.Input.asOptionalInput<String>(memberStatus),
      mostRecent = pulumi.Input.asOptionalInput<bool>(mostRecent),
      name = pulumi.Input.asOptionalInput<String>(name),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      owner = pulumi.Input.asOptionalInput<String>(owner),
      properties = pulumi.Input.asOptionalInput<Map<String, String>>(properties),
      region = pulumi.Input.asOptionalInput<String>(region),
      sizeMax = pulumi.Input.asOptionalInput<int>(sizeMax),
      sizeMin = pulumi.Input.asOptionalInput<int>(sizeMin),
      sort = pulumi.Input.asOptionalInput<String>(sort),
      tag = pulumi.Input.asOptionalInput<String>(tag),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      visibility = pulumi.Input.asOptionalInput<String>(visibility);

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
      containerFormat: map['containerFormat'] == null ? null : pulumi.Output.create<String>(map['containerFormat'] as String),
      diskFormat: map['diskFormat'] == null ? null : pulumi.Output.create<String>(map['diskFormat'] as String),
      hidden: map['hidden'] == null ? null : pulumi.Output.create<bool>(map['hidden'] as bool),
      memberStatus: map['memberStatus'] == null ? null : pulumi.Output.create<String>(map['memberStatus'] as String),
      mostRecent: map['mostRecent'] == null ? null : pulumi.Output.create<bool>(map['mostRecent'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      owner: map['owner'] == null ? null : pulumi.Output.create<String>(map['owner'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<Map<String, String>>((map['properties'] as Map).cast<String, String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      sizeMax: map['sizeMax'] == null ? null : pulumi.Output.create<int>(map['sizeMax'] as int),
      sizeMin: map['sizeMin'] == null ? null : pulumi.Output.create<int>(map['sizeMin'] as int),
      sort: map['sort'] == null ? null : pulumi.Output.create<String>(map['sort'] as String),
      tag: map['tag'] == null ? null : pulumi.Output.create<String>(map['tag'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      visibility: map['visibility'] == null ? null : pulumi.Output.create<String>(map['visibility'] as String),
    );
  }
}

