// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_settings_domains_v1beta1.dart';
import 'dns_settings_domains_v1beta1.dart';
import 'management_settings_domains_v1beta1.dart';
import 'money_domains_v1beta1.dart';
import 'registration_contact_notices_item_domains_v1beta1.dart';
import 'registration_domain_notices_item_domains_v1beta1.dart';

/// {@template pulumi_domains_v1beta1_registration_domains_v1beta1_args_doc}
/// The set of arguments for Registration.
/// {@endtemplate}
/// {@macro pulumi_domains_v1beta1_registration_domains_v1beta1_args_doc}
class RegistrationDomainsV1beta1Args {
  /// The list of contact notices that the caller acknowledges. The notices needed here depend on the values specified in `registration.contact_settings`.
  final pulumi.Input<List<RegistrationContactNoticesItemDomainsV1beta1>>? contactNotices;
  /// Settings for contact information linked to the `Registration`. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureContactSettings` method.
  final pulumi.Input<ContactSettingsDomainsV1beta1> contactSettings;
  /// Settings controlling the DNS configuration of the `Registration`. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureDnsSettings` method.
  final pulumi.Input<DnsSettingsDomainsV1beta1>? dnsSettings;
  /// Immutable. The domain name. Unicode domain names must be expressed in Punycode format.
  final pulumi.Input<String> domainName;
  /// The list of domain notices that you acknowledge. Call `RetrieveRegisterParameters` to see the notices that need acknowledgement.
  final pulumi.Input<List<RegistrationDomainNoticesItemDomainsV1beta1>>? domainNotices;
  /// Set of labels associated with the `Registration`.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Settings for management of the `Registration`, including renewal, billing, and transfer. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureManagementSettings` method.
  final pulumi.Input<ManagementSettingsDomainsV1beta1>? managementSettings;
  final pulumi.Input<String>? project;
  /// When true, only validation is performed, without actually registering the domain. Follows: https://cloud.google.com/apis/design/design_patterns#request_validation
  final pulumi.Input<bool>? validateOnly;
  /// Yearly price to register or renew the domain. The value that should be put here can be obtained from RetrieveRegisterParameters or SearchDomains calls.
  final pulumi.Input<MoneyDomainsV1beta1> yearlyPrice;

  /// Creates a new [RegistrationDomainsV1beta1Args].
  /// [contactNotices] The list of contact notices that the caller acknowledges. The notices needed here depend on the values specified in `registration.contact_settings`.
  /// [contactSettings] Settings for contact information linked to the `Registration`. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureContactSettings` method.
  /// [dnsSettings] Settings controlling the DNS configuration of the `Registration`. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureDnsSettings` method.
  /// [domainName] Immutable. The domain name. Unicode domain names must be expressed in Punycode format.
  /// [domainNotices] The list of domain notices that you acknowledge. Call `RetrieveRegisterParameters` to see the notices that need acknowledgement.
  /// [labels] Set of labels associated with the `Registration`.
  /// [location] Optional.
  /// [managementSettings] Settings for management of the `Registration`, including renewal, billing, and transfer. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureManagementSettings` method.
  /// [project] Optional.
  /// [validateOnly] When true, only validation is performed, without actually registering the domain. Follows: https://cloud.google.com/apis/design/design_patterns#request_validation
  /// [yearlyPrice] Yearly price to register or renew the domain. The value that should be put here can be obtained from RetrieveRegisterParameters or SearchDomains calls.
  RegistrationDomainsV1beta1Args({
    this.contactNotices,
    required this.contactSettings,
    this.dnsSettings,
    required this.domainName,
    this.domainNotices,
    this.labels,
    this.location,
    this.managementSettings,
    this.project,
    this.validateOnly,
    required this.yearlyPrice,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactNotices': ?pulumi.Input.mapOptionalInputValue<List<RegistrationContactNoticesItemDomainsV1beta1>, List<String>>(contactNotices, (value) => pulumi.Input.encodeList<RegistrationContactNoticesItemDomainsV1beta1, String>(value, (value) => value.value)),
      'contactSettings': pulumi.Input.mapInputValue<ContactSettingsDomainsV1beta1, Map<String, dynamic>>(contactSettings, (value) => value.toMap()),
      'dnsSettings': ?pulumi.Input.mapOptionalInputValue<DnsSettingsDomainsV1beta1, Map<String, dynamic>>(dnsSettings, (value) => value.toMap()),
      'domainName': domainName,
      'domainNotices': ?pulumi.Input.mapOptionalInputValue<List<RegistrationDomainNoticesItemDomainsV1beta1>, List<String>>(domainNotices, (value) => pulumi.Input.encodeList<RegistrationDomainNoticesItemDomainsV1beta1, String>(value, (value) => value.value)),
      'labels': ?labels,
      'location': ?location,
      'managementSettings': ?pulumi.Input.mapOptionalInputValue<ManagementSettingsDomainsV1beta1, Map<String, dynamic>>(managementSettings, (value) => value.toMap()),
      'project': ?project,
      'validateOnly': ?validateOnly,
      'yearlyPrice': pulumi.Input.mapInputValue<MoneyDomainsV1beta1, Map<String, dynamic>>(yearlyPrice, (value) => value.toMap()),
    };
  }

  factory RegistrationDomainsV1beta1Args.fromMap(Map<String, dynamic> map) {
    return RegistrationDomainsV1beta1Args(
      contactNotices: map['contactNotices'] == null ? null : (pulumi.Input.decodeList<RegistrationContactNoticesItemDomainsV1beta1>(map['contactNotices'], (value) => RegistrationContactNoticesItemDomainsV1beta1.fromValue(value as String))).input(),
      contactSettings: (ContactSettingsDomainsV1beta1.fromMap((map['contactSettings'] as Map).cast<String, dynamic>())).input(),
      dnsSettings: map['dnsSettings'] == null ? null : (DnsSettingsDomainsV1beta1.fromMap((map['dnsSettings'] as Map).cast<String, dynamic>())).input(),
      domainName: (map['domainName'] as String).input(),
      domainNotices: map['domainNotices'] == null ? null : (pulumi.Input.decodeList<RegistrationDomainNoticesItemDomainsV1beta1>(map['domainNotices'], (value) => RegistrationDomainNoticesItemDomainsV1beta1.fromValue(value as String))).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      managementSettings: map['managementSettings'] == null ? null : (ManagementSettingsDomainsV1beta1.fromMap((map['managementSettings'] as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      validateOnly: map['validateOnly'] == null ? null : (map['validateOnly'] as bool).input(),
      yearlyPrice: (MoneyDomainsV1beta1.fromMap((map['yearlyPrice'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

