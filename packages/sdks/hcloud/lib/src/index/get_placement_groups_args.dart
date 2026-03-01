// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_placement_groups_get_placement_groups_args_doc}
/// Arguments for getPlacementGroups.
/// {@endtemplate}
/// {@macro pulumi_index_get_placement_groups_get_placement_groups_args_doc}
class GetPlacementGroupsArgs {
  /// Sorts list by date.
  final pulumi.Input<bool>? mostRecent;
  /// [Label selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  final pulumi.Input<String>? withSelector;

  /// Creates a new [GetPlacementGroupsArgs].
  /// [mostRecent] Sorts list by date.
  /// [withSelector] [Label selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  GetPlacementGroupsArgs({
    pulumi.Output<bool>? mostRecent,
    pulumi.Output<String>? withSelector,
  }) :
      mostRecent = pulumi.Input.asOptionalInput<bool>(mostRecent),
      withSelector = pulumi.Input.asOptionalInput<String>(withSelector);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mostRecent': ?mostRecent,
      'withSelector': ?withSelector,
    };
  }

  factory GetPlacementGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetPlacementGroupsArgs(
      mostRecent: map['mostRecent'] == null ? null : pulumi.Output.create<bool>(map['mostRecent'] as bool),
      withSelector: map['withSelector'] == null ? null : pulumi.Output.create<String>(map['withSelector'] as String),
    );
  }
}

