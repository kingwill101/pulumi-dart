// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_organization_profile_get_organization_profile_args_doc}
/// Arguments for getOrganizationProfile.
/// {@endtemplate}
/// {@macro pulumi_index_get_organization_profile_get_organization_profile_args_doc}
class GetOrganizationProfileArgs {
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetOrganizationProfileArgs].
  /// [organizationId] Required.
  const GetOrganizationProfileArgs({
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organizationId': organizationId,
    };
  }

  factory GetOrganizationProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationProfileArgs(
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
    );
  }
}
