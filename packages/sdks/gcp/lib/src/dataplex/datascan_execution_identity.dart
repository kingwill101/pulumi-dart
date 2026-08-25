// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'datascan_execution_identity_service_account.dart';

class DatascanExecutionIdentity {
  /// The Dataplex service agent associated with the user's project.
  final pulumi.Input<Map<String, dynamic>?>? dataplexServiceAgent;
  /// Service account to use to execute a datascan.
  /// Structure is documented below.
  final pulumi.Input<DatascanExecutionIdentityServiceAccount?>? serviceAccount;
  /// The credential of the calling user. Supports only ONE_TIME trigger type.
  final pulumi.Input<Map<String, dynamic>?>? userCredential;

  /// Creates a new [DatascanExecutionIdentity].
  /// [dataplexServiceAgent] The Dataplex service agent associated with the user's project.
  /// [serviceAccount] Service account to use to execute a datascan.
  /// [userCredential] The credential of the calling user. Supports only ONE_TIME trigger type.
  const DatascanExecutionIdentity({
    this.dataplexServiceAgent,
    this.serviceAccount,
    this.userCredential,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataplexServiceAgent': ?dataplexServiceAgent,
      'serviceAccount': ?pulumi.Input.mapOptionalInputValue<DatascanExecutionIdentityServiceAccount, Map<String, dynamic>>(serviceAccount, (value) => value.toMap()),
      'userCredential': ?userCredential,
    };
  }

  factory DatascanExecutionIdentity.fromMap(Map<String, dynamic> map) {
    return DatascanExecutionIdentity(
      dataplexServiceAgent: (() { final guardedValue = map['dataplexServiceAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatascanExecutionIdentityServiceAccount.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      userCredential: (() { final guardedValue = map['userCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
