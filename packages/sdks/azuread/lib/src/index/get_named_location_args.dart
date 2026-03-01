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
  GetNamedLocationArgs({
    required pulumi.Output<String> displayName,
  }) :
      displayName = pulumi.Input.asInput<String>(displayName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
    };
  }

  factory GetNamedLocationArgs.fromMap(Map<String, dynamic> map) {
    return GetNamedLocationArgs(
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
    );
  }
}

