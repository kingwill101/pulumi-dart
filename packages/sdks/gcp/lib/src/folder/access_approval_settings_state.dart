// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_approval_settings_enrolled_service.dart';

/// Input properties used for looking up and filtering AccessApprovalSettings resources.
class AccessApprovalSettingsState {
  /// The asymmetric crypto key version to use for signing approval requests.
  /// Empty active_key_version indicates that a Google-managed key should be used for signing.
  /// This property will be ignored if set by an ancestor of the resource, and new non-empty values may not be set.
  final pulumi.Input<String>? activeKeyVersion;
  /// If the field is true, that indicates that an ancestor of this Folder has set active_key_version.
  final pulumi.Input<bool>? ancestorHasActiveKeyVersion;
  /// If the field is true, that indicates that at least one service is enrolled for Access Approval in one or more ancestors of the Folder.
  final pulumi.Input<bool>? enrolledAncestor;
  /// A list of Google Cloud Services for which the given resource has Access Approval enrolled.
  /// Access requests for the resource given by name against any of these services contained here will be required
  /// to have explicit approval. Enrollment can only be done on an all or nothing basis.
  /// A maximum of 10 enrolled services will be enforced, to be expanded as the set of supported services is expanded.
  /// Structure is documented below.
  final pulumi.Input<List<AccessApprovalSettingsEnrolledService>>? enrolledServices;
  /// ID of the folder of the access approval settings.
  final pulumi.Input<String>? folderId;
  /// If the field is true, that indicates that there is some configuration issue with the active_key_version
  /// configured on this Folder (e.g. it doesn't exist or the Access Approval service account doesn't have the
  /// correct permissions on it, etc.) This key version is not necessarily the effective key version at this level,
  /// as key versions are inherited top-down.
  final pulumi.Input<bool>? invalidKeyVersion;
  /// The resource name of the settings. Format is "folders/{folder_id}/accessApprovalSettings"
  final pulumi.Input<String>? name;
  /// A list of email addresses to which notifications relating to approval requests should be sent.
  /// Notifications relating to a resource will be sent to all emails in the settings of ancestor
  /// resources of that resource. A maximum of 50 email addresses are allowed.
  final pulumi.Input<List<String>>? notificationEmails;

  /// Creates a new [AccessApprovalSettingsState].
  /// [activeKeyVersion] The asymmetric crypto key version to use for signing approval requests.
  /// [ancestorHasActiveKeyVersion] If the field is true, that indicates that an ancestor of this Folder has set active_key_version.
  /// [enrolledAncestor] If the field is true, that indicates that at least one service is enrolled for Access Approval in one or more ancestors of the Folder.
  /// [enrolledServices] A list of Google Cloud Services for which the given resource has Access Approval enrolled.
  /// [folderId] ID of the folder of the access approval settings.
  /// [invalidKeyVersion] If the field is true, that indicates that there is some configuration issue with the active_key_version
  /// [name] The resource name of the settings. Format is "folders/{folder_id}/accessApprovalSettings"
  /// [notificationEmails] A list of email addresses to which notifications relating to approval requests should be sent.
  AccessApprovalSettingsState({
    this.activeKeyVersion,
    this.ancestorHasActiveKeyVersion,
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
      activeKeyVersion: map['activeKeyVersion'] == null ? null : (map['activeKeyVersion'] as String).input(),
      ancestorHasActiveKeyVersion: map['ancestorHasActiveKeyVersion'] == null ? null : (map['ancestorHasActiveKeyVersion'] as bool).input(),
      enrolledAncestor: map['enrolledAncestor'] == null ? null : (map['enrolledAncestor'] as bool).input(),
      enrolledServices: map['enrolledServices'] == null ? null : (pulumi.Input.decodeList<AccessApprovalSettingsEnrolledService>(map['enrolledServices'], (value) => AccessApprovalSettingsEnrolledService.fromMap((value as Map).cast<String, dynamic>()))).input(),
      folderId: map['folderId'] == null ? null : (map['folderId'] as String).input(),
      invalidKeyVersion: map['invalidKeyVersion'] == null ? null : (map['invalidKeyVersion'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      notificationEmails: map['notificationEmails'] == null ? null : ((map['notificationEmails'] as List).cast<String>()).input(),
    );
  }
}

