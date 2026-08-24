// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegistrarDomainsResultTransferIn {
  /// Form of authorization has been accepted by the registrant.
  /// Available values: "needed", "ok".
  final pulumi.Input<String> acceptFoa;
  /// Shows transfer status with the registry.
  /// Available values: "needed", "ok", "pending", "trying", "rejected", "unknown".
  final pulumi.Input<String> approveTransfer;
  /// Indicates if cancellation is still possible.
  final pulumi.Input<bool> canCancelTransfer;
  /// Privacy guards are disabled at the foreign registrar.
  /// Available values: "needed", "ok", "unknown".
  final pulumi.Input<String> disablePrivacy;
  /// Auth code has been entered and verified.
  /// Available values: "needed", "ok", "pending", "trying", "rejected".
  final pulumi.Input<String> enterAuthCode;
  /// Domain is unlocked at the foreign registrar.
  /// Available values: "needed", "ok", "pending", "trying", "unknown".
  final pulumi.Input<String> unlockDomain;

  /// Creates a new [GetRegistrarDomainsResultTransferIn].
  /// [acceptFoa] Form of authorization has been accepted by the registrant.
  /// [approveTransfer] Shows transfer status with the registry.
  /// [canCancelTransfer] Indicates if cancellation is still possible.
  /// [disablePrivacy] Privacy guards are disabled at the foreign registrar.
  /// [enterAuthCode] Auth code has been entered and verified.
  /// [unlockDomain] Domain is unlocked at the foreign registrar.
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
