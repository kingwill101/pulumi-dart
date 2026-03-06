// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'principal_access_boundary_policy_details.dart';

/// {@template pulumi_iam_principal_access_boundary_policy_principal_access_boundary_policy_args_doc}
/// The set of arguments for PrincipalAccessBoundaryPolicy.
/// {@endtemplate}
/// {@macro pulumi_iam_principal_access_boundary_policy_principal_access_boundary_policy_args_doc}
class PrincipalAccessBoundaryPolicyArgs {
  /// User defined annotations. See https://google.aip.dev/148#annotations
  /// for more details such as format and size limitations
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Principal access boundary policy details
  /// Structure is documented below.
  final pulumi.Input<PrincipalAccessBoundaryPolicyDetails>? details;
  /// The description of the principal access boundary policy. Must be less than or equal to 63 characters.
  final pulumi.Input<String>? displayName;
  /// The location the principal access boundary policy is in.
  final pulumi.Input<String> location;
  /// The parent organization of the principal access boundary policy.
  final pulumi.Input<String> organization;
  /// The ID to use to create the principal access boundary policy.
  /// This value must start with a lowercase letter followed by up to 62 lowercase letters, numbers, hyphens, or dots. Pattern, /a-z{2,62}/.
  final pulumi.Input<String> principalAccessBoundaryPolicyId;

  /// Creates a new [PrincipalAccessBoundaryPolicyArgs].
  /// [annotations] User defined annotations. See https://google.aip.dev/148#annotations
  /// [details] Principal access boundary policy details
  /// [displayName] The description of the principal access boundary policy. Must be less than or equal to 63 characters.
  /// [location] The location the principal access boundary policy is in.
  /// [organization] The parent organization of the principal access boundary policy.
  /// [principalAccessBoundaryPolicyId] The ID to use to create the principal access boundary policy.
  const PrincipalAccessBoundaryPolicyArgs({
    this.annotations,
    this.details,
    this.displayName,
    required this.location,
    required this.organization,
    required this.principalAccessBoundaryPolicyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'details': ?pulumi.Input.mapOptionalInputValue<PrincipalAccessBoundaryPolicyDetails, Map<String, dynamic>>(details, (value) => value.toMap()),
      'displayName': ?displayName,
      'location': location,
      'organization': organization,
      'principalAccessBoundaryPolicyId': principalAccessBoundaryPolicyId,
    };
  }

  factory PrincipalAccessBoundaryPolicyArgs.fromMap(Map<String, dynamic> map) {
    return PrincipalAccessBoundaryPolicyArgs(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      details: (() { final guardedValue = map['details']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrincipalAccessBoundaryPolicyDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      organization: pulumi.Input.fromValue(map['organization'] as String),
      principalAccessBoundaryPolicyId: pulumi.Input.fromValue(map['principalAccessBoundaryPolicyId'] as String),
    );
  }
}

