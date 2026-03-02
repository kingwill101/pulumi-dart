// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_channel_v1_contact_info.dart';
import 'google_type_postal_address.dart';

/// {@template pulumi_cloudchannel_v1_customer_args_doc}
/// The set of arguments for Customer.
/// {@endtemplate}
/// {@macro pulumi_cloudchannel_v1_customer_args_doc}
class CustomerArgs {
  final pulumi.Input<String> accountId;
  /// Secondary contact email. You need to provide an alternate email to create different domains if a primary contact email already exists. Users will receive a notification with credentials when you create an admin.google.com account. Secondary emails are also recovery email addresses. Alternate emails are optional when you create Team customers.
  final pulumi.Input<String>? alternateEmail;
  /// Cloud Identity ID of the customer's channel partner. Populated only if a channel partner exists for this customer.
  final pulumi.Input<String>? channelPartnerId;
  final pulumi.Input<String> channelPartnerLinkId;
  /// Optional. External CRM ID for the customer. Populated only if a CRM ID exists for this customer.
  final pulumi.Input<String>? correlationId;
  /// The customer's primary domain. Must match the primary contact email's domain.
  final pulumi.Input<String> domain;
  /// Optional. The BCP-47 language code, such as "en-US" or "sr-Latn". For more information, see https://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  final pulumi.Input<String>? languageCode;
  /// Name of the organization that the customer entity represents.
  final pulumi.Input<String> orgDisplayName;
  /// The organization address for the customer. To enforce US laws and embargoes, we require a region, postal code, and address lines. You must provide valid addresses for every customer. To set the customer's language, use the Customer-level language code.
  final pulumi.Input<GoogleTypePostalAddress> orgPostalAddress;
  /// Primary contact info.
  final pulumi.Input<GoogleCloudChannelV1ContactInfo>? primaryContactInfo;

  /// Creates a new [CustomerArgs].
  /// [accountId] Required.
  /// [alternateEmail] Secondary contact email. You need to provide an alternate email to create different domains if a primary contact email already exists. Users will receive a notification with credentials when you create an admin.google.com account. Secondary emails are also recovery email addresses. Alternate emails are optional when you create Team customers.
  /// [channelPartnerId] Cloud Identity ID of the customer's channel partner. Populated only if a channel partner exists for this customer.
  /// [channelPartnerLinkId] Required.
  /// [correlationId] Optional. External CRM ID for the customer. Populated only if a CRM ID exists for this customer.
  /// [domain] The customer's primary domain. Must match the primary contact email's domain.
  /// [languageCode] Optional. The BCP-47 language code, such as "en-US" or "sr-Latn". For more information, see https://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  /// [orgDisplayName] Name of the organization that the customer entity represents.
  /// [orgPostalAddress] The organization address for the customer. To enforce US laws and embargoes, we require a region, postal code, and address lines. You must provide valid addresses for every customer. To set the customer's language, use the Customer-level language code.
  /// [primaryContactInfo] Primary contact info.
  CustomerArgs({
    required this.accountId,
    this.alternateEmail,
    this.channelPartnerId,
    required this.channelPartnerLinkId,
    this.correlationId,
    required this.domain,
    this.languageCode,
    required this.orgDisplayName,
    required this.orgPostalAddress,
    this.primaryContactInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'alternateEmail': ?alternateEmail,
      'channelPartnerId': ?channelPartnerId,
      'channelPartnerLinkId': channelPartnerLinkId,
      'correlationId': ?correlationId,
      'domain': domain,
      'languageCode': ?languageCode,
      'orgDisplayName': orgDisplayName,
      'orgPostalAddress': pulumi.Input.mapInputValue<GoogleTypePostalAddress, Map<String, dynamic>>(orgPostalAddress, (value) => value.toMap()),
      'primaryContactInfo': ?pulumi.Input.mapOptionalInputValue<GoogleCloudChannelV1ContactInfo, Map<String, dynamic>>(primaryContactInfo, (value) => value.toMap()),
    };
  }

  factory CustomerArgs.fromMap(Map<String, dynamic> map) {
    return CustomerArgs(
      accountId: (map['accountId'] as String).input(),
      alternateEmail: map['alternateEmail'] == null ? null : (map['alternateEmail'] as String).input(),
      channelPartnerId: map['channelPartnerId'] == null ? null : (map['channelPartnerId'] as String).input(),
      channelPartnerLinkId: (map['channelPartnerLinkId'] as String).input(),
      correlationId: map['correlationId'] == null ? null : (map['correlationId'] as String).input(),
      domain: (map['domain'] as String).input(),
      languageCode: map['languageCode'] == null ? null : (map['languageCode'] as String).input(),
      orgDisplayName: (map['orgDisplayName'] as String).input(),
      orgPostalAddress: (GoogleTypePostalAddress.fromMap((map['orgPostalAddress'] as Map).cast<String, dynamic>())).input(),
      primaryContactInfo: map['primaryContactInfo'] == null ? null : (GoogleCloudChannelV1ContactInfo.fromMap((map['primaryContactInfo'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

