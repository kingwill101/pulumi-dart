// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_application_version_manage_action.dart';
import 'gallery_application_version_source.dart';
import 'gallery_application_version_target_region.dart';

/// {@template pulumi_compute_gallery_application_version_gallery_application_version_args_doc}
/// The set of arguments for GalleryApplicationVersion.
/// {@endtemplate}
/// {@macro pulumi_compute_gallery_application_version_gallery_application_version_args_doc}
class GalleryApplicationVersionArgs {
  /// Specifies the name of the config file on the VM. Changing this forces a new resource to be created.
  final pulumi.Input<String>? configFile;
  /// Should the Gallery Application reports health. Defaults to `false`.
  final pulumi.Input<bool>? enableHealthCheck;
  /// The end of life date in RFC3339 format of the Gallery Application Version.
  final pulumi.Input<String>? endOfLifeDate;
  /// Should the Gallery Application Version be excluded from the `latest` filter? If set to `true` this Gallery Application Version won't be returned for the `latest` version. Defaults to `false`.
  final pulumi.Input<bool>? excludeFromLatest;
  /// The ID of the Gallery Application. Changing this forces a new resource to be created.
  final pulumi.Input<String> galleryApplicationId;
  /// The Azure Region where the Gallery Application Version exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// A `manage_action` block as defined below.
  final pulumi.Input<GalleryApplicationVersionManageAction> manageAction;
  /// The version name of the Gallery Application Version, such as `1.0.0`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the package file on the VM. Changing this forces a new resource to be created.
  final pulumi.Input<String>? packageFile;
  /// A `source` block as defined below.
  final pulumi.Input<GalleryApplicationVersionSource> source;
  /// A mapping of tags to assign to the Gallery Application Version.
  final pulumi.Input<Map<String, String>>? tags;
  /// One or more `target_region` blocks as defined below.
  final pulumi.Input<List<GalleryApplicationVersionTargetRegion>> targetRegions;

  /// Creates a new [GalleryApplicationVersionArgs].
  /// [configFile] Specifies the name of the config file on the VM. Changing this forces a new resource to be created.
  /// [enableHealthCheck] Should the Gallery Application reports health. Defaults to `false`.
  /// [endOfLifeDate] The end of life date in RFC3339 format of the Gallery Application Version.
  /// [excludeFromLatest] Should the Gallery Application Version be excluded from the `latest` filter? If set to `true` this Gallery Application Version won't be returned for the `latest` version. Defaults to `false`.
  /// [galleryApplicationId] The ID of the Gallery Application. Changing this forces a new resource to be created.
  /// [location] The Azure Region where the Gallery Application Version exists. Changing this forces a new resource to be created.
  /// [manageAction] A `manage_action` block as defined below.
  /// [name] The version name of the Gallery Application Version, such as `1.0.0`. Changing this forces a new resource to be created.
  /// [packageFile] Specifies the name of the package file on the VM. Changing this forces a new resource to be created.
  /// [source] A `source` block as defined below.
  /// [tags] A mapping of tags to assign to the Gallery Application Version.
  /// [targetRegions] One or more `target_region` blocks as defined below.
  GalleryApplicationVersionArgs({
    pulumi.Output<String>? configFile,
    pulumi.Output<bool>? enableHealthCheck,
    pulumi.Output<String>? endOfLifeDate,
    pulumi.Output<bool>? excludeFromLatest,
    required pulumi.Output<String> galleryApplicationId,
    pulumi.Output<String>? location,
    required pulumi.Output<GalleryApplicationVersionManageAction> manageAction,
    pulumi.Output<String>? name,
    pulumi.Output<String>? packageFile,
    required pulumi.Output<GalleryApplicationVersionSource> source,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<List<GalleryApplicationVersionTargetRegion>> targetRegions,
  }) :
      configFile = pulumi.Input.asOptionalInput<String>(configFile),
      enableHealthCheck = pulumi.Input.asOptionalInput<bool>(enableHealthCheck),
      endOfLifeDate = pulumi.Input.asOptionalInput<String>(endOfLifeDate),
      excludeFromLatest = pulumi.Input.asOptionalInput<bool>(excludeFromLatest),
      galleryApplicationId = pulumi.Input.asInput<String>(galleryApplicationId),
      location = pulumi.Input.asOptionalInput<String>(location),
      manageAction = pulumi.Input.asInput<GalleryApplicationVersionManageAction>(manageAction),
      name = pulumi.Input.asOptionalInput<String>(name),
      packageFile = pulumi.Input.asOptionalInput<String>(packageFile),
      source = pulumi.Input.asInput<GalleryApplicationVersionSource>(source),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      targetRegions = pulumi.Input.asInput<List<GalleryApplicationVersionTargetRegion>>(targetRegions);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configFile': ?configFile,
      'enableHealthCheck': ?enableHealthCheck,
      'endOfLifeDate': ?endOfLifeDate,
      'excludeFromLatest': ?excludeFromLatest,
      'galleryApplicationId': galleryApplicationId,
      'location': ?location,
      'manageAction': pulumi.Input.mapInputValue<GalleryApplicationVersionManageAction, Map<String, dynamic>>(manageAction, (value) => value.toMap()),
      'name': ?name,
      'packageFile': ?packageFile,
      'source': pulumi.Input.mapInputValue<GalleryApplicationVersionSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'tags': ?tags,
      'targetRegions': pulumi.Input.mapInputValue<List<GalleryApplicationVersionTargetRegion>, List<Map<String, dynamic>>>(targetRegions, (value) => pulumi.Input.encodeList<GalleryApplicationVersionTargetRegion, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GalleryApplicationVersionArgs.fromMap(Map<String, dynamic> map) {
    return GalleryApplicationVersionArgs(
      configFile: map['configFile'] == null ? null : pulumi.Output.create<String>(map['configFile'] as String),
      enableHealthCheck: map['enableHealthCheck'] == null ? null : pulumi.Output.create<bool>(map['enableHealthCheck'] as bool),
      endOfLifeDate: map['endOfLifeDate'] == null ? null : pulumi.Output.create<String>(map['endOfLifeDate'] as String),
      excludeFromLatest: map['excludeFromLatest'] == null ? null : pulumi.Output.create<bool>(map['excludeFromLatest'] as bool),
      galleryApplicationId: pulumi.Output.create<String>(map['galleryApplicationId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      manageAction: pulumi.Output.create<GalleryApplicationVersionManageAction>(GalleryApplicationVersionManageAction.fromMap((map['manageAction'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      packageFile: map['packageFile'] == null ? null : pulumi.Output.create<String>(map['packageFile'] as String),
      source: pulumi.Output.create<GalleryApplicationVersionSource>(GalleryApplicationVersionSource.fromMap((map['source'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      targetRegions: pulumi.Output.create<List<GalleryApplicationVersionTargetRegion>>(pulumi.Input.decodeList<GalleryApplicationVersionTargetRegion>(map['targetRegions'], (value) => GalleryApplicationVersionTargetRegion.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

