// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegistrarDomainsResultTransferIn {
  /// Status of the registrant authorization step.
  /// Available values: "needed", "ok".
  final pulumi.Input<String> acceptFoa;
  /// Status of the registry transfer-approval step.
  /// Available values: "needed", "ok", "pending", "trying", "rejected", "unknown".
  final pulumi.Input<String> approveTransfer;
  /// Indicates if cancellation is still possible.
  final pulumi.Input<bool> canCancelTransfer;
  /// Status of the privacy-guard disabling step at the foreign registrar.
  /// Available values: "needed", "ok", "unknown".
  final pulumi.Input<String> disablePrivacy;
  /// Status of the auth-code entry and verification step.
  /// Available values: "needed", "ok", "pending", "trying", "rejected".
  final pulumi.Input<String> enterAuthCode;
  /// Status of the domain-unlock step at the foreign registrar.
  /// Available values: "needed", "ok", "pending", "trying", "unknown".
  final pulumi.Input<String> unlockDomain;

  /// Creates a new [GetRegistrarDomainsResultTransferIn].
  /// [acceptFoa] Status of the registrant authorization step.
  /// [approveTransfer] Status of the registry transfer-approval step.
  /// [canCancelTransfer] Indicates if cancellation is still possible.
  /// [disablePrivacy] Status of the privacy-guard disabling step at the foreign registrar.
  /// [enterAuthCode] Status of the auth-code entry and verification step.
  /// [unlockDomain] Status of the domain-unlock step at the foreign registrar.
  const GetRegistrarDomainsResultTransferIn({
    required this.acceptFoa,
    required this.approveTransfer,
    required this.canCancelTransfer,
    required this.disablePrivacy,
    required this.enterAuthCode,
    required this.unlockDomain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptFoa': acceptFoa,
      'approveTransfer': approveTransfer,
      'canCancelTransfer': canCancelTransfer,
      'disablePrivacy': disablePrivacy,
      'enterAuthCode': enterAuthCode,
      'unlockDomain': unlockDomain,
    };
  }

  factory GetRegistrarDomainsResultTransferIn.fromMap(Map<String, dynamic> map) {
    return GetRegistrarDomainsResultTransferIn(
      acceptFoa: pulumi.Input.fromValue(map['acceptFoa'] as String),
      approveTransfer: pulumi.Input.fromValue(map['approveTransfer'] as String),
      canCancelTransfer: pulumi.Input.fromValue(map['canCancelTransfer'] as bool),
      disablePrivacy: pulumi.Input.fromValue(map['disablePrivacy'] as String),
      enterAuthCode: pulumi.Input.fromValue(map['enterAuthCode'] as String),
      unlockDomain: pulumi.Input.fromValue(map['unlockDomain'] as String),
    );
  }
}
