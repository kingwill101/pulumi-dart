// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_settings.dart';
import 'dns_settings.dart';
import 'management_settings.dart';
import 'money.dart';
import 'registration_contact_notices_item.dart';
import 'registration_domain_notices_item.dart';

/// {@template pulumi_domains_v1_registration_args_doc}
/// The set of arguments for Registration.
/// {@endtemplate}
/// {@macro pulumi_domains_v1_registration_args_doc}
class RegistrationArgs {
  /// The list of contact notices that the caller acknowledges. The notices needed here depend on the values specified in `registration.contact_settings`.
  final pulumi.Input<List<RegistrationContactNoticesItem>>? contactNotices;

  /// Settings for contact information linked to the `Registration`. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureContactSettings` method.
  final pulumi.Input<ContactSettings> contactSettings;

  /// Settings controlling the DNS configuration of the `Registration`. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureDnsSettings` method.
  final pulumi.Input<DnsSettings>? dnsSettings;

  /// Immutable. The domain name. Unicode domain names must be expressed in Punycode format.
  final pulumi.Input<String> domainName;

  /// The list of domain notices that you acknowledge. Call `RetrieveRegisterParameters` to see the notices that need acknowledgement.
  final pulumi.Input<List<RegistrationDomainNoticesItem>>? domainNotices;

  /// Set of labels associated with the `Registration`.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Settings for management of the `Registration`, including renewal, billing, and transfer. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureManagementSettings` method.
  final pulumi.Input<ManagementSettings>? managementSettings;
  final pulumi.Input<String>? project;

  /// When true, only validation is performed, without actually registering the domain. Follows: https://cloud.google.com/apis/design/design_patterns#request_validation
  final pulumi.Input<bool>? validateOnly;

  /// Yearly price to register or renew the domain. The value that should be put here can be obtained from RetrieveRegisterParameters or SearchDomains calls.
  final pulumi.Input<Money> yearlyPrice;

  /// Creates a new [RegistrationArgs].
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
  RegistrationArgs({
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
      'contactNotices':
          ?pulumi.Input.mapOptionalInputValue<
            List<RegistrationContactNoticesItem>,
            List<String>
          >(
            contactNotices,
            (value) =>
                pulumi.Input.encodeList<RegistrationContactNoticesItem, String>(
                  value,
                  (value) => value.wireValue,
                ),
          ),
      'contactSettings':
          pulumi.Input.mapInputValue<ContactSettings, Map<String, dynamic>>(
            contactSettings,
            (value) => value.toMap(),
          ),
      'dnsSettings':
          ?pulumi.Input.mapOptionalInputValue<
            DnsSettings,
            Map<String, dynamic>
          >(dnsSettings, (value) => value.toMap()),
      'domainName': domainName,
      'domainNotices':
          ?pulumi.Input.mapOptionalInputValue<
            List<RegistrationDomainNoticesItem>,
            List<String>
          >(
            domainNotices,
            (value) =>
                pulumi.Input.encodeList<RegistrationDomainNoticesItem, String>(
                  value,
                  (value) => value.wireValue,
                ),
          ),
      'labels': ?labels,
      'location': ?location,
      'managementSettings':
          ?pulumi.Input.mapOptionalInputValue<
            ManagementSettings,
            Map<String, dynamic>
          >(managementSettings, (value) => value.toMap()),
      'project': ?project,
      'validateOnly': ?validateOnly,
      'yearlyPrice': pulumi.Input.mapInputValue<Money, Map<String, dynamic>>(
        yearlyPrice,
        (value) => value.toMap(),
      ),
    };
  }

  factory RegistrationArgs.fromMap(Map<String, dynamic> map) {
    return RegistrationArgs(
      contactNotices: (() {
        final guardedValue = map['contactNotices'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<RegistrationContactNoticesItem>(
            guardedValue,
            (value) =>
                RegistrationContactNoticesItem.fromValue(value as String),
          ),
        );
      })(),
      contactSettings: pulumi.Input.fromValue(
        ContactSettings.fromMap(
          (map['contactSettings']! as Map).cast<String, dynamic>(),
        ),
      ),
      dnsSettings: (() {
        final guardedValue = map['dnsSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DnsSettings.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      domainNotices: (() {
        final guardedValue = map['domainNotices'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<RegistrationDomainNoticesItem>(
            guardedValue,
            (value) => RegistrationDomainNoticesItem.fromValue(value as String),
          ),
        );
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      managementSettings: (() {
        final guardedValue = map['managementSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagementSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      validateOnly: (() {
        final guardedValue = map['validateOnly'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      yearlyPrice: pulumi.Input.fromValue(
        Money.fromMap((map['yearlyPrice']! as Map).cast<String, dynamic>()),
      ),
    );
  }
}
