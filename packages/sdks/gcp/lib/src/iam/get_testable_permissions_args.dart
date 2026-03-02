// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_get_testable_permissions_get_testable_permissions_args_doc}
/// Arguments for getTestablePermissions.
/// {@endtemplate}
/// {@macro pulumi_iam_get_testable_permissions_get_testable_permissions_args_doc}
class GetTestablePermissionsArgs {
  /// The level of support for custom roles. Can be one of `"NOT_SUPPORTED"`, `"SUPPORTED"`, `"TESTING"`. Default is `"SUPPORTED"`
  final pulumi.Input<String>? customSupportLevel;
  /// See [full resource name documentation](https://cloud.google.com/apis/design/resource_names#full_resource_name) for more detail.
  final pulumi.Input<String> fullResourceName;
  /// The acceptable release stages of the permission in the output. Note that `BETA` does not include permissions in `GA`, but you can specify both with `["GA", "BETA"]` for example. Can be a list of `"ALPHA"`, `"BETA"`, `"GA"`, `"DEPRECATED"`. Default is `["GA"]`.
  final pulumi.Input<List<String>>? stages;

  /// Creates a new [GetTestablePermissionsArgs].
  /// [customSupportLevel] The level of support for custom roles. Can be one of `"NOT_SUPPORTED"`, `"SUPPORTED"`, `"TESTING"`. Default is `"SUPPORTED"`
  /// [fullResourceName] See [full resource name documentation](https://cloud.google.com/apis/design/resource_names#full_resource_name) for more detail.
  /// [stages] The acceptable release stages of the permission in the output. Note that `BETA` does not include permissions in `GA`, but you can specify both with `["GA", "BETA"]` for example. Can be a list of `"ALPHA"`, `"BETA"`, `"GA"`, `"DEPRECATED"`. Default is `["GA"]`.
  GetTestablePermissionsArgs({
    this.customSupportLevel,
    required this.fullResourceName,
    this.stages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customSupportLevel': ?customSupportLevel,
      'fullResourceName': fullResourceName,
      'stages': ?stages,
    };
  }

  factory GetTestablePermissionsArgs.fromMap(Map<String, dynamic> map) {
    return GetTestablePermissionsArgs(
      customSupportLevel: map['customSupportLevel'] == null ? null : (map['customSupportLevel'] as String).input(),
      fullResourceName: (map['fullResourceName'] as String).input(),
      stages: map['stages'] == null ? null : ((map['stages'] as List).cast<String>()).input(),
    );
  }
}

