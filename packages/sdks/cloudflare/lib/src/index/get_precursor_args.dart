// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_precursor_get_precursor_args_doc}
/// Arguments for getPrecursor.
/// {@endtemplate}
/// {@macro pulumi_index_get_precursor_get_precursor_args_doc}
class GetPrecursorArgs {
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetPrecursorArgs].
  /// [zoneId] Identifier.
  const GetPrecursorArgs({
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zoneId': zoneId,
    };
  }

  factory GetPrecursorArgs.fromMap(Map<String, dynamic> map) {
    return GetPrecursorArgs(
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
