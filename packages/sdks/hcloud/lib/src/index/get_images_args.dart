// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_images_get_images_args_doc}
/// Arguments for getImages.
/// {@endtemplate}
/// {@macro pulumi_index_get_images_get_images_args_doc}
class GetImagesArgs {
  /// Include deprecated images.
  final pulumi.Input<bool>? includeDeprecated;
  /// Sort results by created date.
  final pulumi.Input<bool>? mostRecent;
  /// Filter results by architecture, for example `x86` or `arm`.
  final pulumi.Input<List<String>>? withArchitectures;
  /// Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/hetzner#label-selector).
  final pulumi.Input<String>? withSelector;
  /// Filter results by statuses, for example `creating` or `available`.
  final pulumi.Input<List<String>>? withStatuses;

  /// Creates a new [GetImagesArgs].
  /// [includeDeprecated] Include deprecated images.
  /// [mostRecent] Sort results by created date.
  /// [withArchitectures] Filter results by architecture, for example `x86` or `arm`.
  /// [withSelector] Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/hetzner#label-selector).
  /// [withStatuses] Filter results by statuses, for example `creating` or `available`.
  const GetImagesArgs({
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
      includeDeprecated: (() { final guardedValue = map['includeDeprecated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mostRecent: (() { final guardedValue = map['mostRecent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      withArchitectures: (() { final guardedValue = map['withArchitectures']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      withStatuses: (() { final guardedValue = map['withStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
