// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_netskope_alert_v2_settings_authentication.dart';

class FeedDetailsNetskopeAlertV2Settings {
  /// HTTP header based authentication.
  final pulumi.Input<FeedDetailsNetskopeAlertV2SettingsAuthentication>? authentication;
  /// Content Category.
  final pulumi.Input<String>? contentCategory;
  /// Content type.
  final pulumi.Input<List<String>>? contentTypes;
  /// API Hostname.
  final pulumi.Input<String>? hostname;

  /// Creates a new [FeedDetailsNetskopeAlertV2Settings].
  /// [authentication] HTTP header based authentication.
  /// [contentCategory] Content Category.
  /// [contentTypes] Content type.
  /// [hostname] API Hostname.
  const FeedDetailsNetskopeAlertV2Settings({
    this.authentication,
    this.contentCategory,
    this.contentTypes,
    this.hostname,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsNetskopeAlertV2SettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'contentCategory': ?contentCategory,
      'contentTypes': ?contentTypes,
      'hostname': ?hostname,
    };
  }

  factory FeedDetailsNetskopeAlertV2Settings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsNetskopeAlertV2Settings(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsNetskopeAlertV2SettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      contentCategory: (() { final guardedValue = map['contentCategory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentTypes: (() { final guardedValue = map['contentTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
