// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_trellix_hx_bulk_acqs_settings_authentication.dart';

class FeedDetailsTrellixHxBulkAcqsSettings {
  /// TrellixStarXAuthentication contains a oneof with all of the authentication
  /// types supported by Trellix *X devices.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsTrellixHxBulkAcqsSettingsAuthentication>? authentication;
  /// Trellix HX Device URL.
  /// This must be a valid URL with an http or https scheme. It has no default.
  /// Usually a device URL is in the form of either:
  /// https://xxx.trellix.com/hx/id//
  /// - or -
  /// https://htapdeviceproxy.md.mandiant.net/dphb/hx//
  final pulumi.Input<String> endpoint;

  /// Creates a new [FeedDetailsTrellixHxBulkAcqsSettings].
  /// [authentication] TrellixStarXAuthentication contains a oneof with all of the authentication
  /// [endpoint] Trellix HX Device URL.
  const FeedDetailsTrellixHxBulkAcqsSettings({
    this.authentication,
    required this.endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsTrellixHxBulkAcqsSettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'endpoint': endpoint,
    };
  }

  factory FeedDetailsTrellixHxBulkAcqsSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsTrellixHxBulkAcqsSettings(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsTrellixHxBulkAcqsSettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
    );
  }
}
