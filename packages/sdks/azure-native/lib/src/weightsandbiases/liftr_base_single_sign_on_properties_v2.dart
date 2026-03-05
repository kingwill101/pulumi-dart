// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties specific to Single Sign On Resource
class LiftrBaseSingleSignOnPropertiesV2 {
  /// List of AAD domains fetched from Microsoft Graph for user.
  final pulumi.Input<List<String>>? aadDomains;
  /// AAD enterprise application Id used to setup SSO
  final pulumi.Input<String>? enterpriseAppId;
  /// State of the Single Sign On for the resource
  final pulumi.Input<String>? state;
  /// Type of Single Sign-On mechanism being used
  final pulumi.Input<String> type;
  /// URL for SSO to be used by the partner to redirect the user to their system
  final pulumi.Input<String>? url;

  /// Creates a new [LiftrBaseSingleSignOnPropertiesV2].
  /// [aadDomains] List of AAD domains fetched from Microsoft Graph for user.
  /// [enterpriseAppId] AAD enterprise application Id used to setup SSO
  /// [state] State of the Single Sign On for the resource
  /// [type] Type of Single Sign-On mechanism being used
  /// [url] URL for SSO to be used by the partner to redirect the user to their system
  LiftrBaseSingleSignOnPropertiesV2({
    this.aadDomains,
    this.enterpriseAppId,
    this.state,
    required this.type,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadDomains': ?aadDomains,
      'enterpriseAppId': ?enterpriseAppId,
      'state': ?state,
      'type': type,
      'url': ?url,
    };
  }

  factory LiftrBaseSingleSignOnPropertiesV2.fromMap(Map<String, dynamic> map) {
    return LiftrBaseSingleSignOnPropertiesV2(
      aadDomains: (() { final guardedValue = map['aadDomains']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      enterpriseAppId: (() { final guardedValue = map['enterpriseAppId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

