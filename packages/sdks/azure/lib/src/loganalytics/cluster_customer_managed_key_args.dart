// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_loganalytics_cluster_customer_managed_key_cluster_customer_managed_key_args_doc}
/// The set of arguments for ClusterCustomerManagedKey.
/// {@endtemplate}
/// {@macro pulumi_loganalytics_cluster_customer_managed_key_cluster_customer_managed_key_args_doc}
class ClusterCustomerManagedKeyArgs {
  /// The ID of the Key Vault Key to use for encryption.
  final pulumi.Input<String> keyVaultKeyId;
  /// The ID of the Log Analytics Cluster. Changing this forces a new Log Analytics Cluster Customer Managed Key to be created.
  final pulumi.Input<String> logAnalyticsClusterId;

  /// Creates a new [ClusterCustomerManagedKeyArgs].
  /// [keyVaultKeyId] The ID of the Key Vault Key to use for encryption.
  /// [logAnalyticsClusterId] The ID of the Log Analytics Cluster. Changing this forces a new Log Analytics Cluster Customer Managed Key to be created.
  const ClusterCustomerManagedKeyArgs({
    required this.keyVaultKeyId,
    required this.logAnalyticsClusterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultKeyId': keyVaultKeyId,
      'logAnalyticsClusterId': logAnalyticsClusterId,
    };
  }

  factory ClusterCustomerManagedKeyArgs.fromMap(Map<String, dynamic> map) {
    return ClusterCustomerManagedKeyArgs(
      keyVaultKeyId: pulumi.Input.fromValue(map['keyVaultKeyId'] as String),
      logAnalyticsClusterId: pulumi.Input.fromValue(map['logAnalyticsClusterId'] as String),
    );
  }
}

