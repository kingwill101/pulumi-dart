// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_settings_domains_v1alpha2.dart';
import 'dns_settings_domains_v1alpha2.dart';
import 'management_settings_domains_v1alpha2.dart';
import 'money_domains_v1alpha2.dart';
import 'registration_contact_notices_item_domains_v1alpha2.dart';
import 'registration_domain_notices_item_domains_v1alpha2.dart';

/// {@template pulumi_domains_v1alpha2_registration_domains_v1alpha2_args_doc}
/// The set of arguments for Registration.
/// {@endtemplate}
/// {@macro pulumi_domains_v1alpha2_registration_domains_v1alpha2_args_doc}
class RegistrationDomainsV1alpha2Args {
  /// The list of contact notices that the caller acknowledges. The notices needed here depend on the values specified in `registration.contact_settings`.
  final pulumi.Input<List<RegistrationContactNoticesItemDomainsV1alpha2>>? contactNotices;
  /// Settings for contact information linked to the `Registration`. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureContactSettings` method.
  final pulumi.Input<ContactSettingsDomainsV1alpha2> contactSettings;
  /// Settings controlling the DNS configuration of the `Registration`. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureDnsSettings` method.
  final pulumi.Input<DnsSettingsDomainsV1alpha2>? dnsSettings;
  /// Immutable. The domain name. Unicode domain names must be expressed in Punycode format.
  final pulumi.Input<String> domainName;
  /// The list of domain notices that you acknowledge. Call `RetrieveRegisterParameters` to see the notices that need acknowledgement.
  final pulumi.Input<List<RegistrationDomainNoticesItemDomainsV1alpha2>>? domainNotices;
  /// Set of labels associated with the `Registration`.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Settings for management of the `Registration`, including renewal, billing, and transfer. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureManagementSettings` method.
  final pulumi.Input<ManagementSettingsDomainsV1alpha2>? managementSettings;
  final pulumi.Input<String>? project;
  /// When true, only validation is performed, without actually registering the domain. Follows: https://cloud.google.com/apis/design/design_patterns#request_validation
  final pulumi.Input<bool>? validateOnly;
  /// Yearly price to register or renew the domain. The value that should be put here can be obtained from RetrieveRegisterParameters or SearchDomains calls.
  final pulumi.Input<MoneyDomainsV1alpha2> yearlyPrice;

  /// Creates a new [RegistrationDomainsV1alpha2Args].
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
  RegistrationDomainsV1alpha2Args({
    pulumi.Output<List<RegistrationContactNoticesItemDomainsV1alpha2>>? contactNotices,
    required pulumi.Output<ContactSettingsDomainsV1alpha2> contactSettings,
    pulumi.Output<DnsSettingsDomainsV1alpha2>? dnsSettings,
    required pulumi.Output<String> domainName,
    pulumi.Output<List<RegistrationDomainNoticesItemDomainsV1alpha2>>? domainNotices,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<ManagementSettingsDomainsV1alpha2>? managementSettings,
    pulumi.Output<String>? project,
    pulumi.Output<bool>? validateOnly,
    required pulumi.Output<MoneyDomainsV1alpha2> yearlyPrice,
  }) :
      contactNotices = pulumi.Input.asOptionalInput<List<RegistrationContactNoticesItemDomainsV1alpha2>>(contactNotices),
      contactSettings = pulumi.Input.asInput<ContactSettingsDomainsV1alpha2>(contactSettings),
      dnsSettings = pulumi.Input.asOptionalInput<DnsSettingsDomainsV1alpha2>(dnsSettings),
      domainName = pulumi.Input.asInput<String>(domainName),
      domainNotices = pulumi.Input.asOptionalInput<List<RegistrationDomainNoticesItemDomainsV1alpha2>>(domainNotices),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      managementSettings = pulumi.Input.asOptionalInput<ManagementSettingsDomainsV1alpha2>(managementSettings),
      project = pulumi.Input.asOptionalInput<String>(project),
      validateOnly = pulumi.Input.asOptionalInput<bool>(validateOnly),
      yearlyPrice = pulumi.Input.asInput<MoneyDomainsV1alpha2>(yearlyPrice);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactNotices': ?pulumi.Input.mapOptionalInputValue<List<RegistrationContactNoticesItemDomainsV1alpha2>, List<String>>(contactNotices, (value) => pulumi.Input.encodeList<RegistrationContactNoticesItemDomainsV1alpha2, String>(value, (value) => value.value)),
      'contactSettings': pulumi.Input.mapInputValue<ContactSettingsDomainsV1alpha2, Map<String, dynamic>>(contactSettings, (value) => value.toMap()),
      'dnsSettings': ?pulumi.Input.mapOptionalInputValue<DnsSettingsDomainsV1alpha2, Map<String, dynamic>>(dnsSettings, (value) => value.toMap()),
      'domainName': domainName,
      'domainNotices': ?pulumi.Input.mapOptionalInputValue<List<RegistrationDomainNoticesItemDomainsV1alpha2>, List<String>>(domainNotices, (value) => pulumi.Input.encodeList<RegistrationDomainNoticesItemDomainsV1alpha2, String>(value, (value) => value.value)),
      'labels': ?labels,
      'location': ?location,
      'managementSettings': ?pulumi.Input.mapOptionalInputValue<ManagementSettingsDomainsV1alpha2, Map<String, dynamic>>(managementSettings, (value) => value.toMap()),
      'project': ?project,
      'validateOnly': ?validateOnly,
      'yearlyPrice': pulumi.Input.mapInputValue<MoneyDomainsV1alpha2, Map<String, dynamic>>(yearlyPrice, (value) => value.toMap()),
    };
  }

  factory RegistrationDomainsV1alpha2Args.fromMap(Map<String, dynamic> map) {
    return RegistrationDomainsV1alpha2Args(
      contactNotices: map['contactNotices'] == null ? null : pulumi.Output.create<List<RegistrationContactNoticesItemDomainsV1alpha2>>(pulumi.Input.decodeList<RegistrationContactNoticesItemDomainsV1alpha2>(map['contactNotices'], (value) => RegistrationContactNoticesItemDomainsV1alpha2.fromValue(value as String))),
      contactSettings: pulumi.Output.create<ContactSettingsDomainsV1alpha2>(ContactSettingsDomainsV1alpha2.fromMap((map['contactSettings'] as Map).cast<String, dynamic>())),
      dnsSettings: map['dnsSettings'] == null ? null : pulumi.Output.create<DnsSettingsDomainsV1alpha2>(DnsSettingsDomainsV1alpha2.fromMap((map['dnsSettings'] as Map).cast<String, dynamic>())),
      domainName: pulumi.Output.create<String>(map['domainName'] as String),
      domainNotices: map['domainNotices'] == null ? null : pulumi.Output.create<List<RegistrationDomainNoticesItemDomainsV1alpha2>>(pulumi.Input.decodeList<RegistrationDomainNoticesItemDomainsV1alpha2>(map['domainNotices'], (value) => RegistrationDomainNoticesItemDomainsV1alpha2.fromValue(value as String))),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managementSettings: map['managementSettings'] == null ? null : pulumi.Output.create<ManagementSettingsDomainsV1alpha2>(ManagementSettingsDomainsV1alpha2.fromMap((map['managementSettings'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      validateOnly: map['validateOnly'] == null ? null : pulumi.Output.create<bool>(map['validateOnly'] as bool),
      yearlyPrice: pulumi.Output.create<MoneyDomainsV1alpha2>(MoneyDomainsV1alpha2.fromMap((map['yearlyPrice'] as Map).cast<String, dynamic>())),
    );
  }
}

