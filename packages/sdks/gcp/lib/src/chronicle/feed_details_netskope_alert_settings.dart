// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_netskope_alert_settings_authentication.dart';

class FeedDetailsNetskopeAlertSettings {
  /// HTTP header based authentication.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsNetskopeAlertSettingsAuthentication?>? authentication;
  /// Content type.
  final pulumi.Input<String?>? contentType;
  /// Feedname.
  final pulumi.Input<String?>? feedname;
  /// API Hostname.
  final pulumi.Input<String?>? hostname;

  /// Creates a new [FeedDetailsNetskopeAlertSettings].
  /// [authentication] HTTP header based authentication.
  /// [contentType] Content type.
  /// [feedname] Feedname.
  /// [hostname] API Hostname.
  const FeedDetailsNetskopeAlertSettings({
    this.authentication,
    this.contentType,
    this.feedname,
    this.hostname,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsNetskopeAlertSettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'contentType': ?contentType,
      'feedname': ?feedname,
      'hostname': ?hostname,
    };
  }

  factory FeedDetailsNetskopeAlertSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsNetskopeAlertSettings(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsNetskopeAlertSettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      feedname: (() { final guardedValue = map['feedname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
