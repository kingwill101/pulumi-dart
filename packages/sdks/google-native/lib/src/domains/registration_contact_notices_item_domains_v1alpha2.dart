import 'package:pulumi/pulumi.dart' as pulumi;

enum RegistrationContactNoticesItemDomainsV1alpha2 implements pulumi.PulumiEnum<String> {
  contactNoticeUnspecified("CONTACT_NOTICE_UNSPECIFIED"),
  publicContactDataAcknowledgement("PUBLIC_CONTACT_DATA_ACKNOWLEDGEMENT");

  const RegistrationContactNoticesItemDomainsV1alpha2(this.wireValue);
  @override
  final String wireValue;

  static RegistrationContactNoticesItemDomainsV1alpha2 fromValue(String value) {
    for (final item in RegistrationContactNoticesItemDomainsV1alpha2.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegistrationContactNoticesItemDomainsV1alpha2 value: $value');
  }
}
