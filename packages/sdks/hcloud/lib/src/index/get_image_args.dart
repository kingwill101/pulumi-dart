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
  GetImageArgs({
    pulumi.Output<int>? id,
    pulumi.Output<bool>? includeDeprecated,
    pulumi.Output<bool>? mostRecent,
    pulumi.Output<String>? name,
    pulumi.Output<String>? selector,
    pulumi.Output<String>? withArchitecture,
    pulumi.Output<String>? withSelector,
    pulumi.Output<List<String>>? withStatuses,
  }) :
      id = pulumi.Input.asOptionalInput<int>(id),
      includeDeprecated = pulumi.Input.asOptionalInput<bool>(includeDeprecated),
      mostRecent = pulumi.Input.asOptionalInput<bool>(mostRecent),
      name = pulumi.Input.asOptionalInput<String>(name),
      selector = pulumi.Input.asOptionalInput<String>(selector),
      withArchitecture = pulumi.Input.asOptionalInput<String>(withArchitecture),
      withSelector = pulumi.Input.asOptionalInput<String>(withSelector),
      withStatuses = pulumi.Input.asOptionalInput<List<String>>(withStatuses);

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
      id: map['id'] == null ? null : pulumi.Output.create<int>(map['id'] as int),
      includeDeprecated: map['includeDeprecated'] == null ? null : pulumi.Output.create<bool>(map['includeDeprecated'] as bool),
      mostRecent: map['mostRecent'] == null ? null : pulumi.Output.create<bool>(map['mostRecent'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      selector: map['selector'] == null ? null : pulumi.Output.create<String>(map['selector'] as String),
      withArchitecture: map['withArchitecture'] == null ? null : pulumi.Output.create<String>(map['withArchitecture'] as String),
      withSelector: map['withSelector'] == null ? null : pulumi.Output.create<String>(map['withSelector'] as String),
      withStatuses: map['withStatuses'] == null ? null : pulumi.Output.create<List<String>>((map['withStatuses'] as List).cast<String>()),
    );
  }
}

