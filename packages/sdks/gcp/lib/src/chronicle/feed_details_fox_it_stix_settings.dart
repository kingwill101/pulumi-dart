// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_fox_it_stix_settings_authentication.dart';
import 'feed_details_fox_it_stix_settings_ssl.dart';

class FeedDetailsFoxItStixSettings {
  /// Info for username and secret based authentication.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsFoxItStixSettingsAuthentication>? authentication;
  /// Collection available at the poll service.
  final pulumi.Input<String>? collection;
  /// TAXII poll service URI.
  final pulumi.Input<String>? pollServiceUri;
  /// An SSL client certificate keypair.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsFoxItStixSettingsSsl>? ssl;

  /// Creates a new [FeedDetailsFoxItStixSettings].
  /// [authentication] Info for username and secret based authentication.
  /// [collection] Collection available at the poll service.
  /// [pollServiceUri] TAXII poll service URI.
  /// [ssl] An SSL client certificate keypair.
  const FeedDetailsFoxItStixSettings({
    this.authentication,
    this.collection,
    this.pollServiceUri,
    this.ssl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsFoxItStixSettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'collection': ?collection,
      'pollServiceUri': ?pollServiceUri,
      'ssl': ?pulumi.Input.mapOptionalInputValue<FeedDetailsFoxItStixSettingsSsl, Map<String, dynamic>>(ssl, (value) => value.toMap()),
    };
  }

  factory FeedDetailsFoxItStixSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsFoxItStixSettings(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsFoxItStixSettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      collection: (() { final guardedValue = map['collection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pollServiceUri: (() { final guardedValue = map['pollServiceUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ssl: (() { final guardedValue = map['ssl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsFoxItStixSettingsSsl.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
