// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ClusterCustomerManagedKey resources.
class ClusterCustomerManagedKeyState {
  /// The ID of the Key Vault Key to use for encryption.
  final pulumi.Input<String>? keyVaultKeyId;
  /// The ID of the Log Analytics Cluster. Changing this forces a new Log Analytics Cluster Customer Managed Key to be created.
  final pulumi.Input<String>? logAnalyticsClusterId;

  /// Creates a new [ClusterCustomerManagedKeyState].
  /// [keyVaultKeyId] The ID of the Key Vault Key to use for encryption.
  /// [logAnalyticsClusterId] The ID of the Log Analytics Cluster. Changing this forces a new Log Analytics Cluster Customer Managed Key to be created.
  ClusterCustomerManagedKeyState({
    this.keyVaultKeyId,
    this.logAnalyticsClusterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultKeyId': ?keyVaultKeyId,
      'logAnalyticsClusterId': ?logAnalyticsClusterId,
    };
  }

  factory ClusterCustomerManagedKeyState.fromMap(Map<String, dynamic> map) {
    return ClusterCustomerManagedKeyState(
      keyVaultKeyId: (() { final guardedValue = map['keyVaultKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logAnalyticsClusterId: (() { final guardedValue = map['logAnalyticsClusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

