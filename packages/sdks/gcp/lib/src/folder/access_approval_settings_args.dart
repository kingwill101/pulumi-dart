// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_approval_settings_enrolled_service.dart';

/// {@template pulumi_folder_access_approval_settings_access_approval_settings_args_doc}
/// The set of arguments for AccessApprovalSettings.
/// {@endtemplate}
/// {@macro pulumi_folder_access_approval_settings_access_approval_settings_args_doc}
class AccessApprovalSettingsArgs {
  /// The asymmetric crypto key version to use for signing approval requests.
  /// Empty activeKeyVersion indicates that a Google-managed key should be used for signing.
  /// This property will be ignored if set by an ancestor of the resource, and new non-empty values may not be set.
  final pulumi.Input<String>? activeKeyVersion;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// A list of Google Cloud Services for which the given resource has Access Approval enrolled.
  /// Access requests for the resource given by name against any of these services contained here will be required
  /// to have explicit approval. Enrollment can only be done on an all or nothing basis.
  /// A maximum of 10 enrolled services will be enforced, to be expanded as the set of supported services is expanded.
  /// Structure is documented below.
  final pulumi.Input<List<AccessApprovalSettingsEnrolledService>> enrolledServices;
  /// ID of the folder of the access approval settings.
  final pulumi.Input<String> folderId;
  /// A list of email addresses to which notifications relating to approval requests should be sent.
  /// Notifications relating to a resource will be sent to all emails in the settings of ancestor
  /// resources of that resource. A maximum of 50 email addresses are allowed.
  final pulumi.Input<List<String>>? notificationEmails;

  /// Creates a new [AccessApprovalSettingsArgs].
  /// [activeKeyVersion] The asymmetric crypto key version to use for signing approval requests.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [enrolledServices] A list of Google Cloud Services for which the given resource has Access Approval enrolled.
  /// [folderId] ID of the folder of the access approval settings.
  /// [notificationEmails] A list of email addresses to which notifications relating to approval requests should be sent.
  const AccessApprovalSettingsArgs({
    this.activeKeyVersion,
    this.deletionPolicy,
    required this.enrolledServices,
    required this.folderId,
    this.notificationEmails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeKeyVersion': ?activeKeyVersion,
      'deletionPolicy': ?deletionPolicy,
      'enrolledServices': pulumi.Input.mapInputValue<List<AccessApprovalSettingsEnrolledService>, List<Map<String, dynamic>>>(enrolledServices, (value) => pulumi.Input.encodeList<AccessApprovalSettingsEnrolledService, Map<String, dynamic>>(value, (value) => value.toMap())),
      'folderId': folderId,
      'notificationEmails': ?notificationEmails,
    };
  }

  factory AccessApprovalSettingsArgs.fromMap(Map<String, dynamic> map) {
    return AccessApprovalSettingsArgs(
      activeKeyVersion: (() { final guardedValue = map['activeKeyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enrolledServices: pulumi.Input.fromValue(pulumi.Input.decodeList<AccessApprovalSettingsEnrolledService>(map['enrolledServices']!, (value) => AccessApprovalSettingsEnrolledService.fromMap((value as Map).cast<String, dynamic>()))),
      folderId: pulumi.Input.fromValue(map['folderId'] as String),
      notificationEmails: (() { final guardedValue = map['notificationEmails']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
