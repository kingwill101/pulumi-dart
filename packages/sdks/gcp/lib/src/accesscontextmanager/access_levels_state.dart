// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_levels_access_level.dart';

/// Input properties used for looking up and filtering AccessLevels resources.
class AccessLevelsState {
  /// The desired Access Levels that should replace all existing Access Levels in the Access Policy.
  /// Structure is documented below.
  final pulumi.Input<List<AccessLevelsAccessLevel>?>? accessLevels;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The AccessPolicy this AccessLevel lives in.
  /// Format: accessPolicies/{policy_id}
  final pulumi.Input<String?>? parent;

  /// Creates a new [AccessLevelsState].
  /// [accessLevels] The desired Access Levels that should replace all existing Access Levels in the Access Policy.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [parent] The AccessPolicy this AccessLevel lives in.
  const AccessLevelsState({
    this.accessLevels,
    this.deletionPolicy,
    this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLevels': ?pulumi.Input.mapOptionalInputValue<List<AccessLevelsAccessLevel>, List<Map<String, dynamic>>>(accessLevels, (value) => pulumi.Input.encodeList<AccessLevelsAccessLevel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deletionPolicy': ?deletionPolicy,
      'parent': ?parent,
    };
  }

  factory AccessLevelsState.fromMap(Map<String, dynamic> map) {
    return AccessLevelsState(
      accessLevels: (() { final guardedValue = map['accessLevels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessLevelsAccessLevel>(guardedValue, (value) => AccessLevelsAccessLevel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
