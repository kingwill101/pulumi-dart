// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_image_get_image_args_doc}
/// Arguments for getImage.
/// {@endtemplate}
/// {@macro pulumi_compute_get_image_get_image_args_doc}
class GetImageArgs {
  /// The name of the Image.
  final pulumi.Input<String>? name;
  /// Regex pattern of the image to match.
  final pulumi.Input<String>? nameRegex;
  /// The Name of the Resource Group where this Image exists.
  final pulumi.Input<String> resourceGroupName;
  /// By default when matching by regex, images are sorted by name in ascending order and the first match is chosen, to sort descending, set this flag.
  final pulumi.Input<bool>? sortDescending;

  /// Creates a new [GetImageArgs].
  /// [name] The name of the Image.
  /// [nameRegex] Regex pattern of the image to match.
  /// [resourceGroupName] The Name of the Resource Group where this Image exists.
  /// [sortDescending] By default when matching by regex, images are sorted by name in ascending order and the first match is chosen, to sort descending, set this flag.
  const GetImageArgs({
    this.name,
    this.nameRegex,
    required this.resourceGroupName,
    this.sortDescending,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'nameRegex': ?nameRegex,
      'resourceGroupName': resourceGroupName,
      'sortDescending': ?sortDescending,
    };
  }

  factory GetImageArgs.fromMap(Map<String, dynamic> map) {
    return GetImageArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sortDescending: (() { final guardedValue = map['sortDescending']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
