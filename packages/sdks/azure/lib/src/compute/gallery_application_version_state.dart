// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_application_version_manage_action.dart';
import 'gallery_application_version_source.dart';
import 'gallery_application_version_target_region.dart';

/// Input properties used for looking up and filtering GalleryApplicationVersion resources.
class GalleryApplicationVersionState {
  /// Specifies the name of the config file on the VM. Changing this forces a new resource to be created.
  final pulumi.Input<String>? configFile;
  /// Should the Gallery Application reports health. Defaults to `false`.
  final pulumi.Input<bool>? enableHealthCheck;
  /// The end of life date in RFC3339 format of the Gallery Application Version.
  final pulumi.Input<String>? endOfLifeDate;
  /// Should the Gallery Application Version be excluded from the `latest` filter? If set to `true` this Gallery Application Version won't be returned for the `latest` version. Defaults to `false`.
  final pulumi.Input<bool>? excludeFromLatest;
  /// The ID of the Gallery Application. Changing this forces a new resource to be created.
  final pulumi.Input<String>? galleryApplicationId;
  /// The Azure Region where the Gallery Application Version exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// A `manage_action` block as defined below.
  final pulumi.Input<GalleryApplicationVersionManageAction>? manageAction;
  /// The version name of the Gallery Application Version, such as `1.0.0`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the package file on the VM. Changing this forces a new resource to be created.
  final pulumi.Input<String>? packageFile;
  /// A `source` block as defined below.
  final pulumi.Input<GalleryApplicationVersionSource>? source;
  /// A mapping of tags to assign to the Gallery Application Version.
  final pulumi.Input<Map<String, String>>? tags;
  /// One or more `target_region` blocks as defined below.
  final pulumi.Input<List<GalleryApplicationVersionTargetRegion>>? targetRegions;

  /// Creates a new [GalleryApplicationVersionState].
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
  const GalleryApplicationVersionState({
    this.configFile,
    this.enableHealthCheck,
    this.endOfLifeDate,
    this.excludeFromLatest,
    this.galleryApplicationId,
    this.location,
    this.manageAction,
    this.name,
    this.packageFile,
    this.source,
    this.tags,
    this.targetRegions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configFile': ?configFile,
      'enableHealthCheck': ?enableHealthCheck,
      'endOfLifeDate': ?endOfLifeDate,
      'excludeFromLatest': ?excludeFromLatest,
      'galleryApplicationId': ?galleryApplicationId,
      'location': ?location,
      'manageAction': ?pulumi.Input.mapOptionalInputValue<GalleryApplicationVersionManageAction, Map<String, dynamic>>(manageAction, (value) => value.toMap()),
      'name': ?name,
      'packageFile': ?packageFile,
      'source': ?pulumi.Input.mapOptionalInputValue<GalleryApplicationVersionSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'tags': ?tags,
      'targetRegions': ?pulumi.Input.mapOptionalInputValue<List<GalleryApplicationVersionTargetRegion>, List<Map<String, dynamic>>>(targetRegions, (value) => pulumi.Input.encodeList<GalleryApplicationVersionTargetRegion, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GalleryApplicationVersionState.fromMap(Map<String, dynamic> map) {
    return GalleryApplicationVersionState(
      configFile: (() { final guardedValue = map['configFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableHealthCheck: (() { final guardedValue = map['enableHealthCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      endOfLifeDate: (() { final guardedValue = map['endOfLifeDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      excludeFromLatest: (() { final guardedValue = map['excludeFromLatest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      galleryApplicationId: (() { final guardedValue = map['galleryApplicationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      manageAction: (() { final guardedValue = map['manageAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GalleryApplicationVersionManageAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      packageFile: (() { final guardedValue = map['packageFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GalleryApplicationVersionSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetRegions: (() { final guardedValue = map['targetRegions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GalleryApplicationVersionTargetRegion>(guardedValue, (value) => GalleryApplicationVersionTargetRegion.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

