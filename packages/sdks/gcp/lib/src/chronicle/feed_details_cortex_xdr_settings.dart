// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_cortex_xdr_settings_authentication.dart';

class FeedDetailsCortexXdrSettings {
  /// HTTP header based authentication.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsCortexXdrSettingsAuthentication>? authentication;
  /// API Endpoint.
  final pulumi.Input<String>? endpoint;
  /// API Hostname.
  final pulumi.Input<String>? hostname;

  /// Creates a new [FeedDetailsCortexXdrSettings].
  /// [authentication] HTTP header based authentication.
  /// [endpoint] API Endpoint.
  /// [hostname] API Hostname.
  const FeedDetailsCortexXdrSettings({
    this.authentication,
    this.endpoint,
    this.hostname,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsCortexXdrSettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'endpoint': ?endpoint,
      'hostname': ?hostname,
    };
  }

  factory FeedDetailsCortexXdrSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsCortexXdrSettings(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsCortexXdrSettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
