// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterDatabaseEncryption {
  /// the key to use to encrypt/decrypt secrets.  See the [DatabaseEncryption definition](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1beta1/projects.locations.clusters#Cluster.DatabaseEncryption) for more information.
  ///
  /// &lt;a name="nested_enable_k8s_beta_apis"&gt;&lt;/a&gt;The `enable_k8s_beta_apis` block supports:
  final pulumi.Input<String>? keyName;
  /// `ENCRYPTED` or `DECRYPTED`
  final pulumi.Input<String> state;

  /// Creates a new [ClusterDatabaseEncryption].
  /// [keyName] the key to use to encrypt/decrypt secrets.  See the [DatabaseEncryption definition](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1beta1/projects.locations.clusters#Cluster.DatabaseEncryption) for more information.
  /// [state] `ENCRYPTED` or `DECRYPTED`
  ClusterDatabaseEncryption({
    this.keyName,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': ?keyName,
      'state': state,
    };
  }

  factory ClusterDatabaseEncryption.fromMap(Map<String, dynamic> map) {
    return ClusterDatabaseEncryption(
      keyName: (() { final guardedValue = map['keyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}

