// ignore_for_file: unused_element, unnecessary_cast

import 'contact_settings_response_domains_v1beta1.dart';
import 'dns_settings_response_domains_v1beta1.dart';
import 'management_settings_response_domains_v1beta1.dart';

/// Result data returned by getRegistration.
class GetRegistrationDomainsV1beta1Result {
  /// Settings for contact information linked to the `Registration`. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureContactSettings` method.
  final ContactSettingsResponseDomainsV1beta1? contactSettings;
  /// The creation timestamp of the `Registration` resource.
  final String? createTime;
  /// Settings controlling the DNS configuration of the `Registration`. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureDnsSettings` method.
  final DnsSettingsResponseDomainsV1beta1? dnsSettings;
  /// Immutable. The domain name. Unicode domain names must be expressed in Punycode format.
  final String? domainName;
  /// The expiration timestamp of the `Registration`.
  final String? expireTime;
  /// The set of issues with the `Registration` that require attention.
  final List<String>? issues;
  /// Set of labels associated with the `Registration`.
  final Map<String, String>? labels;
  /// Settings for management of the `Registration`, including renewal, billing, and transfer. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureManagementSettings` method.
  final ManagementSettingsResponseDomainsV1beta1? managementSettings;
  /// Name of the `Registration` resource, in the format `projects/*/locations/*/registrations/`.
  final String? name;
  /// Pending contact settings for the `Registration`. Updates to the `contact_settings` field that change its `registrant_contact` or `privacy` fields require email confirmation by the `registrant_contact` before taking effect. This field is set only if there are pending updates to the `contact_settings` that have not been confirmed. To confirm the changes, the `registrant_contact` must follow the instructions in the email they receive.
  final ContactSettingsResponseDomainsV1beta1? pendingContactSettings;
  /// The reason the domain registration failed. Only set for domains in REGISTRATION_FAILED state.
  final String? registerFailureReason;
  /// The state of the `Registration`
  final String? state;
  /// Set of options for the `contact_settings.privacy` field that this `Registration` supports.
  final List<String>? supportedPrivacy;
  /// Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.com/domains/docs/deprecations/feature-deprecations) The reason the domain transfer failed. Only set for domains in TRANSFER_FAILED state.
  final String? transferFailureReason;

  /// Creates a new [GetRegistrationDomainsV1beta1Result].
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
  const GetRegistrationDomainsV1beta1Result({
    this.contactSettings,
    this.createTime,
    this.dnsSettings,
    this.domainName,
    this.expireTime,
    this.issues,
    this.labels,
    this.managementSettings,
    this.name,
    this.pendingContactSettings,
    this.registerFailureReason,
    this.state,
    this.supportedPrivacy,
    this.transferFailureReason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactSettings': ?contactSettings?.toMap(),
      'createTime': ?createTime,
      'dnsSettings': ?dnsSettings?.toMap(),
      'domainName': ?domainName,
      'expireTime': ?expireTime,
      'issues': ?issues,
      'labels': ?labels,
      'managementSettings': ?managementSettings?.toMap(),
      'name': ?name,
      'pendingContactSettings': ?pendingContactSettings?.toMap(),
      'registerFailureReason': ?registerFailureReason,
      'state': ?state,
      'supportedPrivacy': ?supportedPrivacy,
      'transferFailureReason': ?transferFailureReason,
    };
  }

  factory GetRegistrationDomainsV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetRegistrationDomainsV1beta1Result(
      contactSettings: (() { final guardedValue = map['contactSettings']; if (guardedValue == null) return null; return ContactSettingsResponseDomainsV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dnsSettings: (() { final guardedValue = map['dnsSettings']; if (guardedValue == null) return null; return DnsSettingsResponseDomainsV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      issues: (() { final guardedValue = map['issues']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      managementSettings: (() { final guardedValue = map['managementSettings']; if (guardedValue == null) return null; return ManagementSettingsResponseDomainsV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pendingContactSettings: (() { final guardedValue = map['pendingContactSettings']; if (guardedValue == null) return null; return ContactSettingsResponseDomainsV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      registerFailureReason: (() { final guardedValue = map['registerFailureReason']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      supportedPrivacy: (() { final guardedValue = map['supportedPrivacy']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      transferFailureReason: (() { final guardedValue = map['transferFailureReason']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
