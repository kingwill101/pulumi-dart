// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_imperva_waf_settings_authentication.dart';

class FeedDetailsImpervaWafSettings {
  /// HTTP header based authentication.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsImpervaWafSettingsAuthentication?>? authentication;

  /// Creates a new [FeedDetailsImpervaWafSettings].
  /// [authentication] HTTP header based authentication.
  const FeedDetailsImpervaWafSettings({
    this.authentication,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsImpervaWafSettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
    };
  }

  factory FeedDetailsImpervaWafSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsImpervaWafSettings(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsImpervaWafSettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
