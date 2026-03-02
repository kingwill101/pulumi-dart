// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registration_contact_settings.dart';
import 'registration_dns_settings.dart';
import 'registration_management_settings.dart';
import 'registration_yearly_price.dart';

/// Input properties used for looking up and filtering Registration resources.
class RegistrationState {
  /// The list of contact notices that the caller acknowledges. Possible value is PUBLIC_CONTACT_DATA_ACKNOWLEDGEMENT
  final pulumi.Input<List<String>>? contactNotices;
  /// Required. Settings for contact information linked to the Registration.
  /// Structure is documented below.
  final pulumi.Input<RegistrationContactSettings>? contactSettings;
  /// Output only. Time at which the automation was created.
  final pulumi.Input<String>? createTime;
  /// Settings controlling the DNS configuration of the Registration.
  /// Structure is documented below.
  final pulumi.Input<RegistrationDnsSettings>? dnsSettings;
  /// Required. The domain name. Unicode domain names must be expressed in Punycode format.
  final pulumi.Input<String>? domainName;
  /// The list of domain notices that you acknowledge. Possible value is HSTS_PRELOADED
  final pulumi.Input<List<String>>? domainNotices;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Output only. Time at which the automation was updated.
  final pulumi.Input<String>? expireTime;
  /// Output only. The set of issues with the Registration that require attention.
  final pulumi.Input<List<String>>? issues;
  /// Set of labels associated with the Registration.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location for the resource
  final pulumi.Input<String>? location;
  /// Settings for management of the Registration, including renewal, billing, and transfer
  /// Structure is documented below.
  final pulumi.Input<RegistrationManagementSettings>? managementSettings;
  /// Output only. Name of the Registration resource, in the format projects/*/locations/*/registrations/<domain_name>.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Output only. The reason the domain registration failed. Only set for domains in REGISTRATION_FAILED state.
  final pulumi.Input<String>? registerFailureReason;
  /// Output only. The current state of the Registration.
  final pulumi.Input<String>? state;
  /// Output only. Set of options for the contactSettings.privacy field that this Registration supports.
  final pulumi.Input<List<String>>? supportedPrivacies;
  /// Required. Yearly price to register or renew the domain. The value that should be put here can be obtained from
  /// registrations.retrieveRegisterParameters or registrations.searchDomains calls.
  /// Structure is documented below.
  final pulumi.Input<RegistrationYearlyPrice>? yearlyPrice;

  /// Creates a new [RegistrationState].
  /// [contactNotices] The list of contact notices that the caller acknowledges. Possible value is PUBLIC_CONTACT_DATA_ACKNOWLEDGEMENT
  /// [contactSettings] Required. Settings for contact information linked to the Registration.
  /// [createTime] Output only. Time at which the automation was created.
  /// [dnsSettings] Settings controlling the DNS configuration of the Registration.
  /// [domainName] Required. The domain name. Unicode domain names must be expressed in Punycode format.
  /// [domainNotices] The list of domain notices that you acknowledge. Possible value is HSTS_PRELOADED
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [expireTime] Output only. Time at which the automation was updated.
  /// [issues] Output only. The set of issues with the Registration that require attention.
  /// [labels] Set of labels associated with the Registration.
  /// [location] The location for the resource
  /// [managementSettings] Settings for management of the Registration, including renewal, billing, and transfer
  /// [name] Output only. Name of the Registration resource, in the format projects/*/locations/*/registrations/<domain_name>.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [registerFailureReason] Output only. The reason the domain registration failed. Only set for domains in REGISTRATION_FAILED state.
  /// [state] Output only. The current state of the Registration.
  /// [supportedPrivacies] Output only. Set of options for the contactSettings.privacy field that this Registration supports.
  /// [yearlyPrice] Required. Yearly price to register or renew the domain. The value that should be put here can be obtained from
  RegistrationState({
    this.contactNotices,
    this.contactSettings,
    this.createTime,
    this.dnsSettings,
    this.domainName,
    this.domainNotices,
    this.effectiveLabels,
    this.expireTime,
    this.issues,
    this.labels,
    this.location,
    this.managementSettings,
    this.name,
    this.project,
    this.pulumiLabels,
    this.registerFailureReason,
    this.state,
    this.supportedPrivacies,
    this.yearlyPrice,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactNotices': ?contactNotices,
      'contactSettings': ?pulumi.Input.mapOptionalInputValue<RegistrationContactSettings, Map<String, dynamic>>(contactSettings, (value) => value.toMap()),
      'createTime': ?createTime,
      'dnsSettings': ?pulumi.Input.mapOptionalInputValue<RegistrationDnsSettings, Map<String, dynamic>>(dnsSettings, (value) => value.toMap()),
      'domainName': ?domainName,
      'domainNotices': ?domainNotices,
      'effectiveLabels': ?effectiveLabels,
      'expireTime': ?expireTime,
      'issues': ?issues,
      'labels': ?labels,
      'location': ?location,
      'managementSettings': ?pulumi.Input.mapOptionalInputValue<RegistrationManagementSettings, Map<String, dynamic>>(managementSettings, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'registerFailureReason': ?registerFailureReason,
      'state': ?state,
      'supportedPrivacies': ?supportedPrivacies,
      'yearlyPrice': ?pulumi.Input.mapOptionalInputValue<RegistrationYearlyPrice, Map<String, dynamic>>(yearlyPrice, (value) => value.toMap()),
    };
  }

  factory RegistrationState.fromMap(Map<String, dynamic> map) {
    return RegistrationState(
      contactNotices: map['contactNotices'] == null ? null : ((map['contactNotices'] as List).cast<String>()).input(),
      contactSettings: map['contactSettings'] == null ? null : (RegistrationContactSettings.fromMap((map['contactSettings'] as Map).cast<String, dynamic>())).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      dnsSettings: map['dnsSettings'] == null ? null : (RegistrationDnsSettings.fromMap((map['dnsSettings'] as Map).cast<String, dynamic>())).input(),
      domainName: map['domainName'] == null ? null : (map['domainName'] as String).input(),
      domainNotices: map['domainNotices'] == null ? null : ((map['domainNotices'] as List).cast<String>()).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      expireTime: map['expireTime'] == null ? null : (map['expireTime'] as String).input(),
      issues: map['issues'] == null ? null : ((map['issues'] as List).cast<String>()).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      managementSettings: map['managementSettings'] == null ? null : (RegistrationManagementSettings.fromMap((map['managementSettings'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
      registerFailureReason: map['registerFailureReason'] == null ? null : (map['registerFailureReason'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      supportedPrivacies: map['supportedPrivacies'] == null ? null : ((map['supportedPrivacies'] as List).cast<String>()).input(),
      yearlyPrice: map['yearlyPrice'] == null ? null : (RegistrationYearlyPrice.fromMap((map['yearlyPrice'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

