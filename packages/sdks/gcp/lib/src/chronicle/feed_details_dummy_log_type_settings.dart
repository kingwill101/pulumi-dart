// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_dummy_log_type_settings_authentication.dart';

class FeedDetailsDummyLogTypeSettings {
  /// Full API Endpoint.
  final pulumi.Input<String?>? apiEndpoint;
  /// HTTP header based authentication.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsDummyLogTypeSettingsAuthentication?>? authentication;

  /// Creates a new [FeedDetailsDummyLogTypeSettings].
  /// [apiEndpoint] Full API Endpoint.
  /// [authentication] HTTP header based authentication.
  const FeedDetailsDummyLogTypeSettings({
    this.apiEndpoint,
    this.authentication,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiEndpoint': ?apiEndpoint,
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsDummyLogTypeSettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
    };
  }

  factory FeedDetailsDummyLogTypeSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsDummyLogTypeSettings(
      apiEndpoint: (() { final guardedValue = map['apiEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsDummyLogTypeSettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
