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
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      documentationUrl: (() {
        final guardedValue = map['documentationUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serverUrl: (() {
        final guardedValue = map['serverUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      title: (() {
        final guardedValue = map['title'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
