// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_managed_transforms_get_managed_transforms_args_doc}
/// Arguments for getManagedTransforms.
/// {@endtemplate}
/// {@macro pulumi_index_get_managed_transforms_get_managed_transforms_args_doc}
class GetManagedTransformsArgs {
  /// The unique ID of the zone.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetManagedTransformsArgs].
  /// [zoneId] The unique ID of the zone.
  const GetManagedTransformsArgs({
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zoneId': ?zoneId,
    };
  }

  factory GetManagedTransformsArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedTransformsArgs(
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
