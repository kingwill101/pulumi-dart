// ignore_for_file: unused_element, unnecessary_cast


class PluginDocumentation {
  /// The uri of the externally hosted documentation.
  final String? externalUri;

  /// Creates a new [PluginDocumentation].
  /// [externalUri] The uri of the externally hosted documentation.
  PluginDocumentation({
    this.externalUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalUri': ?externalUri,
    };
  }

  factory PluginDocumentation.fromMap(Map<String, dynamic> map) {
    return PluginDocumentation(
      externalUri: map['externalUri'] == null ? null : map['externalUri'] as String,
    );
  }
}

