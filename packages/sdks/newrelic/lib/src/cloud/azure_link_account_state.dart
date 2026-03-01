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
  AzureLinkAccountState({
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? applicationId,
    pulumi.Output<String>? clientSecret,
    pulumi.Output<String>? name,
    pulumi.Output<String>? subscriptionId,
    pulumi.Output<String>? tenantId,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      applicationId = pulumi.Input.asOptionalInput<String>(applicationId),
      clientSecret = pulumi.Input.asOptionalInput<String>(clientSecret),
      name = pulumi.Input.asOptionalInput<String>(name),
      subscriptionId = pulumi.Input.asOptionalInput<String>(subscriptionId),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

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
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      applicationId: map['applicationId'] == null ? null : pulumi.Output.create<String>(map['applicationId'] as String),
      clientSecret: map['clientSecret'] == null ? null : pulumi.Output.create<String>(map['clientSecret'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      subscriptionId: map['subscriptionId'] == null ? null : pulumi.Output.create<String>(map['subscriptionId'] as String),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

