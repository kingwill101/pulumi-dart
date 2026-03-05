import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_args.dart';
import 'google_cloud_channel_v1_cloud_identity_info_response.dart';
import 'google_cloud_channel_v1_contact_info_response.dart';
import 'google_type_postal_address_response.dart';

/// Creates a new Customer resource under the reseller or distributor account. Possible error codes: * PERMISSION_DENIED: * The reseller account making the request is different from the reseller account in the API request. * You are not authorized to create a customer. See https://support.google.com/channelservices/answer/9759265 * INVALID_ARGUMENT: * Required request parameters are missing or invalid. * Domain field value doesn't match the primary email domain. Return value: The newly created Customer resource.
/// Auto-naming is currently not supported for this resource.
class Customer extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;

  /// Secondary contact email. You need to provide an alternate email to create different domains if a primary contact email already exists. Users will receive a notification with credentials when you create an admin.google.com account. Secondary emails are also recovery email addresses. Alternate emails are optional when you create Team customers.
  late final pulumi.Output<String> alternateEmail;

  /// Cloud Identity ID of the customer's channel partner. Populated only if a channel partner exists for this customer.
  late final pulumi.Output<String> channelPartnerId;
  late final pulumi.Output<String> channelPartnerLinkId;

  /// The customer's Cloud Identity ID if the customer has a Cloud Identity resource.
  late final pulumi.Output<String> cloudIdentityId;

  /// Cloud Identity information for the customer. Populated only if a Cloud Identity account exists for this customer.
  late final pulumi.Output<GoogleCloudChannelV1CloudIdentityInfoResponse>
  cloudIdentityInfo;

  /// Optional. External CRM ID for the customer. Populated only if a CRM ID exists for this customer.
  late final pulumi.Output<String> correlationId;

  /// Time when the customer was created.
  late final pulumi.Output<String> createTime;

  /// The customer's primary domain. Must match the primary contact email's domain.
  late final pulumi.Output<String> domain;

  /// Optional. The BCP-47 language code, such as "en-US" or "sr-Latn". For more information, see https://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  late final pulumi.Output<String> languageCode;

  /// Resource name of the customer. Format: accounts/{account_id}/customers/{customer_id}
  late final pulumi.Output<String> name;

  /// Name of the organization that the customer entity represents.
  late final pulumi.Output<String> orgDisplayName;

  /// The organization address for the customer. To enforce US laws and embargoes, we require a region, postal code, and address lines. You must provide valid addresses for every customer. To set the customer's language, use the Customer-level language code.
  late final pulumi.Output<GoogleTypePostalAddressResponse> orgPostalAddress;

  /// Primary contact info.
  late final pulumi.Output<GoogleCloudChannelV1ContactInfoResponse>
  primaryContactInfo;

  /// Time when the customer was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Customer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Customer]. {@macro pulumi_cloudchannel_v1_customer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Customer(
    String name, {
    CustomerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:cloudchannel/v1:Customer',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountId = registerOutput<String>('accountId');
    alternateEmail = registerOutput<String>('alternateEmail');
    channelPartnerId = registerOutput<String>('channelPartnerId');
    channelPartnerLinkId = registerOutput<String>('channelPartnerLinkId');
    cloudIdentityId = registerOutput<String>('cloudIdentityId');
    cloudIdentityInfo =
        registerOutput<GoogleCloudChannelV1CloudIdentityInfoResponse>(
          'cloudIdentityInfo',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudChannelV1CloudIdentityInfoResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    correlationId = registerOutput<String>('correlationId');
    createTime = registerOutput<String>('createTime');
    domain = registerOutput<String>('domain');
    languageCode = registerOutput<String>('languageCode');
    this.name = registerOutput<String>('name');
    orgDisplayName = registerOutput<String>('orgDisplayName');
    orgPostalAddress = registerOutput<GoogleTypePostalAddressResponse>(
      'orgPostalAddress',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GoogleTypePostalAddressResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    primaryContactInfo =
        registerOutput<GoogleCloudChannelV1ContactInfoResponse>(
          'primaryContactInfo',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudChannelV1ContactInfoResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    updateTime = registerOutput<String>('updateTime');
  }
}
