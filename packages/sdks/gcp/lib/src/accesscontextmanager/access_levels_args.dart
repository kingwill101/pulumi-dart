// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_levels_access_level.dart';

/// {@template pulumi_accesscontextmanager_access_levels_access_levels_args_doc}
/// The set of arguments for AccessLevels.
/// {@endtemplate}
/// {@macro pulumi_accesscontextmanager_access_levels_access_levels_args_doc}
class AccessLevelsArgs {
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
  final pulumi.Input<String> parent;

  /// Creates a new [AccessLevelsArgs].
  /// [accessLevels] The desired Access Levels that should replace all existing Access Levels in the Access Policy.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [parent] The AccessPolicy this AccessLevel lives in.
  const AccessLevelsArgs({
    this.accessLevels,
    this.deletionPolicy,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLevels': ?pulumi.Input.mapOptionalInputValue<List<AccessLevelsAccessLevel>, List<Map<String, dynamic>>>(accessLevels, (value) => pulumi.Input.encodeList<AccessLevelsAccessLevel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deletionPolicy': ?deletionPolicy,
      'parent': parent,
    };
  }

  factory AccessLevelsArgs.fromMap(Map<String, dynamic> map) {
    return AccessLevelsArgs(
      accessLevels: (() { final guardedValue = map['accessLevels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessLevelsAccessLevel>(guardedValue, (value) => AccessLevelsAccessLevel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: pulumi.Input.fromValue(map['parent'] as String),
    );
  }
}
