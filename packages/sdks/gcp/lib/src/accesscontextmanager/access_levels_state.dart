// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_levels_access_level.dart';

/// Input properties used for looking up and filtering AccessLevels resources.
class AccessLevelsState {
  /// The desired Access Levels that should replace all existing Access Levels in the Access Policy.
  /// Structure is documented below.
  final pulumi.Input<List<AccessLevelsAccessLevel>>? accessLevels;
  /// The AccessPolicy this AccessLevel lives in.
  /// Format: accessPolicies/{policy_id}
  final pulumi.Input<String>? parent;

  /// Creates a new [AccessLevelsState].
  /// [accessLevels] The desired Access Levels that should replace all existing Access Levels in the Access Policy.
  /// [parent] The AccessPolicy this AccessLevel lives in.
  AccessLevelsState({
    pulumi.Output<List<AccessLevelsAccessLevel>>? accessLevels,
    pulumi.Output<String>? parent,
  }) :
      accessLevels = pulumi.Input.asOptionalInput<List<AccessLevelsAccessLevel>>(accessLevels),
      parent = pulumi.Input.asOptionalInput<String>(parent);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLevels': ?pulumi.Input.mapOptionalInputValue<List<AccessLevelsAccessLevel>, List<Map<String, dynamic>>>(accessLevels, (value) => pulumi.Input.encodeList<AccessLevelsAccessLevel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parent': ?parent,
    };
  }

  factory AccessLevelsState.fromMap(Map<String, dynamic> map) {
    return AccessLevelsState(
      accessLevels: map['accessLevels'] == null ? null : pulumi.Output.create<List<AccessLevelsAccessLevel>>(pulumi.Input.decodeList<AccessLevelsAccessLevel>(map['accessLevels'], (value) => AccessLevelsAccessLevel.fromMap((value as Map).cast<String, dynamic>()))),
      parent: map['parent'] == null ? null : pulumi.Output.create<String>(map['parent'] as String),
    );
  }
}

