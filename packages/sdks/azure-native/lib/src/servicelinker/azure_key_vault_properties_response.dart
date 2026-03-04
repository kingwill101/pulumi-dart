// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The resource properties when type is Azure Key Vault
class AzureKeyVaultPropertiesResponse {
  /// True if connect via Kubernetes CSI Driver.
  final pulumi.Input<bool>? connectAsKubernetesCsiDriver;

  /// The azure resource type.
  /// Expected value is 'KeyVault'.
  final pulumi.Input<String> type;

  /// Creates a new [AzureKeyVaultPropertiesResponse].
  /// [connectAsKubernetesCsiDriver] True if connect via Kubernetes CSI Driver.
  /// [type] The azure resource type.
  AzureKeyVaultPropertiesResponse({
    this.connectAsKubernetesCsiDriver,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectAsKubernetesCsiDriver': ?connectAsKubernetesCsiDriver,
      'type': type,
    };
  }

  factory AzureKeyVaultPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AzureKeyVaultPropertiesResponse(
      connectAsKubernetesCsiDriver: (() {
        final guardedValue = map['connectAsKubernetesCsiDriver'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
