// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IntegrationAccountPartnerBusinessIdentity {
  /// The authenticating body that provides unique business identities to organizations.
  final pulumi.Input<String> qualifier;
  /// The value that identifies the documents that your logic apps receive.
  final pulumi.Input<String> value;

  /// Creates a new [IntegrationAccountPartnerBusinessIdentity].
  /// [qualifier] The authenticating body that provides unique business identities to organizations.
  /// [value] The value that identifies the documents that your logic apps receive.
  IntegrationAccountPartnerBusinessIdentity({
    required this.qualifier,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'qualifier': qualifier,
      'value': value,
    };
  }

  factory IntegrationAccountPartnerBusinessIdentity.fromMap(Map<String, dynamic> map) {
    return IntegrationAccountPartnerBusinessIdentity(
      qualifier: (map['qualifier'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

