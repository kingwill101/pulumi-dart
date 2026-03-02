// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The resource properties when type is Azure Key Vault
class AzureKeyVaultProperties {
  /// True if connect via Kubernetes CSI Driver.
  final pulumi.Input<bool>? connectAsKubernetesCsiDriver;
  /// The azure resource type.
  /// Expected value is 'KeyVault'.
  final pulumi.Input<String> type;

  /// Creates a new [AzureKeyVaultProperties].
  /// [connectAsKubernetesCsiDriver] True if connect via Kubernetes CSI Driver.
  /// [type] The azure resource type.
  AzureKeyVaultProperties({
    this.connectAsKubernetesCsiDriver,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectAsKubernetesCsiDriver': ?connectAsKubernetesCsiDriver,
      'type': type,
    };
  }

  factory AzureKeyVaultProperties.fromMap(Map<String, dynamic> map) {
    return AzureKeyVaultProperties(
      connectAsKubernetesCsiDriver: map['connectAsKubernetesCsiDriver'] == null ? null : (map['connectAsKubernetesCsiDriver']! as bool).input(),
      type: (map['type'] as String).input(),
    );
  }
}

