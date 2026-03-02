// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpringCloudGatewayApiMetadata {
  /// Detailed description of the APIs available on the Gateway instance.
  final pulumi.Input<String>? description;
  /// Location of additional documentation for the APIs available on the Gateway instance.
  final pulumi.Input<String>? documentationUrl;
  /// Base URL that API consumers will use to access APIs on the Gateway instance.
  final pulumi.Input<String>? serverUrl;
  /// Specifies the title describing the context of the APIs available on the Gateway instance.
  final pulumi.Input<String>? title;
  /// Specifies the version of APIs available on this Gateway instance.
  final pulumi.Input<String>? version;

  /// Creates a new [SpringCloudGatewayApiMetadata].
  /// [description] Detailed description of the APIs available on the Gateway instance.
  /// [documentationUrl] Location of additional documentation for the APIs available on the Gateway instance.
  /// [serverUrl] Base URL that API consumers will use to access APIs on the Gateway instance.
  /// [title] Specifies the title describing the context of the APIs available on the Gateway instance.
  /// [version] Specifies the version of APIs available on this Gateway instance.
  SpringCloudGatewayApiMetadata({
    this.description,
    this.documentationUrl,
    this.serverUrl,
    this.title,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'documentationUrl': ?documentationUrl,
      'serverUrl': ?serverUrl,
      'title': ?title,
      'version': ?version,
    };
  }

  factory SpringCloudGatewayApiMetadata.fromMap(Map<String, dynamic> map) {
    return SpringCloudGatewayApiMetadata(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      documentationUrl: map['documentationUrl'] == null ? null : (map['documentationUrl'] as String).input(),
      serverUrl: map['serverUrl'] == null ? null : (map['serverUrl'] as String).input(),
      title: map['title'] == null ? null : (map['title'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

