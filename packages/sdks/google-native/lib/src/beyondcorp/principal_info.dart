// ignore_for_file: unused_element, unnecessary_cast

import 'service_account.dart';

/// PrincipalInfo represents an Identity oneof.
class PrincipalInfo {
  /// A GCP service account.
  final ServiceAccount? serviceAccount;

  /// Creates a new [PrincipalInfo].
  /// [serviceAccount] A GCP service account.
  PrincipalInfo({
    this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceAccount': ?serviceAccount == null ? null : serviceAccount!.toMap(),
    };
  }

  factory PrincipalInfo.fromMap(Map<String, dynamic> map) {
    return PrincipalInfo(
      serviceAccount: map['serviceAccount'] == null ? null : ServiceAccount.fromMap((map['serviceAccount'] as Map).cast<String, dynamic>()),
    );
  }
}

