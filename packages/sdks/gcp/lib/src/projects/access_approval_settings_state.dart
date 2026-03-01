// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_approval_settings_enrolled_service.dart';

/// Input properties used for looking up and filtering AccessApprovalSettings resources.
class AccessApprovalSettingsState {
  /// The asymmetric crypto key version to use for signing approval requests.
  /// Empty active_key_version indicates that a Google-managed key should be used for signing.
  /// This property will be ignored if set by an ancestor of the resource, and new non-empty values may not be set.
  final pulumi.Input<String>? activeKeyVersion;
  /// If the field is true, that indicates that an ancestor of this Project has set active_key_version.
  final pulumi.Input<bool>? ancestorHasActiveKeyVersion;
  /// If the field is true, that indicates that at least one service is enrolled for Access Approval in one or more ancestors of the Project.
  final pulumi.Input<bool>? enrolledAncestor;
  /// A list of Google Cloud Services for which the given resource has Access Approval enrolled.
  /// Access requests for the resource given by name against any of these services contained here will be required
  /// to have explicit approval. Enrollment can only be done on an all or nothing basis.
  /// A maximum of 10 enrolled services will be enforced, to be expanded as the set of supported services is expanded.
  /// Structure is documented below.
  final pulumi.Input<List<AccessApprovalSettingsEnrolledService>>? enrolledServices;
  /// If the field is true, that indicates that there is some configuration issue with the active_key_version
  /// configured on this Project (e.g. it doesn't exist or the Access Approval service account doesn't have the
  /// correct permissions on it, etc.) This key version is not necessarily the effective key version at this level,
  /// as key versions are inherited top-down.
  final pulumi.Input<bool>? invalidKeyVersion;
  /// The resource name of the settings. Format is "projects/{project_id}/accessApprovalSettings"
  final pulumi.Input<String>? name;
  /// A list of email addresses to which notifications relating to approval requests should be sent.
  /// Notifications relating to a resource will be sent to all emails in the settings of ancestor
  /// resources of that resource. A maximum of 50 email addresses are allowed.
  final pulumi.Input<List<String>>? notificationEmails;
  /// (Optional, Deprecated)
  /// Project id.
  ///
  /// > **Warning:** `project` is deprecated and will be removed in a future major release. Use `project_id` instead.
  final pulumi.Input<String>? project;
  /// ID of the project of the access approval settings.
  final pulumi.Input<String>? projectId;

  /// Creates a new [AccessApprovalSettingsState].
  /// [activeKeyVersion] The asymmetric crypto key version to use for signing approval requests.
  /// [ancestorHasActiveKeyVersion] If the field is true, that indicates that an ancestor of this Project has set active_key_version.
  /// [enrolledAncestor] If the field is true, that indicates that at least one service is enrolled for Access Approval in one or more ancestors of the Project.
  /// [enrolledServices] A list of Google Cloud Services for which the given resource has Access Approval enrolled.
  /// [invalidKeyVersion] If the field is true, that indicates that there is some configuration issue with the active_key_version
  /// [name] The resource name of the settings. Format is "projects/{project_id}/accessApprovalSettings"
  /// [notificationEmails] A list of email addresses to which notifications relating to approval requests should be sent.
  /// [project] (Optional, Deprecated)
  /// [projectId] ID of the project of the access approval settings.
  AccessApprovalSettingsState({
    pulumi.Output<String>? activeKeyVersion,
    pulumi.Output<bool>? ancestorHasActiveKeyVersion,
    pulumi.Output<bool>? enrolledAncestor,
    pulumi.Output<List<AccessApprovalSettingsEnrolledService>>? enrolledServices,
    pulumi.Output<bool>? invalidKeyVersion,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? notificationEmails,
    pulumi.Output<String>? project,
    pulumi.Output<String>? projectId,
  }) :
      activeKeyVersion = pulumi.Input.asOptionalInput<String>(activeKeyVersion),
      ancestorHasActiveKeyVersion = pulumi.Input.asOptionalInput<bool>(ancestorHasActiveKeyVersion),
      enrolledAncestor = pulumi.Input.asOptionalInput<bool>(enrolledAncestor),
      enrolledServices = pulumi.Input.asOptionalInput<List<AccessApprovalSettingsEnrolledService>>(enrolledServices),
      invalidKeyVersion = pulumi.Input.asOptionalInput<bool>(invalidKeyVersion),
      name = pulumi.Input.asOptionalInput<String>(name),
      notificationEmails = pulumi.Input.asOptionalInput<List<String>>(notificationEmails),
      project = pulumi.Input.asOptionalInput<String>(project),
      projectId = pulumi.Input.asOptionalInput<String>(projectId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeKeyVersion': ?activeKeyVersion,
      'ancestorHasActiveKeyVersion': ?ancestorHasActiveKeyVersion,
      'enrolledAncestor': ?enrolledAncestor,
      'enrolledServices': ?pulumi.Input.mapOptionalInputValue<List<AccessApprovalSettingsEnrolledService>, List<Map<String, dynamic>>>(enrolledServices, (value) => pulumi.Input.encodeList<AccessApprovalSettingsEnrolledService, Map<String, dynamic>>(value, (value) => value.toMap())),
      'invalidKeyVersion': ?invalidKeyVersion,
      'name': ?name,
      'notificationEmails': ?notificationEmails,
      'project': ?project,
      'projectId': ?projectId,
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
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
    );
  }
}

