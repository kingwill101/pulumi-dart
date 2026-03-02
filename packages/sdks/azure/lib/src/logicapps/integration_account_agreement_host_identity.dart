// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IntegrationAccountAgreementHostIdentity {
  /// The authenticating body that provides unique host identities to organizations.
  final pulumi.Input<String> qualifier;
  /// The value that identifies the documents that your logic apps receive.
  final pulumi.Input<String> value;

  /// Creates a new [IntegrationAccountAgreementHostIdentity].
  /// [qualifier] The authenticating body that provides unique host identities to organizations.
  /// [value] The value that identifies the documents that your logic apps receive.
  IntegrationAccountAgreementHostIdentity({
    required this.qualifier,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'qualifier': qualifier,
      'value': value,
    };
  }

  factory IntegrationAccountAgreementHostIdentity.fromMap(Map<String, dynamic> map) {
    return IntegrationAccountAgreementHostIdentity(
      qualifier: (map['qualifier'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

