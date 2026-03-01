import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_link_account_args.dart';
import 'azure_link_account_state.dart';

/// Use this resource to link an Azure account to New Relic.
///
/// ## Prerequisite
///
/// Some configuration is required in Azure for the New Relic Azure cloud integrations to be able to pull data.
///
/// To start receiving Azure data with New Relic Azure integrations, connect your Azure account to New Relic infrastructure monitoring. If you don't have one already, create a New Relic account. It's free, forever.
///
/// Setup is required in Azure for this resource to work properly. You can find instructions on how to set up Azure on [our documentation](https://docs.newrelic.com/docs/infrastructure/microsoft-azure-integrations/get-started/activate-azure-integrations/).
///
/// ## Example Usage
///
/// You can also use the full example, including the Azure set up, found in our guides.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.cloud.AzureLinkAccount("foo", {
///     accountId: "The New Relic account ID where you want to link the Azure account",
///     applicationId: "ID of the application",
///     clientSecret: "Secret value of client's Azure account",
///     subscriptionId: "Subscription ID of Azure",
///     tenantId: "Tenant ID of the Azure",
///     name: "Name of the linked account",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.cloud.AzureLinkAccount("foo",
///     account_id="The New Relic account ID where you want to link the Azure account",
///     application_id="ID of the application",
///     client_secret="Secret value of client's Azure account",
///     subscription_id="Subscription ID of Azure",
///     tenant_id="Tenant ID of the Azure",
///     name="Name of the linked account")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new NewRelic.Cloud.AzureLinkAccount("foo", new()
///     {
///         AccountId = "The New Relic account ID where you want to link the Azure account",
///         ApplicationId = "ID of the application",
///         ClientSecret = "Secret value of client's Azure account",
///         SubscriptionId = "Subscription ID of Azure",
///         TenantId = "Tenant ID of the Azure",
///         Name = "Name of the linked account",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic/cloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloud.NewAzureLinkAccount(ctx, "foo", &cloud.AzureLinkAccountArgs{
/// 			AccountId:      pulumi.String("The New Relic account ID where you want to link the Azure account"),
/// 			ApplicationId:  pulumi.String("ID of the application"),
/// 			ClientSecret:   pulumi.String("Secret value of client's Azure account"),
/// 			SubscriptionId: pulumi.String("Subscription ID of Azure"),
/// 			TenantId:       pulumi.String("Tenant ID of the Azure"),
/// 			Name:           pulumi.String("Name of the linked account"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.newrelic.cloud.AzureLinkAccount;
/// import com.pulumi.newrelic.cloud.AzureLinkAccountArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var foo = new AzureLinkAccount("foo", AzureLinkAccountArgs.builder()
///             .accountId("The New Relic account ID where you want to link the Azure account")
///             .applicationId("ID of the application")
///             .clientSecret("Secret value of client's Azure account")
///             .subscriptionId("Subscription ID of Azure")
///             .tenantId("Tenant ID of the Azure")
///             .name("Name of the linked account")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:cloud:AzureLinkAccount
///     properties:
///       accountId: The New Relic account ID where you want to link the Azure account
///       applicationId: ID of the application
///       clientSecret: Secret value of client's Azure account
///       subscriptionId: Subscription ID of Azure
///       tenantId: Tenant ID of the Azure
///       name: Name of the linked account
/// ```
///
///
/// ## Import
///
/// Linked Azure accounts can be imported using `id`, you can find the `id` of existing Azure linked accounts in Azure dashboard under Infrastructure in NewRelic
///
/// ```bash
/// $ terraform import newrelic_cloud_azure_link_account.foo <id>
///
/// ```
class AzureLinkAccount extends pulumi.CustomResource {
  /// Account ID of the New Relic.
  late final pulumi.Output<String> accountId;
  /// Application ID of the App.
  late final pulumi.Output<String> applicationId;
  /// Secret Value of the client.
  late final pulumi.Output<String> clientSecret;
  /// The name of the application in New Relic APM.
  late final pulumi.Output<String> name;
  /// Subscription ID of the Azure cloud account.
  late final pulumi.Output<String> subscriptionId;
  /// Tenant ID of the Azure cloud account.
  late final pulumi.Output<String> tenantId;

  /// Creates a new [AzureLinkAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AzureLinkAccount]. {@macro pulumi_cloud_azure_link_account_azure_link_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AzureLinkAccount(
    String name, {
    AzureLinkAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:cloud/azureLinkAccount:AzureLinkAccount',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.applicationId = registerOutput<String>('applicationId');
    this.clientSecret = registerOutput<String>('clientSecret');
    this.name = registerOutput<String>('name');
    this.subscriptionId = registerOutput<String>('subscriptionId');
    this.tenantId = registerOutput<String>('tenantId');
  }

  /// Gets an existing [AzureLinkAccount] resource's state with the given [name] and [id].
  static AzureLinkAccount get(
    String name,
    pulumi.Input<String> id, {
    AzureLinkAccountState? state,
  }) {
    return AzureLinkAccount._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AzureLinkAccount._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:cloud/azureLinkAccount:AzureLinkAccount',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.applicationId = registerOutput<String>('applicationId');
    this.clientSecret = registerOutput<String>('clientSecret');
    this.name = registerOutput<String>('name');
    this.subscriptionId = registerOutput<String>('subscriptionId');
    this.tenantId = registerOutput<String>('tenantId');
  }
}
