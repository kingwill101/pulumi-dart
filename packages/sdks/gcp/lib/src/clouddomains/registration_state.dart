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
    pulumi.Output<List<String>>? contactNotices,
    pulumi.Output<RegistrationContactSettings>? contactSettings,
    pulumi.Output<String>? createTime,
    pulumi.Output<RegistrationDnsSettings>? dnsSettings,
    pulumi.Output<String>? domainName,
    pulumi.Output<List<String>>? domainNotices,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? expireTime,
    pulumi.Output<List<String>>? issues,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<RegistrationManagementSettings>? managementSettings,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? registerFailureReason,
    pulumi.Output<String>? state,
    pulumi.Output<List<String>>? supportedPrivacies,
    pulumi.Output<RegistrationYearlyPrice>? yearlyPrice,
  }) :
      contactNotices = pulumi.Input.asOptionalInput<List<String>>(contactNotices),
      contactSettings = pulumi.Input.asOptionalInput<RegistrationContactSettings>(contactSettings),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      dnsSettings = pulumi.Input.asOptionalInput<RegistrationDnsSettings>(dnsSettings),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      domainNotices = pulumi.Input.asOptionalInput<List<String>>(domainNotices),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      expireTime = pulumi.Input.asOptionalInput<String>(expireTime),
      issues = pulumi.Input.asOptionalInput<List<String>>(issues),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      managementSettings = pulumi.Input.asOptionalInput<RegistrationManagementSettings>(managementSettings),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      registerFailureReason = pulumi.Input.asOptionalInput<String>(registerFailureReason),
      state = pulumi.Input.asOptionalInput<String>(state),
      supportedPrivacies = pulumi.Input.asOptionalInput<List<String>>(supportedPrivacies),
      yearlyPrice = pulumi.Input.asOptionalInput<RegistrationYearlyPrice>(yearlyPrice);

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
      contactNotices: map['contactNotices'] == null ? null : pulumi.Output.create<List<String>>((map['contactNotices'] as List).cast<String>()),
      contactSettings: map['contactSettings'] == null ? null : pulumi.Output.create<RegistrationContactSettings>(RegistrationContactSettings.fromMap((map['contactSettings'] as Map).cast<String, dynamic>())),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      dnsSettings: map['dnsSettings'] == null ? null : pulumi.Output.create<RegistrationDnsSettings>(RegistrationDnsSettings.fromMap((map['dnsSettings'] as Map).cast<String, dynamic>())),
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      domainNotices: map['domainNotices'] == null ? null : pulumi.Output.create<List<String>>((map['domainNotices'] as List).cast<String>()),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      expireTime: map['expireTime'] == null ? null : pulumi.Output.create<String>(map['expireTime'] as String),
      issues: map['issues'] == null ? null : pulumi.Output.create<List<String>>((map['issues'] as List).cast<String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managementSettings: map['managementSettings'] == null ? null : pulumi.Output.create<RegistrationManagementSettings>(RegistrationManagementSettings.fromMap((map['managementSettings'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      registerFailureReason: map['registerFailureReason'] == null ? null : pulumi.Output.create<String>(map['registerFailureReason'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      supportedPrivacies: map['supportedPrivacies'] == null ? null : pulumi.Output.create<List<String>>((map['supportedPrivacies'] as List).cast<String>()),
      yearlyPrice: map['yearlyPrice'] == null ? null : pulumi.Output.create<RegistrationYearlyPrice>(RegistrationYearlyPrice.fromMap((map['yearlyPrice'] as Map).cast<String, dynamic>())),
    );
  }
}

