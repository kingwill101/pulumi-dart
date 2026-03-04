// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MonitorDatadogOrganization {
  /// Api key associated to the Datadog organization. Changing this forces a new Datadog Monitor to be created.
  final pulumi.Input<String> apiKey;

  /// Application key associated to the Datadog organization. Changing this forces a new Datadog Monitor to be created.
  final pulumi.Input<String> applicationKey;

  /// The ID of the enterprise_app. Changing this forces a new resource to be created.
  final pulumi.Input<String>? enterpriseAppId;

  /// The ID of the Datadog Monitor.
  final pulumi.Input<String>? id;

  /// The auth code used to linking to an existing Datadog organization. Changing this forces a new Datadog Monitor to be created.
  final pulumi.Input<String>? linkingAuthCode;

  /// The ID of the linking_client. Changing this forces a new Datadog Monitor to be created.
  final pulumi.Input<String>? linkingClientId;

  /// The name of the user that will be associated with the Datadog Monitor. Changing this forces a new Datadog Monitor to be created.
  final pulumi.Input<String>? name;

  /// The redirect uri for linking. Changing this forces a new Datadog Monitor to be created.
  final pulumi.Input<String>? redirectUri;

  /// Creates a new [MonitorDatadogOrganization].
  /// [apiKey] Api key associated to the Datadog organization. Changing this forces a new Datadog Monitor to be created.
  /// [applicationKey] Application key associated to the Datadog organization. Changing this forces a new Datadog Monitor to be created.
  /// [enterpriseAppId] The ID of the enterprise_app. Changing this forces a new resource to be created.
  /// [id] The ID of the Datadog Monitor.
  /// [linkingAuthCode] The auth code used to linking to an existing Datadog organization. Changing this forces a new Datadog Monitor to be created.
  /// [linkingClientId] The ID of the linking_client. Changing this forces a new Datadog Monitor to be created.
  /// [name] The name of the user that will be associated with the Datadog Monitor. Changing this forces a new Datadog Monitor to be created.
  /// [redirectUri] The redirect uri for linking. Changing this forces a new Datadog Monitor to be created.
  MonitorDatadogOrganization({
    required this.apiKey,
    required this.applicationKey,
    this.enterpriseAppId,
    this.id,
    this.linkingAuthCode,
    this.linkingClientId,
    this.name,
    this.redirectUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': apiKey,
      'applicationKey': applicationKey,
      'enterpriseAppId': ?enterpriseAppId,
      'id': ?id,
      'linkingAuthCode': ?linkingAuthCode,
      'linkingClientId': ?linkingClientId,
      'name': ?name,
      'redirectUri': ?redirectUri,
    };
  }

  factory MonitorDatadogOrganization.fromMap(Map<String, dynamic> map) {
    return MonitorDatadogOrganization(
      apiKey: pulumi.Input.fromValue(map['apiKey'] as String),
      applicationKey: pulumi.Input.fromValue(map['applicationKey'] as String),
      enterpriseAppId: (() {
        final guardedValue = map['enterpriseAppId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      linkingAuthCode: (() {
        final guardedValue = map['linkingAuthCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      linkingClientId: (() {
        final guardedValue = map['linkingClientId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      redirectUri: (() {
        final guardedValue = map['redirectUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
