// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountsResultLegacyFlagsEnterpriseZoneQuota {
  /// Number of additional Enterprise zones available. Returns 0 if the quota is not allocated or is exhausted.
  final pulumi.Input<int> available;
  /// Current number of Enterprise zones.
  final pulumi.Input<int> current;
  /// Maximum number of Enterprise zones allowed.
  final pulumi.Input<int> maximum;

  /// Creates a new [GetAccountsResultLegacyFlagsEnterpriseZoneQuota].
  /// [available] Number of additional Enterprise zones available. Returns 0 if the quota is not allocated or is exhausted.
  /// [current] Current number of Enterprise zones.
  /// [maximum] Maximum number of Enterprise zones allowed.
  const GetAccountsResultLegacyFlagsEnterpriseZoneQuota({
    required this.available,
    required this.current,
    required this.maximum,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'available': available,
      'current': current,
      'maximum': maximum,
    };
  }

  factory GetAccountsResultLegacyFlagsEnterpriseZoneQuota.fromMap(Map<String, dynamic> map) {
    return GetAccountsResultLegacyFlagsEnterpriseZoneQuota(
      available: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['available'])),
      current: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['current'])),
      maximum: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maximum'])),
    );
  }
}
