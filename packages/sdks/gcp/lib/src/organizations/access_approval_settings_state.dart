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
  final pulumi.Input<List<AccessApprovalSettingsEnrolledService>>? enrolledServices;
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
    pulumi.Output<String>? activeKeyVersion,
    pulumi.Output<bool>? ancestorHasActiveKeyVersion,
    pulumi.Output<bool>? enrolledAncestor,
    pulumi.Output<List<AccessApprovalSettingsEnrolledService>>? enrolledServices,
    pulumi.Output<bool>? invalidKeyVersion,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? notificationEmails,
    pulumi.Output<String>? organizationId,
  }) :
      activeKeyVersion = pulumi.Input.asOptionalInput<String>(activeKeyVersion),
      ancestorHasActiveKeyVersion = pulumi.Input.asOptionalInput<bool>(ancestorHasActiveKeyVersion),
      enrolledAncestor = pulumi.Input.asOptionalInput<bool>(enrolledAncestor),
      enrolledServices = pulumi.Input.asOptionalInput<List<AccessApprovalSettingsEnrolledService>>(enrolledServices),
      invalidKeyVersion = pulumi.Input.asOptionalInput<bool>(invalidKeyVersion),
      name = pulumi.Input.asOptionalInput<String>(name),
      notificationEmails = pulumi.Input.asOptionalInput<List<String>>(notificationEmails),
      organizationId = pulumi.Input.asOptionalInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeKeyVersion': ?activeKeyVersion,
      'ancestorHasActiveKeyVersion': ?ancestorHasActiveKeyVersion,
      'enrolledAncestor': ?enrolledAncestor,
      'enrolledServices': ?pulumi.Input.mapOptionalInputValue<List<AccessApprovalSettingsEnrolledService>, List<Map<String, dynamic>>>(enrolledServices, (value) => pulumi.Input.encodeList<AccessApprovalSettingsEnrolledService, Map<String, dynamic>>(value, (value) => value.toMap())),
      'invalidKeyVersion': ?invalidKeyVersion,
      'name': ?name,
      'notificationEmails': ?notificationEmails,
      'organizationId': ?organizationId,
    };
  }

  factory AccessApprovalSettingsState.fromMap(Map<String, dynamic> map) {
    return AccessApprovalSettingsState(
      activeKeyVersion: map['activeKeyVersion'] == null ? null : pulumi.Output.create<String>(map['activeKeyVersion'] as String),
      ancestorHasActiveKeyVersion: map['ancestorHasActiveKeyVersion'] == null ? null : pulumi.Output.create<bool>(map['ancestorHasActiveKeyVersion'] as bool),
      enrolledAncestor: map['enrolledAncestor'] == null ? null : pulumi.Output.create<bool>(map['enrolledAncestor'] as bool),
      enrolledServices: map['enrolledServices'] == null ? null : pulumi.Output.create<List<AccessApprovalSettingsEnrolledService>>(pulumi.Input.decodeList<AccessApprovalSettingsEnrolledService>(map['enrolledServices'], (value) => AccessApprovalSettingsEnrolledService.fromMap((value as Map).cast<String, dynamic>()))),
      invalidKeyVersion: map['invalidKeyVersion'] == null ? null : pulumi.Output.create<bool>(map['invalidKeyVersion'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      notificationEmails: map['notificationEmails'] == null ? null : pulumi.Output.create<List<String>>((map['notificationEmails'] as List).cast<String>()),
      organizationId: map['organizationId'] == null ? null : pulumi.Output.create<String>(map['organizationId'] as String),
    );
  }
}

