// ignore_for_file: unused_element, unnecessary_cast


/// SasPolicy assigned to the storage account.
class SasPolicy {
  /// The SAS Expiration Action defines the action to be performed when sasPolicy.sasExpirationPeriod is violated. The 'Log' action can be used for audit purposes and the 'Block' action can be used to block and deny the usage of SAS tokens that do not adhere to the sas policy expiration period.
  final String expirationAction;
  /// The SAS expiration period, DD.HH:MM:SS.
  final String sasExpirationPeriod;

  /// Creates a new [SasPolicy].
  /// [expirationAction] The SAS Expiration Action defines the action to be performed when sasPolicy.sasExpirationPeriod is violated. The 'Log' action can be used for audit purposes and the 'Block' action can be used to block and deny the usage of SAS tokens that do not adhere to the sas policy expiration period.
  /// [sasExpirationPeriod] The SAS expiration period, DD.HH:MM:SS.
  SasPolicy({
    required this.expirationAction,
    required this.sasExpirationPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationAction': expirationAction,
      'sasExpirationPeriod': sasExpirationPeriod,
    };
  }

  factory SasPolicy.fromMap(Map<String, dynamic> map) {
    return SasPolicy(
      expirationAction: map['expirationAction'] as String,
      sasExpirationPeriod: map['sasExpirationPeriod'] as String,
    );
  }
}

