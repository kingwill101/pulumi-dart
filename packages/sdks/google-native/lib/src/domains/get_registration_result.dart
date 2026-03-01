// ignore_for_file: unused_element, unnecessary_cast

import 'contact_settings_response.dart';
import 'dns_settings_response.dart';
import 'management_settings_response.dart';

/// Result data returned by getRegistration.
class GetRegistrationResult {
  /// Settings for contact information linked to the `Registration`. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureContactSettings` method.
  final ContactSettingsResponse contactSettings;
  /// The creation timestamp of the `Registration` resource.
  final String createTime;
  /// Settings controlling the DNS configuration of the `Registration`. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureDnsSettings` method.
  final DnsSettingsResponse dnsSettings;
  /// Immutable. The domain name. Unicode domain names must be expressed in Punycode format.
  final String domainName;
  /// The expiration timestamp of the `Registration`.
  final String expireTime;
  /// The set of issues with the `Registration` that require attention.
  final List<String> issues;
  /// Set of labels associated with the `Registration`.
  final Map<String, String> labels;
  /// Settings for management of the `Registration`, including renewal, billing, and transfer. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureManagementSettings` method.
  final ManagementSettingsResponse managementSettings;
  /// Name of the `Registration` resource, in the format `projects/*/locations/*/registrations/`.
  final String name;
  /// Pending contact settings for the `Registration`. Updates to the `contact_settings` field that change its `registrant_contact` or `privacy` fields require email confirmation by the `registrant_contact` before taking effect. This field is set only if there are pending updates to the `contact_settings` that have not been confirmed. To confirm the changes, the `registrant_contact` must follow the instructions in the email they receive.
  final ContactSettingsResponse pendingContactSettings;
  /// The reason the domain registration failed. Only set for domains in REGISTRATION_FAILED state.
  final String registerFailureReason;
  /// The state of the `Registration`
  final String state;
  /// Set of options for the `contact_settings.privacy` field that this `Registration` supports.
  final List<String> supportedPrivacy;
  /// Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.com/domains/docs/deprecations/feature-deprecations) The reason the domain transfer failed. Only set for domains in TRANSFER_FAILED state.
  final String transferFailureReason;

  /// Creates a new [GetRegistrationResult].
  /// [contactSettings] Settings for contact information linked to the `Registration`. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureContactSettings` method.
  /// [createTime] The creation timestamp of the `Registration` resource.
  /// [dnsSettings] Settings controlling the DNS configuration of the `Registration`. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureDnsSettings` method.
  /// [domainName] Immutable. The domain name. Unicode domain names must be expressed in Punycode format.
  /// [expireTime] The expiration timestamp of the `Registration`.
  /// [issues] The set of issues with the `Registration` that require attention.
  /// [labels] Set of labels associated with the `Registration`.
  /// [managementSettings] Settings for management of the `Registration`, including renewal, billing, and transfer. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureManagementSettings` method.
  /// [name] Name of the `Registration` resource, in the format `projects/*/locations/*/registrations/`.
  /// [pendingContactSettings] Pending contact settings for the `Registration`. Updates to the `contact_settings` field that change its `registrant_contact` or `privacy` fields require email confirmation by the `registrant_contact` before taking effect. This field is set only if there are pending updates to the `contact_settings` that have not been confirmed. To confirm the changes, the `registrant_contact` must follow the instructions in the email they receive.
  /// [registerFailureReason] The reason the domain registration failed. Only set for domains in REGISTRATION_FAILED state.
  /// [state] The state of the `Registration`
  /// [supportedPrivacy] Set of options for the `contact_settings.privacy` field that this `Registration` supports.
  /// [transferFailureReason] Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.com/domains/docs/deprecations/feature-deprecations) The reason the domain transfer failed. Only set for domains in TRANSFER_FAILED state.
  GetRegistrationResult({
    required this.contactSettings,
    required this.createTime,
    required this.dnsSettings,
    required this.domainName,
    required this.expireTime,
    required this.issues,
    required this.labels,
    required this.managementSettings,
    required this.name,
    required this.pendingContactSettings,
    required this.registerFailureReason,
    required this.state,
    required this.supportedPrivacy,
    required this.transferFailureReason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactSettings': contactSettings.toMap(),
      'createTime': createTime,
      'dnsSettings': dnsSettings.toMap(),
      'domainName': domainName,
      'expireTime': expireTime,
      'issues': issues,
      'labels': labels,
      'managementSettings': managementSettings.toMap(),
      'name': name,
      'pendingContactSettings': pendingContactSettings.toMap(),
      'registerFailureReason': registerFailureReason,
      'state': state,
      'supportedPrivacy': supportedPrivacy,
      'transferFailureReason': transferFailureReason,
    };
  }

  factory GetRegistrationResult.fromMap(Map<String, dynamic> map) {
    return GetRegistrationResult(
      contactSettings: ContactSettingsResponse.fromMap((map['contactSettings'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      dnsSettings: DnsSettingsResponse.fromMap((map['dnsSettings'] as Map).cast<String, dynamic>()),
      domainName: map['domainName'] as String,
      expireTime: map['expireTime'] as String,
      issues: (map['issues'] as List).cast<String>(),
      labels: (map['labels'] as Map).cast<String, String>(),
      managementSettings: ManagementSettingsResponse.fromMap((map['managementSettings'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      pendingContactSettings: ContactSettingsResponse.fromMap((map['pendingContactSettings'] as Map).cast<String, dynamic>()),
      registerFailureReason: map['registerFailureReason'] as String,
      state: map['state'] as String,
      supportedPrivacy: (map['supportedPrivacy'] as List).cast<String>(),
      transferFailureReason: map['transferFailureReason'] as String,
    );
  }
}

