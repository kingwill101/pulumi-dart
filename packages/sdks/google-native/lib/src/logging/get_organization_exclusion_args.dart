// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_v2_get_organization_exclusion_args_doc}
/// Arguments for getOrganizationExclusion.
/// {@endtemplate}
/// {@macro pulumi_logging_v2_get_organization_exclusion_args_doc}
class GetOrganizationExclusionArgs {
  final pulumi.Input<String> exclusionId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetOrganizationExclusionArgs].
  /// [exclusionId] Required.
  /// [organizationId] Required.
  GetOrganizationExclusionArgs({
    required this.exclusionId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusionId': exclusionId,
      'organizationId': organizationId,
    };
  }

  factory GetOrganizationExclusionArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationExclusionArgs(
      exclusionId: (map['exclusionId'] as String).input(),
      organizationId: (map['organizationId'] as String).input(),
    );
  }
}

