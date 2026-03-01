// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'principal_access_boundary_policy_details.dart';

/// Input properties used for looking up and filtering PrincipalAccessBoundaryPolicy resources.
class PrincipalAccessBoundaryPolicyState {
  /// User defined annotations. See https://google.aip.dev/148#annotations
  /// for more details such as format and size limitations
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Output only. The time when the principal access boundary policy was created.
  final pulumi.Input<String>? createTime;
  /// Principal access boundary policy details
  /// Structure is documented below.
  final pulumi.Input<PrincipalAccessBoundaryPolicyDetails>? details;
  /// The description of the principal access boundary policy. Must be less than or equal to 63 characters.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;
  /// The etag for the principal access boundary. If this is provided on update, it must match the server's etag.
  final pulumi.Input<String>? etag;
  /// The location the principal access boundary policy is in.
  final pulumi.Input<String>? location;
  /// Identifier. The resource name of the principal access boundary policy.  The following format is supported:
  /// `organizations/{organization_id}/locations/{location}/principalAccessBoundaryPolicies/{policy_id}`
  final pulumi.Input<String>? name;
  /// The parent organization of the principal access boundary policy.
  final pulumi.Input<String>? organization;
  /// The ID to use to create the principal access boundary policy.
  /// This value must start with a lowercase letter followed by up to 62 lowercase letters, numbers, hyphens, or dots. Pattern, /a-z{2,62}/.
  final pulumi.Input<String>? principalAccessBoundaryPolicyId;
  /// Output only. The globally unique ID of the principal access boundary policy.
  final pulumi.Input<String>? uid;
  /// Output only. The time when the principal access boundary policy was most recently updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [PrincipalAccessBoundaryPolicyState].
  /// [annotations] User defined annotations. See https://google.aip.dev/148#annotations
  /// [createTime] Output only. The time when the principal access boundary policy was created.
  /// [details] Principal access boundary policy details
  /// [displayName] The description of the principal access boundary policy. Must be less than or equal to 63 characters.
  /// [effectiveAnnotations] Optional.
  /// [etag] The etag for the principal access boundary. If this is provided on update, it must match the server's etag.
  /// [location] The location the principal access boundary policy is in.
  /// [name] Identifier. The resource name of the principal access boundary policy.  The following format is supported:
  /// [organization] The parent organization of the principal access boundary policy.
  /// [principalAccessBoundaryPolicyId] The ID to use to create the principal access boundary policy.
  /// [uid] Output only. The globally unique ID of the principal access boundary policy.
  /// [updateTime] Output only. The time when the principal access boundary policy was most recently updated.
  PrincipalAccessBoundaryPolicyState({
    pulumi.Output<Map<String, String>>? annotations,
    pulumi.Output<String>? createTime,
    pulumi.Output<PrincipalAccessBoundaryPolicyDetails>? details,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? effectiveAnnotations,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? organization,
    pulumi.Output<String>? principalAccessBoundaryPolicyId,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      details = pulumi.Input.asOptionalInput<PrincipalAccessBoundaryPolicyDetails>(details),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      effectiveAnnotations = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveAnnotations),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      organization = pulumi.Input.asOptionalInput<String>(organization),
      principalAccessBoundaryPolicyId = pulumi.Input.asOptionalInput<String>(principalAccessBoundaryPolicyId),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'createTime': ?createTime,
      'details': ?pulumi.Input.mapOptionalInputValue<PrincipalAccessBoundaryPolicyDetails, Map<String, dynamic>>(details, (value) => value.toMap()),
      'displayName': ?displayName,
      'effectiveAnnotations': ?effectiveAnnotations,
      'etag': ?etag,
      'location': ?location,
      'name': ?name,
      'organization': ?organization,
      'principalAccessBoundaryPolicyId': ?principalAccessBoundaryPolicyId,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory PrincipalAccessBoundaryPolicyState.fromMap(Map<String, dynamic> map) {
    return PrincipalAccessBoundaryPolicyState(
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      details: map['details'] == null ? null : pulumi.Output.create<PrincipalAccessBoundaryPolicyDetails>(PrincipalAccessBoundaryPolicyDetails.fromMap((map['details'] as Map).cast<String, dynamic>())),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveAnnotations'] as Map).cast<String, String>()),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      organization: map['organization'] == null ? null : pulumi.Output.create<String>(map['organization'] as String),
      principalAccessBoundaryPolicyId: map['principalAccessBoundaryPolicyId'] == null ? null : pulumi.Output.create<String>(map['principalAccessBoundaryPolicyId'] as String),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

