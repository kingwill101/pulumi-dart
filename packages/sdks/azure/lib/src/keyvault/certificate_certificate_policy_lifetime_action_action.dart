// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertificateCertificatePolicyLifetimeActionAction {
  /// The Type of action to be performed when the lifetime trigger is triggerec. Possible values include `AutoRenew` and `EmailContacts`.
  final pulumi.Input<String> actionType;

  /// Creates a new [CertificateCertificatePolicyLifetimeActionAction].
  /// [actionType] The Type of action to be performed when the lifetime trigger is triggerec. Possible values include `AutoRenew` and `EmailContacts`.
  const CertificateCertificatePolicyLifetimeActionAction({
    required this.actionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': actionType,
    };
  }

  factory CertificateCertificatePolicyLifetimeActionAction.fromMap(Map<String, dynamic> map) {
    return CertificateCertificatePolicyLifetimeActionAction(
      actionType: pulumi.Input.fromValue(map['actionType'] as String),
    );
  }
}

