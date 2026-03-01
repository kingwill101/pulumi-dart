// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloud_azure_link_account_azure_link_account_args_doc}
/// The set of arguments for AzureLinkAccount.
/// {@endtemplate}
/// {@macro pulumi_cloud_azure_link_account_azure_link_account_args_doc}
class AzureLinkAccountArgs {
  /// Account ID of the New Relic.
  final pulumi.Input<String>? accountId;
  /// Application ID of the App.
  final pulumi.Input<String> applicationId;
  /// Secret Value of the client.
  final pulumi.Input<String> clientSecret;
  /// The name of the application in New Relic APM.
  final pulumi.Input<String>? name;
  /// Subscription ID of the Azure cloud account.
  final pulumi.Input<String> subscriptionId;
  /// Tenant ID of the Azure cloud account.
  final pulumi.Input<String> tenantId;

  /// Creates a new [AzureLinkAccountArgs].
  /// [accountId] Account ID of the New Relic.
  /// [applicationId] Application ID of the App.
  /// [clientSecret] Secret Value of the client.
  /// [name] The name of the application in New Relic APM.
  /// [subscriptionId] Subscription ID of the Azure cloud account.
  /// [tenantId] Tenant ID of the Azure cloud account.
  AzureLinkAccountArgs({
    pulumi.Output<String>? accountId,
    required pulumi.Output<String> applicationId,
    required pulumi.Output<String> clientSecret,
    pulumi.Output<String>? name,
    required pulumi.Output<String> subscriptionId,
    required pulumi.Output<String> tenantId,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      applicationId = pulumi.Input.asInput<String>(applicationId),
      clientSecret = pulumi.Input.asInput<String>(clientSecret),
      name = pulumi.Input.asOptionalInput<String>(name),
      subscriptionId = pulumi.Input.asInput<String>(subscriptionId),
      tenantId = pulumi.Input.asInput<String>(tenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'applicationId': applicationId,
      'clientSecret': clientSecret,
      'name': ?name,
      'subscriptionId': subscriptionId,
      'tenantId': tenantId,
    };
  }

  factory AzureLinkAccountArgs.fromMap(Map<String, dynamic> map) {
    return AzureLinkAccountArgs(
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      applicationId: pulumi.Output.create<String>(map['applicationId'] as String),
      clientSecret: pulumi.Output.create<String>(map['clientSecret'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      subscriptionId: pulumi.Output.create<String>(map['subscriptionId'] as String),
      tenantId: pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

