// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_threat_connect_ioc_v3_settings_authentication.dart';

class FeedDetailsThreatConnectIocV3Settings {
  /// Info for username and secret based authentication.
  final pulumi.Input<FeedDetailsThreatConnectIocV3SettingsAuthentication?>? authentication;
  /// Fields
  final pulumi.Input<List<String>?>? fields;
  /// hostname.
  final pulumi.Input<String?>? hostname;
  /// Owners.
  final pulumi.Input<List<String>?>? owners;
  /// Schedule
  final pulumi.Input<int?>? schedule;
  /// ThreatConnect Query Language filter.
  final pulumi.Input<String?>? tqlQuery;

  /// Creates a new [FeedDetailsThreatConnectIocV3Settings].
  /// [authentication] Info for username and secret based authentication.
  /// [fields] Fields
  /// [hostname] hostname.
  /// [owners] Owners.
  /// [schedule] Schedule
  /// [tqlQuery] ThreatConnect Query Language filter.
  const FeedDetailsThreatConnectIocV3Settings({
    this.authentication,
    this.fields,
    this.hostname,
    this.owners,
    this.schedule,
    this.tqlQuery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsThreatConnectIocV3SettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'fields': ?fields,
      'hostname': ?hostname,
      'owners': ?owners,
      'schedule': ?schedule,
      'tqlQuery': ?tqlQuery,
    };
  }

  factory FeedDetailsThreatConnectIocV3Settings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsThreatConnectIocV3Settings(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsThreatConnectIocV3SettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fields: (() { final guardedValue = map['fields']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      owners: (() { final guardedValue = map['owners']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      tqlQuery: (() { final guardedValue = map['tqlQuery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
