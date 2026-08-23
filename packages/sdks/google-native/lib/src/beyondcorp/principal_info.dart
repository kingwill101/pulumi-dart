// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_account.dart';

/// PrincipalInfo represents an Identity oneof.
class PrincipalInfo {
  /// A GCP service account.
  final pulumi.Input<ServiceAccount>? serviceAccount;

  /// Creates a new [PrincipalInfo].
  /// [serviceAccount] A GCP service account.
  const PrincipalInfo({
    this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceAccount': ?pulumi.Input.mapOptionalInputValue<ServiceAccount, Map<String, dynamic>>(serviceAccount, (value) => value.toMap()),
    };
  }

  factory PrincipalInfo.fromMap(Map<String, dynamic> map) {
    return PrincipalInfo(
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceAccount.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
