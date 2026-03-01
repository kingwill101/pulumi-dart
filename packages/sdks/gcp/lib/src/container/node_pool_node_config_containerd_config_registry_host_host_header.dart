// ignore_for_file: unused_element, unnecessary_cast


class NodePoolNodeConfigContainerdConfigRegistryHostHostHeader {
  /// Configures the header key.
  final String key;
  /// Configures the header value.
  final List<String> values;

  /// Creates a new [NodePoolNodeConfigContainerdConfigRegistryHostHostHeader].
  /// [key] Configures the header key.
  /// [values] Configures the header value.
  NodePoolNodeConfigContainerdConfigRegistryHostHostHeader({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'values': values,
    };
  }

  factory NodePoolNodeConfigContainerdConfigRegistryHostHostHeader.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigContainerdConfigRegistryHostHostHeader(
      key: map['key'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

