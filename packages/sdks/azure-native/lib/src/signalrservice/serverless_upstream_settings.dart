// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'upstream_template.dart';

/// The settings for the Upstream when the service is in server-less mode.
class ServerlessUpstreamSettings {
  /// Gets or sets the list of Upstream URL templates. Order matters, and the first matching template takes effects.
  final pulumi.Input<List<UpstreamTemplate>>? templates;

  /// Creates a new [ServerlessUpstreamSettings].
  /// [templates] Gets or sets the list of Upstream URL templates. Order matters, and the first matching template takes effects.
  ServerlessUpstreamSettings({
    this.templates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'templates': ?pulumi.Input.mapOptionalInputValue<List<UpstreamTemplate>, List<Map<String, dynamic>>>(templates, (value) => pulumi.Input.encodeList<UpstreamTemplate, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ServerlessUpstreamSettings.fromMap(Map<String, dynamic> map) {
    return ServerlessUpstreamSettings(
      templates: map['templates'] == null ? null : (pulumi.Input.decodeList<UpstreamTemplate>(map['templates']!, (value) => UpstreamTemplate.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

