// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registration_contact_settings.dart';
import 'registration_dns_settings.dart';
import 'registration_management_settings.dart';
import 'registration_yearly_price.dart';

/// {@template pulumi_clouddomains_registration_registration_args_doc}
/// The set of arguments for Registration.
/// {@endtemplate}
/// {@macro pulumi_clouddomains_registration_registration_args_doc}
class RegistrationArgs {
  /// The list of contact notices that the caller acknowledges. Possible value is PUBLIC_CONTACT_DATA_ACKNOWLEDGEMENT
  final pulumi.Input<List<String>>? contactNotices;
  /// Required. Settings for contact information linked to the Registration.
  /// Structure is documented below.
  final pulumi.Input<RegistrationContactSettings> contactSettings;
  /// Settings controlling the DNS configuration of the Registration.
  /// Structure is documented below.
  final pulumi.Input<RegistrationDnsSettings>? dnsSettings;
  /// Required. The domain name. Unicode domain names must be expressed in Punycode format.
  final pulumi.Input<String> domainName;
  /// The list of domain notices that you acknowledge. Possible value is HSTS_PRELOADED
  final pulumi.Input<List<String>>? domainNotices;
  /// Set of labels associated with the Registration.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location for the resource
  final pulumi.Input<String> location;
  /// Settings for management of the Registration, including renewal, billing, and transfer
  /// Structure is documented below.
  final pulumi.Input<RegistrationManagementSettings>? managementSettings;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Required. Yearly price to register or renew the domain. The value that should be put here can be obtained from
  /// registrations.retrieveRegisterParameters or registrations.searchDomains calls.
  /// Structure is documented below.
  final pulumi.Input<RegistrationYearlyPrice> yearlyPrice;

  /// Creates a new [RegistrationArgs].
  /// [contactNotices] The list of contact notices that the caller acknowledges. Possible value is PUBLIC_CONTACT_DATA_ACKNOWLEDGEMENT
  /// [contactSettings] Required. Settings for contact information linked to the Registration.
  /// [dnsSettings] Settings controlling the DNS configuration of the Registration.
  /// [domainName] Required. The domain name. Unicode domain names must be expressed in Punycode format.
  /// [domainNotices] The list of domain notices that you acknowledge. Possible value is HSTS_PRELOADED
  /// [labels] Set of labels associated with the Registration.
  /// [location] The location for the resource
  /// [managementSettings] Settings for management of the Registration, including renewal, billing, and transfer
  /// [project] The ID of the project in which the resource belongs.
  /// [yearlyPrice] Required. Yearly price to register or renew the domain. The value that should be put here can be obtained from
  RegistrationArgs({
    pulumi.Output<List<String>>? contactNotices,
    required pulumi.Output<RegistrationContactSettings> contactSettings,
    pulumi.Output<RegistrationDnsSettings>? dnsSettings,
    required pulumi.Output<String> domainName,
    pulumi.Output<List<String>>? domainNotices,
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<String> location,
    pulumi.Output<RegistrationManagementSettings>? managementSettings,
    pulumi.Output<String>? project,
    required pulumi.Output<RegistrationYearlyPrice> yearlyPrice,
  }) :
      contactNotices = pulumi.Input.asOptionalInput<List<String>>(contactNotices),
      contactSettings = pulumi.Input.asInput<RegistrationContactSettings>(contactSettings),
      dnsSettings = pulumi.Input.asOptionalInput<RegistrationDnsSettings>(dnsSettings),
      domainName = pulumi.Input.asInput<String>(domainName),
      domainNotices = pulumi.Input.asOptionalInput<List<String>>(domainNotices),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asInput<String>(location),
      managementSettings = pulumi.Input.asOptionalInput<RegistrationManagementSettings>(managementSettings),
      project = pulumi.Input.asOptionalInput<String>(project),
      yearlyPrice = pulumi.Input.asInput<RegistrationYearlyPrice>(yearlyPrice);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactNotices': ?contactNotices,
      'contactSettings': pulumi.Input.mapInputValue<RegistrationContactSettings, Map<String, dynamic>>(contactSettings, (value) => value.toMap()),
      'dnsSettings': ?pulumi.Input.mapOptionalInputValue<RegistrationDnsSettings, Map<String, dynamic>>(dnsSettings, (value) => value.toMap()),
      'domainName': domainName,
      'domainNotices': ?domainNotices,
      'labels': ?labels,
      'location': location,
      'managementSettings': ?pulumi.Input.mapOptionalInputValue<RegistrationManagementSettings, Map<String, dynamic>>(managementSettings, (value) => value.toMap()),
      'project': ?project,
      'yearlyPrice': pulumi.Input.mapInputValue<RegistrationYearlyPrice, Map<String, dynamic>>(yearlyPrice, (value) => value.toMap()),
    };
  }

  factory RegistrationArgs.fromMap(Map<String, dynamic> map) {
    return RegistrationArgs(
      contactNotices: map['contactNotices'] == null ? null : pulumi.Output.create<List<String>>((map['contactNotices'] as List).cast<String>()),
      contactSettings: pulumi.Output.create<RegistrationContactSettings>(RegistrationContactSettings.fromMap((map['contactSettings'] as Map).cast<String, dynamic>())),
      dnsSettings: map['dnsSettings'] == null ? null : pulumi.Output.create<RegistrationDnsSettings>(RegistrationDnsSettings.fromMap((map['dnsSettings'] as Map).cast<String, dynamic>())),
      domainName: pulumi.Output.create<String>(map['domainName'] as String),
      domainNotices: map['domainNotices'] == null ? null : pulumi.Output.create<List<String>>((map['domainNotices'] as List).cast<String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: pulumi.Output.create<String>(map['location'] as String),
      managementSettings: map['managementSettings'] == null ? null : pulumi.Output.create<RegistrationManagementSettings>(RegistrationManagementSettings.fromMap((map['managementSettings'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      yearlyPrice: pulumi.Output.create<RegistrationYearlyPrice>(RegistrationYearlyPrice.fromMap((map['yearlyPrice'] as Map).cast<String, dynamic>())),
    );
  }
}

