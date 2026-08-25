// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_proofpoint_mail_settings_authentication.dart';

class FeedDetailsProofpointMailSettings {
  /// Info for username and secret based authentication.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsProofpointMailSettingsAuthentication?>? authentication;

  /// Creates a new [FeedDetailsProofpointMailSettings].
  /// [authentication] Info for username and secret based authentication.
  const FeedDetailsProofpointMailSettings({
    this.authentication,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsProofpointMailSettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
    };
  }

  factory FeedDetailsProofpointMailSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsProofpointMailSettings(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsProofpointMailSettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
