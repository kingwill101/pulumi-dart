// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostHeader {
  /// Configures the header key.
  final pulumi.Input<String> key;
  /// Configures the header value.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostHeader].
  /// [key] Configures the header key.
  /// [values] Configures the header value.
  const GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostHeader({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'values': values,
    };
  }

  factory GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostHeader.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostHeader(
      key: pulumi.Input.fromValue(map['key'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
