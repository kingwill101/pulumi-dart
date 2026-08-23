// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_named_location_get_named_location_args_doc}
/// Arguments for getNamedLocation.
/// {@endtemplate}
/// {@macro pulumi_index_get_named_location_get_named_location_args_doc}
class GetNamedLocationArgs {
  /// Specifies the display named of the named location to look up.
  final pulumi.Input<String> displayName;

  /// Creates a new [GetNamedLocationArgs].
  /// [displayName] Specifies the display named of the named location to look up.
  const GetNamedLocationArgs({
    required this.displayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
    };
  }

  factory GetNamedLocationArgs.fromMap(Map<String, dynamic> map) {
    return GetNamedLocationArgs(
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
    );
  }
}
