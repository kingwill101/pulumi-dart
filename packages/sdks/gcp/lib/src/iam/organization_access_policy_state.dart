// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_access_policy_details.dart';

/// Input properties used for looking up and filtering OrganizationAccessPolicy resources.
class OrganizationAccessPolicyState {
  /// The ID to use for the access policy, which
  /// will become the final component of the access policy's
  /// resource name.
  /// This value must start with a lowercase letter followed by up to 62
  /// lowercase letters, numbers, hyphens, or dots. Pattern,
  /// /a-z{2,62}/.
  /// This value must be unique among all access policies with the same parent.
  final pulumi.Input<String?>? accessPolicyId;
  /// User defined annotations. See https://google.aip.dev/148#annotations for
  /// more details such as format and size limitations
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>?>? annotations;
  /// The time when the access policy was created.
  final pulumi.Input<String?>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Access policy details.
  /// Structure is documented below.
  final pulumi.Input<OrganizationAccessPolicyDetails?>? details;
  /// The description of the access policy. Must be less than
  /// or equal to 63 characters.
  final pulumi.Input<String?>? displayName;
  /// All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveAnnotations;
  /// The etag for the access policy.
  /// If this is provided on update, it must match the server's etag.
  final pulumi.Input<String?>? etag;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String?>? location;
  /// Identifier. The resource name of the access policy.
  /// The following formats are supported:
  /// * `projects/{project_id}/locations/{location}/accessPolicies/{policy_id}`
  /// * `projects/{project_number}/locations/{location}/accessPolicies/{policy_id}`
  /// * `folders/{folder_id}/locations/{location}/accessPolicies/{policy_id}`
  /// * `organizations/{organization_id}/locations/{location}/accessPolicies/{policy_id}`
  final pulumi.Input<String?>? name;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String?>? organization;
  /// The globally unique ID of the access policy.
  final pulumi.Input<String?>? uid;
  /// The time when the access policy was most recently
  /// updated.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [OrganizationAccessPolicyState].
  /// [accessPolicyId] The ID to use for the access policy, which
  /// [annotations] User defined annotations. See https://google.aip.dev/148#annotations for
  /// [createTime] The time when the access policy was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [details] Access policy details.
  /// [displayName] The description of the access policy. Must be less than
  /// [effectiveAnnotations] All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  /// [etag] The etag for the access policy.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Identifier. The resource name of the access policy.
  /// [organization] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [uid] The globally unique ID of the access policy.
  /// [updateTime] The time when the access policy was most recently
  const OrganizationAccessPolicyState({
    this.accessPolicyId,
    this.annotations,
    this.createTime,
    this.deletionPolicy,
    this.details,
    this.displayName,
    this.effectiveAnnotations,
    this.etag,
    this.location,
    this.name,
    this.organization,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyId': ?accessPolicyId,
      'annotations': ?annotations,
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'details': ?pulumi.Input.mapOptionalInputValue<OrganizationAccessPolicyDetails, Map<String, dynamic>>(details, (value) => value.toMap()),
      'displayName': ?displayName,
      'effectiveAnnotations': ?effectiveAnnotations,
      'etag': ?etag,
      'location': ?location,
      'name': ?name,
      'organization': ?organization,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory OrganizationAccessPolicyState.fromMap(Map<String, dynamic> map) {
    return OrganizationAccessPolicyState(
      accessPolicyId: (() { final guardedValue = map['accessPolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      details: (() { final guardedValue = map['details']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrganizationAccessPolicyDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveAnnotations: (() { final guardedValue = map['effectiveAnnotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organization: (() { final guardedValue = map['organization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
