// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_trellix_hx_hosts_settings_authentication.dart';

class FeedDetailsTrellixHxHostsSettings {
  /// TrellixStarXAuthentication contains a oneof with all of the authentication
  /// types supported by Trellix *X devices.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsTrellixHxHostsSettingsAuthentication?>? authentication;
  /// Trellix HX Device URL.
  /// This must be a valid URL with an http or https scheme. It has no default.
  /// Usually a device URL is in the form of either:
  /// https://xxx.trellix.com/hx/id//
  /// - or -
  /// https://htapdeviceproxy.md.mandiant.net/dphb/hx//
  final pulumi.Input<String> endpoint;

  /// Creates a new [FeedDetailsTrellixHxHostsSettings].
  /// [authentication] TrellixStarXAuthentication contains a oneof with all of the authentication
  /// [endpoint] Trellix HX Device URL.
  const FeedDetailsTrellixHxHostsSettings({
    this.authentication,
    required this.endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsTrellixHxHostsSettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'endpoint': endpoint,
    };
  }

  factory FeedDetailsTrellixHxHostsSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsTrellixHxHostsSettings(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsTrellixHxHostsSettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
    );
  }
}
