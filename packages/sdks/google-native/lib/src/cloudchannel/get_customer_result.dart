// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_channel_v1_cloud_identity_info_response.dart';
import 'google_cloud_channel_v1_contact_info_response.dart';
import 'google_type_postal_address_response.dart';

/// Result data returned by getCustomer.
class GetCustomerResult {
  /// Secondary contact email. You need to provide an alternate email to create different domains if a primary contact email already exists. Users will receive a notification with credentials when you create an admin.google.com account. Secondary emails are also recovery email addresses. Alternate emails are optional when you create Team customers.
  final String? alternateEmail;
  /// Cloud Identity ID of the customer's channel partner. Populated only if a channel partner exists for this customer.
  final String? channelPartnerId;
  /// The customer's Cloud Identity ID if the customer has a Cloud Identity resource.
  final String? cloudIdentityId;
  /// Cloud Identity information for the customer. Populated only if a Cloud Identity account exists for this customer.
  final GoogleCloudChannelV1CloudIdentityInfoResponse? cloudIdentityInfo;
  /// Optional. External CRM ID for the customer. Populated only if a CRM ID exists for this customer.
  final String? correlationId;
  /// Time when the customer was created.
  final String? createTime;
  /// The customer's primary domain. Must match the primary contact email's domain.
  final String? domain;
  /// Optional. The BCP-47 language code, such as "en-US" or "sr-Latn". For more information, see https://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  final String? languageCode;
  /// Resource name of the customer. Format: accounts/{account_id}/customers/{customer_id}
  final String? name;
  /// Name of the organization that the customer entity represents.
  final String? orgDisplayName;
  /// The organization address for the customer. To enforce US laws and embargoes, we require a region, postal code, and address lines. You must provide valid addresses for every customer. To set the customer's language, use the Customer-level language code.
  final GoogleTypePostalAddressResponse? orgPostalAddress;
  /// Primary contact info.
  final GoogleCloudChannelV1ContactInfoResponse? primaryContactInfo;
  /// Time when the customer was updated.
  final String? updateTime;

  /// Creates a new [GetCustomerResult].
  /// [alternateEmail] Secondary contact email. You need to provide an alternate email to create different domains if a primary contact email already exists. Users will receive a notification with credentials when you create an admin.google.com account. Secondary emails are also recovery email addresses. Alternate emails are optional when you create Team customers.
  /// [channelPartnerId] Cloud Identity ID of the customer's channel partner. Populated only if a channel partner exists for this customer.
  /// [cloudIdentityId] The customer's Cloud Identity ID if the customer has a Cloud Identity resource.
  /// [cloudIdentityInfo] Cloud Identity information for the customer. Populated only if a Cloud Identity account exists for this customer.
  /// [correlationId] Optional. External CRM ID for the customer. Populated only if a CRM ID exists for this customer.
  /// [createTime] Time when the customer was created.
  /// [domain] The customer's primary domain. Must match the primary contact email's domain.
  /// [languageCode] Optional. The BCP-47 language code, such as "en-US" or "sr-Latn". For more information, see https://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  /// [name] Resource name of the customer. Format: accounts/{account_id}/customers/{customer_id}
  /// [orgDisplayName] Name of the organization that the customer entity represents.
  /// [orgPostalAddress] The organization address for the customer. To enforce US laws and embargoes, we require a region, postal code, and address lines. You must provide valid addresses for every customer. To set the customer's language, use the Customer-level language code.
  /// [primaryContactInfo] Primary contact info.
  /// [updateTime] Time when the customer was updated.
  const GetCustomerResult({
    this.alternateEmail,
    this.channelPartnerId,
    this.cloudIdentityId,
    this.cloudIdentityInfo,
    this.correlationId,
    this.createTime,
    this.domain,
    this.languageCode,
    this.name,
    this.orgDisplayName,
    this.orgPostalAddress,
    this.primaryContactInfo,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alternateEmail': ?alternateEmail,
      'channelPartnerId': ?channelPartnerId,
      'cloudIdentityId': ?cloudIdentityId,
      'cloudIdentityInfo': ?cloudIdentityInfo?.toMap(),
      'correlationId': ?correlationId,
      'createTime': ?createTime,
      'domain': ?domain,
      'languageCode': ?languageCode,
      'name': ?name,
      'orgDisplayName': ?orgDisplayName,
      'orgPostalAddress': ?orgPostalAddress?.toMap(),
      'primaryContactInfo': ?primaryContactInfo?.toMap(),
      'updateTime': ?updateTime,
    };
  }

  factory GetCustomerResult.fromMap(Map<String, dynamic> map) {
    return GetCustomerResult(
      alternateEmail: (() { final guardedValue = map['alternateEmail']; if (guardedValue == null) return null; return guardedValue as String; })(),
      channelPartnerId: (() { final guardedValue = map['channelPartnerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cloudIdentityId: (() { final guardedValue = map['cloudIdentityId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cloudIdentityInfo: (() { final guardedValue = map['cloudIdentityInfo']; if (guardedValue == null) return null; return GoogleCloudChannelV1CloudIdentityInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      correlationId: (() { final guardedValue = map['correlationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      languageCode: (() { final guardedValue = map['languageCode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      orgDisplayName: (() { final guardedValue = map['orgDisplayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      orgPostalAddress: (() { final guardedValue = map['orgPostalAddress']; if (guardedValue == null) return null; return GoogleTypePostalAddressResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      primaryContactInfo: (() { final guardedValue = map['primaryContactInfo']; if (guardedValue == null) return null; return GoogleCloudChannelV1ContactInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
