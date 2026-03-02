// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_volumes_get_volumes_args_doc}
/// Arguments for getVolumes.
/// {@endtemplate}
/// {@macro pulumi_index_get_volumes_get_volumes_args_doc}
class GetVolumesArgs {
  /// [Label selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  final pulumi.Input<String>? withSelector;
  /// List only volumes with the specified status, could contain `creating` or `available`.
  final pulumi.Input<List<String>>? withStatuses;

  /// Creates a new [GetVolumesArgs].
  /// [withSelector] [Label selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  /// [withStatuses] List only volumes with the specified status, could contain `creating` or `available`.
  GetVolumesArgs({
    this.withSelector,
    this.withStatuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'withSelector': ?withSelector,
      'withStatuses': ?withStatuses,
    };
  }

  factory GetVolumesArgs.fromMap(Map<String, dynamic> map) {
    return GetVolumesArgs(
      withSelector: map['withSelector'] == null ? null : (map['withSelector']! as String).input(),
      withStatuses: map['withStatuses'] == null ? null : ((map['withStatuses']! as List).cast<String>()).input(),
    );
  }
}

