// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_approval_settings_enrolled_service.dart';

/// Input properties used for looking up and filtering AccessApprovalSettings resources.
class AccessApprovalSettingsState {
  /// The asymmetric crypto key version to use for signing approval requests.
  /// Empty activeKeyVersion indicates that a Google-managed key should be used for signing.
  /// This property will be ignored if set by an ancestor of the resource, and new non-empty values may not be set.
  final pulumi.Input<String?>? activeKeyVersion;
  /// If the field is true, that indicates that an ancestor of this Folder has set active_key_version.
  final pulumi.Input<bool?>? ancestorHasActiveKeyVersion;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// If the field is true, that indicates that at least one service is enrolled for Access Approval in one or more ancestors of the Folder.
  final pulumi.Input<bool?>? enrolledAncestor;
  /// A list of Google Cloud Services for which the given resource has Access Approval enrolled.
  /// Access requests for the resource given by name against any of these services contained here will be required
  /// to have explicit approval. Enrollment can only be done on an all or nothing basis.
  /// A maximum of 10 enrolled services will be enforced, to be expanded as the set of supported services is expanded.
  /// Structure is documented below.
  final pulumi.Input<List<AccessApprovalSettingsEnrolledService>?>? enrolledServices;
  /// ID of the folder of the access approval settings.
  final pulumi.Input<String?>? folderId;
  /// If the field is true, that indicates that there is some configuration issue with the activeKeyVersion
  /// configured on this Folder (e.g. it doesn't exist or the Access Approval service account doesn't have the
  /// correct permissions on it, etc.) This key version is not necessarily the effective key version at this level,
  /// as key versions are inherited top-down.
  final pulumi.Input<bool?>? invalidKeyVersion;
  /// The resource name of the settings. Format is "folders/{folder_id}/accessApprovalSettings"
  final pulumi.Input<String?>? name;
  /// A list of email addresses to which notifications relating to approval requests should be sent.
  /// Notifications relating to a resource will be sent to all emails in the settings of ancestor
  /// resources of that resource. A maximum of 50 email addresses are allowed.
  final pulumi.Input<List<String>?>? notificationEmails;

  /// Creates a new [AccessApprovalSettingsState].
  /// [activeKeyVersion] The asymmetric crypto key version to use for signing approval requests.
  /// [ancestorHasActiveKeyVersion] If the field is true, that indicates that an ancestor of this Folder has set active_key_version.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [enrolledAncestor] If the field is true, that indicates that at least one service is enrolled for Access Approval in one or more ancestors of the Folder.
  /// [enrolledServices] A list of Google Cloud Services for which the given resource has Access Approval enrolled.
  /// [folderId] ID of the folder of the access approval settings.
  /// [invalidKeyVersion] If the field is true, that indicates that there is some configuration issue with the activeKeyVersion
  /// [name] The resource name of the settings. Format is "folders/{folder_id}/accessApprovalSettings"
  /// [notificationEmails] A list of email addresses to which notifications relating to approval requests should be sent.
  const AccessApprovalSettingsState({
    this.activeKeyVersion,
    this.ancestorHasActiveKeyVersion,
    this.deletionPolicy,
    this.enrolledAncestor,
    this.enrolledServices,
    this.folderId,
    this.invalidKeyVersion,
    this.name,
    this.notificationEmails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeKeyVersion': ?activeKeyVersion,
      'ancestorHasActiveKeyVersion': ?ancestorHasActiveKeyVersion,
      'deletionPolicy': ?deletionPolicy,
      'enrolledAncestor': ?enrolledAncestor,
      'enrolledServices': ?pulumi.Input.mapOptionalInputValue<List<AccessApprovalSettingsEnrolledService>, List<Map<String, dynamic>>>(enrolledServices, (value) => pulumi.Input.encodeList<AccessApprovalSettingsEnrolledService, Map<String, dynamic>>(value, (value) => value.toMap())),
      'folderId': ?folderId,
      'invalidKeyVersion': ?invalidKeyVersion,
      'name': ?name,
      'notificationEmails': ?notificationEmails,
    };
  }

  factory AccessApprovalSettingsState.fromMap(Map<String, dynamic> map) {
    return AccessApprovalSettingsState(
      activeKeyVersion: (() { final guardedValue = map['activeKeyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ancestorHasActiveKeyVersion: (() { final guardedValue = map['ancestorHasActiveKeyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enrolledAncestor: (() { final guardedValue = map['enrolledAncestor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enrolledServices: (() { final guardedValue = map['enrolledServices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessApprovalSettingsEnrolledService>(guardedValue, (value) => AccessApprovalSettingsEnrolledService.fromMap((value as Map).cast<String, dynamic>()))); })(),
      folderId: (() { final guardedValue = map['folderId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      invalidKeyVersion: (() { final guardedValue = map['invalidKeyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notificationEmails: (() { final guardedValue = map['notificationEmails']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
