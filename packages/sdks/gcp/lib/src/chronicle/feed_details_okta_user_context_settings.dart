// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_okta_user_context_settings_authentication.dart';

class FeedDetailsOktaUserContextSettings {
  /// HTTP header based authentication.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsOktaUserContextSettingsAuthentication>? authentication;
  /// API Hostname.
  final pulumi.Input<String>? hostname;
  /// Manager id reference field.
  final pulumi.Input<String>? managerIdReferenceField;

  /// Creates a new [FeedDetailsOktaUserContextSettings].
  /// [authentication] HTTP header based authentication.
  /// [hostname] API Hostname.
  /// [managerIdReferenceField] Manager id reference field.
  const FeedDetailsOktaUserContextSettings({
    this.authentication,
    this.hostname,
    this.managerIdReferenceField,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsOktaUserContextSettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'hostname': ?hostname,
      'managerIdReferenceField': ?managerIdReferenceField,
    };
  }

  factory FeedDetailsOktaUserContextSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsOktaUserContextSettings(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsOktaUserContextSettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managerIdReferenceField: (() { final guardedValue = map['managerIdReferenceField']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
