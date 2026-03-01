// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_package_assignment_policy_requestor_settings_requestor.dart';

class AccessPackageAssignmentPolicyRequestorSettings {
  /// A block specifying the users who are allowed to request on this policy, as documented below.
  final List<AccessPackageAssignmentPolicyRequestorSettingsRequestor>? requestors;
  /// Whether to accept requests using this policy. When `false`, no new requests can be made using this policy.
  final bool? requestsAccepted;
  /// Specifies the scopes of the requestors. Valid values are `AllConfiguredConnectedOrganizationSubjects`, `AllExistingConnectedOrganizationSubjects`, `AllExistingDirectoryMemberUsers`, `AllExistingDirectorySubjects`, `AllExternalSubjects`, `NoSubjects`, `SpecificConnectedOrganizationSubjects`, or `SpecificDirectorySubjects`.
  final String? scopeType;

  /// Creates a new [AccessPackageAssignmentPolicyRequestorSettings].
  /// [requestors] A block specifying the users who are allowed to request on this policy, as documented below.
  /// [requestsAccepted] Whether to accept requests using this policy. When `false`, no new requests can be made using this policy.
  /// [scopeType] Specifies the scopes of the requestors. Valid values are `AllConfiguredConnectedOrganizationSubjects`, `AllExistingConnectedOrganizationSubjects`, `AllExistingDirectoryMemberUsers`, `AllExistingDirectorySubjects`, `AllExternalSubjects`, `NoSubjects`, `SpecificConnectedOrganizationSubjects`, or `SpecificDirectorySubjects`.
  AccessPackageAssignmentPolicyRequestorSettings({
    this.requestors,
    this.requestsAccepted,
    this.scopeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestors': ?requestors == null ? null : pulumi.Input.encodeList<AccessPackageAssignmentPolicyRequestorSettingsRequestor, Map<String, dynamic>>(requestors!, (value) => value.toMap()),
      'requestsAccepted': ?requestsAccepted,
      'scopeType': ?scopeType,
    };
  }

  factory AccessPackageAssignmentPolicyRequestorSettings.fromMap(Map<String, dynamic> map) {
    return AccessPackageAssignmentPolicyRequestorSettings(
      requestors: map['requestors'] == null ? null : pulumi.Input.decodeList<AccessPackageAssignmentPolicyRequestorSettingsRequestor>(map['requestors'], (value) => AccessPackageAssignmentPolicyRequestorSettingsRequestor.fromMap((value as Map).cast<String, dynamic>())),
      requestsAccepted: map['requestsAccepted'] == null ? null : map['requestsAccepted'] as bool,
      scopeType: map['scopeType'] == null ? null : map['scopeType'] as String,
    );
  }
}

