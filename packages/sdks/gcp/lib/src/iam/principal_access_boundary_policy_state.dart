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
  const PrincipalAccessBoundaryPolicyState({
    this.annotations,
    this.createTime,
    this.details,
    this.displayName,
    this.effectiveAnnotations,
    this.etag,
    this.location,
    this.name,
    this.organization,
    this.principalAccessBoundaryPolicyId,
    this.uid,
    this.updateTime,
  });

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
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      details: (() { final guardedValue = map['details']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrincipalAccessBoundaryPolicyDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveAnnotations: (() { final guardedValue = map['effectiveAnnotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organization: (() { final guardedValue = map['organization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalAccessBoundaryPolicyId: (() { final guardedValue = map['principalAccessBoundaryPolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

