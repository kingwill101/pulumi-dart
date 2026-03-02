// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_placement_group_get_placement_group_args_doc}
/// Arguments for getPlacementGroup.
/// {@endtemplate}
/// {@macro pulumi_index_get_placement_group_get_placement_group_args_doc}
class GetPlacementGroupArgs {
  /// ID of the placement group.
  final pulumi.Input<int>? id;
  /// (map) User-defined labels (key-value pairs)
  final pulumi.Input<Map<String, String>>? labels;
  /// Return most recent placement group if multiple are found.
  final pulumi.Input<bool>? mostRecent;
  /// Name of the placement group.
  final pulumi.Input<String>? name;
  /// (string) Type of the Placement Group.
  final pulumi.Input<String>? type;
  /// [Label selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  final pulumi.Input<String>? withSelector;

  /// Creates a new [GetPlacementGroupArgs].
  /// [id] ID of the placement group.
  /// [labels] (map) User-defined labels (key-value pairs)
  /// [mostRecent] Return most recent placement group if multiple are found.
  /// [name] Name of the placement group.
  /// [type] (string) Type of the Placement Group.
  /// [withSelector] [Label selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  GetPlacementGroupArgs({
    this.id,
    this.labels,
    this.mostRecent,
    this.name,
    this.type,
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'labels': ?labels,
      'mostRecent': ?mostRecent,
      'name': ?name,
      'type': ?type,
      'withSelector': ?withSelector,
    };
  }

  factory GetPlacementGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetPlacementGroupArgs(
      id: map['id'] == null ? null : (map['id']! as int).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      mostRecent: map['mostRecent'] == null ? null : (map['mostRecent']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      withSelector: map['withSelector'] == null ? null : (map['withSelector']! as String).input(),
    );
  }
}

