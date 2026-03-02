// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_channel_v1_edu_data_response.dart';

/// Cloud Identity information for the Cloud Channel Customer.
class GoogleCloudChannelV1CloudIdentityInfoResponse {
  /// URI of Customer's Admin console dashboard.
  final pulumi.Input<String> adminConsoleUri;
  /// The alternate email.
  final pulumi.Input<String> alternateEmail;
  /// CustomerType indicates verification type needed for using services.
  final pulumi.Input<String> customerType;
  /// Edu information about the customer.
  final pulumi.Input<GoogleCloudChannelV1EduDataResponse> eduData;
  /// Whether the domain is verified. This field is not returned for a Customer's cloud_identity_info resource. Partners can use the domains.get() method of the Workspace SDK's Directory API, or listen to the PRIMARY_DOMAIN_VERIFIED Pub/Sub event in to track domain verification of their resolve Workspace customers.
  final pulumi.Input<bool> isDomainVerified;
  /// Language code.
  final pulumi.Input<String> languageCode;
  /// Phone number associated with the Cloud Identity.
  final pulumi.Input<String> phoneNumber;
  /// The primary domain name.
  final pulumi.Input<String> primaryDomain;

  /// Creates a new [GoogleCloudChannelV1CloudIdentityInfoResponse].
  /// [adminConsoleUri] URI of Customer's Admin console dashboard.
  /// [alternateEmail] The alternate email.
  /// [customerType] CustomerType indicates verification type needed for using services.
  /// [eduData] Edu information about the customer.
  /// [isDomainVerified] Whether the domain is verified. This field is not returned for a Customer's cloud_identity_info resource. Partners can use the domains.get() method of the Workspace SDK's Directory API, or listen to the PRIMARY_DOMAIN_VERIFIED Pub/Sub event in to track domain verification of their resolve Workspace customers.
  /// [languageCode] Language code.
  /// [phoneNumber] Phone number associated with the Cloud Identity.
  /// [primaryDomain] The primary domain name.
  GoogleCloudChannelV1CloudIdentityInfoResponse({
    required this.adminConsoleUri,
    required this.alternateEmail,
    required this.customerType,
    required this.eduData,
    required this.isDomainVerified,
    required this.languageCode,
    required this.phoneNumber,
    required this.primaryDomain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminConsoleUri': adminConsoleUri,
      'alternateEmail': alternateEmail,
      'customerType': customerType,
      'eduData': pulumi.Input.mapInputValue<GoogleCloudChannelV1EduDataResponse, Map<String, dynamic>>(eduData, (value) => value.toMap()),
      'isDomainVerified': isDomainVerified,
      'languageCode': languageCode,
      'phoneNumber': phoneNumber,
      'primaryDomain': primaryDomain,
    };
  }

  factory GoogleCloudChannelV1CloudIdentityInfoResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudChannelV1CloudIdentityInfoResponse(
      adminConsoleUri: (map['adminConsoleUri'] as String).input(),
      alternateEmail: (map['alternateEmail'] as String).input(),
      customerType: (map['customerType'] as String).input(),
      eduData: (GoogleCloudChannelV1EduDataResponse.fromMap((map['eduData'] as Map).cast<String, dynamic>())).input(),
      isDomainVerified: (map['isDomainVerified'] as bool).input(),
      languageCode: (map['languageCode'] as String).input(),
      phoneNumber: (map['phoneNumber'] as String).input(),
      primaryDomain: (map['primaryDomain'] as String).input(),
    );
  }
}

