// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_approval_settings_enrolled_service.dart';

/// Input properties used for looking up and filtering AccessApprovalSettings resources.
class AccessApprovalSettingsState {
  /// The asymmetric crypto key version to use for signing approval requests.
  /// Empty active_key_version indicates that a Google-managed key should be used for signing.
  final pulumi.Input<String>? activeKeyVersion;

  /// This field will always be unset for the organization since organizations do not have ancestors.
  final pulumi.Input<bool>? ancestorHasActiveKeyVersion;

  /// This field will always be unset for the organization since organizations do not have ancestors.
  final pulumi.Input<bool>? enrolledAncestor;

  /// A list of Google Cloud Services for which the given resource has Access Approval enrolled.
  /// Access requests for the resource given by name against any of these services contained here will be required
  /// to have explicit approval. Enrollment can be done for individual services.
  /// A maximum of 10 enrolled services will be enforced, to be expanded as the set of supported services is expanded.
  /// Structure is documented below.
  final pulumi.Input<List<AccessApprovalSettingsEnrolledService>>?
  enrolledServices;

  /// If the field is true, that indicates that there is some configuration issue with the active_key_version
  /// configured on this Organization (e.g. it doesn't exist or the Access Approval service account doesn't have the
  /// correct permissions on it, etc.).
  final pulumi.Input<bool>? invalidKeyVersion;

  /// The resource name of the settings. Format is "organizations/{organization_id}/accessApprovalSettings"
  final pulumi.Input<String>? name;

  /// A list of email addresses to which notifications relating to approval requests should be sent.
  /// Notifications relating to a resource will be sent to all emails in the settings of ancestor
  /// resources of that resource. A maximum of 50 email addresses are allowed.
  final pulumi.Input<List<String>>? notificationEmails;

  /// ID of the organization of the access approval settings.
  final pulumi.Input<String>? organizationId;

  /// Creates a new [AccessApprovalSettingsState].
  /// [activeKeyVersion] The asymmetric crypto key version to use for signing approval requests.
  /// [ancestorHasActiveKeyVersion] This field will always be unset for the organization since organizations do not have ancestors.
  /// [enrolledAncestor] This field will always be unset for the organization since organizations do not have ancestors.
  /// [enrolledServices] A list of Google Cloud Services for which the given resource has Access Approval enrolled.
  /// [invalidKeyVersion] If the field is true, that indicates that there is some configuration issue with the active_key_version
  /// [name] The resource name of the settings. Format is "organizations/{organization_id}/accessApprovalSettings"
  /// [notificationEmails] A list of email addresses to which notifications relating to approval requests should be sent.
  /// [organizationId] ID of the organization of the access approval settings.
  AccessApprovalSettingsState({
    this.activeKeyVersion,
    this.ancestorHasActiveKeyVersion,
    this.enrolledAncestor,
    this.enrolledServices,
    this.invalidKeyVersion,
    this.name,
    this.notificationEmails,
    this.organizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeKeyVersion': ?activeKeyVersion,
      'ancestorHasActiveKeyVersion': ?ancestorHasActiveKeyVersion,
      'enrolledAncestor': ?enrolledAncestor,
      'enrolledServices':
          ?pulumi.Input.mapOptionalInputValue<
            List<AccessApprovalSettingsEnrolledService>,
            List<Map<String, dynamic>>
          >(
            enrolledServices,
            (value) =>
                pulumi.Input.encodeList<
                  AccessApprovalSettingsEnrolledService,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'invalidKeyVersion': ?invalidKeyVersion,
      'name': ?name,
      'notificationEmails': ?notificationEmails,
      'organizationId': ?organizationId,
    };
  }

  factory AccessApprovalSettingsState.fromMap(Map<String, dynamic> map) {
    return AccessApprovalSettingsState(
      activeKeyVersion: (() {
        final guardedValue = map['activeKeyVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ancestorHasActiveKeyVersion: (() {
        final guardedValue = map['ancestorHasActiveKeyVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enrolledAncestor: (() {
        final guardedValue = map['enrolledAncestor'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enrolledServices: (() {
        final guardedValue = map['enrolledServices'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AccessApprovalSettingsEnrolledService>(
            guardedValue,
            (value) => AccessApprovalSettingsEnrolledService.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      invalidKeyVersion: (() {
        final guardedValue = map['invalidKeyVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      notificationEmails: (() {
        final guardedValue = map['notificationEmails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      organizationId: (() {
        final guardedValue = map['organizationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
