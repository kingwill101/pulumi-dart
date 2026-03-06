// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'upstream_template_response.dart';

/// The settings for the Upstream when the service is in server-less mode.
class ServerlessUpstreamSettingsResponse {
  /// Gets or sets the list of Upstream URL templates. Order matters, and the first matching template takes effects.
  final pulumi.Input<List<UpstreamTemplateResponse>>? templates;

  /// Creates a new [ServerlessUpstreamSettingsResponse].
  /// [templates] Gets or sets the list of Upstream URL templates. Order matters, and the first matching template takes effects.
  const ServerlessUpstreamSettingsResponse({
    this.templates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'templates': ?pulumi.Input.mapOptionalInputValue<List<UpstreamTemplateResponse>, List<Map<String, dynamic>>>(templates, (value) => pulumi.Input.encodeList<UpstreamTemplateResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ServerlessUpstreamSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ServerlessUpstreamSettingsResponse(
      templates: (() { final guardedValue = map['templates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UpstreamTemplateResponse>(guardedValue, (value) => UpstreamTemplateResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

