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
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
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
  const RegistrationArgs({
    this.contactNotices,
    required this.contactSettings,
    this.dnsSettings,
    required this.domainName,
    this.domainNotices,
    this.labels,
    required this.location,
    this.managementSettings,
    this.project,
    required this.yearlyPrice,
  });

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
      contactNotices: (() { final guardedValue = map['contactNotices']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      contactSettings: pulumi.Input.fromValue(RegistrationContactSettings.fromMap((map['contactSettings']! as Map).cast<String, dynamic>())),
      dnsSettings: (() { final guardedValue = map['dnsSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegistrationDnsSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      domainNotices: (() { final guardedValue = map['domainNotices']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      managementSettings: (() { final guardedValue = map['managementSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegistrationManagementSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      yearlyPrice: pulumi.Input.fromValue(RegistrationYearlyPrice.fromMap((map['yearlyPrice']! as Map).cast<String, dynamic>())),
    );
  }
}
