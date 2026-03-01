// ignore_for_file: unused_element, unnecessary_cast


class CertificateCertificatePolicyLifetimeActionAction {
  /// The Type of action to be performed when the lifetime trigger is triggerec. Possible values include `AutoRenew` and `EmailContacts`.
  final String actionType;

  /// Creates a new [CertificateCertificatePolicyLifetimeActionAction].
  /// [actionType] The Type of action to be performed when the lifetime trigger is triggerec. Possible values include `AutoRenew` and `EmailContacts`.
  CertificateCertificatePolicyLifetimeActionAction({
    required this.actionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': actionType,
    };
  }

  factory CertificateCertificatePolicyLifetimeActionAction.fromMap(Map<String, dynamic> map) {
    return CertificateCertificatePolicyLifetimeActionAction(
      actionType: map['actionType'] as String,
    );
  }
}

