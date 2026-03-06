// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AzureLinkAccount resources.
class AzureLinkAccountState {
  /// Account ID of the New Relic.
  final pulumi.Input<String>? accountId;
  /// Application ID of the App.
  final pulumi.Input<String>? applicationId;
  /// Secret Value of the client.
  final pulumi.Input<String>? clientSecret;
  /// The name of the application in New Relic APM.
  final pulumi.Input<String>? name;
  /// Subscription ID of the Azure cloud account.
  final pulumi.Input<String>? subscriptionId;
  /// Tenant ID of the Azure cloud account.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [AzureLinkAccountState].
  /// [accountId] Account ID of the New Relic.
  /// [applicationId] Application ID of the App.
  /// [clientSecret] Secret Value of the client.
  /// [name] The name of the application in New Relic APM.
  /// [subscriptionId] Subscription ID of the Azure cloud account.
  /// [tenantId] Tenant ID of the Azure cloud account.
  const AzureLinkAccountState({
    this.accountId,
    this.applicationId,
    this.clientSecret,
    this.name,
    this.subscriptionId,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'applicationId': ?applicationId,
      'clientSecret': ?clientSecret,
      'name': ?name,
      'subscriptionId': ?subscriptionId,
      'tenantId': ?tenantId,
    };
  }

  factory AzureLinkAccountState.fromMap(Map<String, dynamic> map) {
    return AzureLinkAccountState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      applicationId: (() { final guardedValue = map['applicationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

