// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_image_get_image_args_doc}
/// Arguments for getImage.
/// {@endtemplate}
/// {@macro pulumi_index_get_image_get_image_args_doc}
class GetImageArgs {
  /// ID of the Image.
  final pulumi.Input<int>? id;
  /// Also return the image if it is marked as deprecated.
  final pulumi.Input<bool>? includeDeprecated;
  /// If more than one result is returned, use the most recent Image.
  final pulumi.Input<bool>? mostRecent;
  /// Name of the Image.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? selector;
  /// Select only images with this architecture, could be `x86` (default) or `arm`.
  final pulumi.Input<String>? withArchitecture;
  /// [Label selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  final pulumi.Input<String>? withSelector;
  /// Select only images with the specified status, could contain `creating` or `available`.
  final pulumi.Input<List<String>>? withStatuses;

  /// Creates a new [GetImageArgs].
  /// [id] ID of the Image.
  /// [includeDeprecated] Also return the image if it is marked as deprecated.
  /// [mostRecent] If more than one result is returned, use the most recent Image.
  /// [name] Name of the Image.
  /// [selector] Optional.
  /// [withArchitecture] Select only images with this architecture, could be `x86` (default) or `arm`.
  /// [withSelector] [Label selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  /// [withStatuses] Select only images with the specified status, could contain `creating` or `available`.
  const GetImageArgs({
    this.id,
    this.includeDeprecated,
    this.mostRecent,
    this.name,
    this.selector,
    this.withArchitecture,
    this.withSelector,
    this.withStatuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'includeDeprecated': ?includeDeprecated,
      'mostRecent': ?mostRecent,
      'name': ?name,
      'selector': ?selector,
      'withArchitecture': ?withArchitecture,
      'withSelector': ?withSelector,
      'withStatuses': ?withStatuses,
    };
  }

  factory GetImageArgs.fromMap(Map<String, dynamic> map) {
    return GetImageArgs(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      includeDeprecated: (() { final guardedValue = map['includeDeprecated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mostRecent: (() { final guardedValue = map['mostRecent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selector: (() { final guardedValue = map['selector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      withArchitecture: (() { final guardedValue = map['withArchitecture']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      withStatuses: (() { final guardedValue = map['withStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

