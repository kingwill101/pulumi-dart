// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_images_get_images_args_doc}
/// Arguments for getImages.
/// {@endtemplate}
/// {@macro pulumi_index_get_images_get_images_args_doc}
class GetImagesArgs {
  /// Also list images that are marked as deprecated.
  final pulumi.Input<bool>? includeDeprecated;

  /// Sorts list by date.
  final pulumi.Input<bool>? mostRecent;

  /// List only images with this architecture, could contain `x86` or `arm`.
  final pulumi.Input<List<String>>? withArchitectures;

  /// [Label selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  final pulumi.Input<String>? withSelector;

  /// List only images with the specified status, could contain `creating` or `available`.
  final pulumi.Input<List<String>>? withStatuses;

  /// Creates a new [GetImagesArgs].
  /// [includeDeprecated] Also list images that are marked as deprecated.
  /// [mostRecent] Sorts list by date.
  /// [withArchitectures] List only images with this architecture, could contain `x86` or `arm`.
  /// [withSelector] [Label selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  /// [withStatuses] List only images with the specified status, could contain `creating` or `available`.
  GetImagesArgs({
    this.includeDeprecated,
    this.mostRecent,
    this.withArchitectures,
    this.withSelector,
    this.withStatuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeDeprecated': ?includeDeprecated,
      'mostRecent': ?mostRecent,
      'withArchitectures': ?withArchitectures,
      'withSelector': ?withSelector,
      'withStatuses': ?withStatuses,
    };
  }

  factory GetImagesArgs.fromMap(Map<String, dynamic> map) {
    return GetImagesArgs(
      includeDeprecated: (() {
        final guardedValue = map['includeDeprecated'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      mostRecent: (() {
        final guardedValue = map['mostRecent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      withArchitectures: (() {
        final guardedValue = map['withArchitectures'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      withSelector: (() {
        final guardedValue = map['withSelector'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      withStatuses: (() {
        final guardedValue = map['withStatuses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
