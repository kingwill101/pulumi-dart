import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_rule_args.dart';
import 'authorization_rule_state.dart';

/// Manages an Authorization Rule associated with a Notification Hub within a Notification Hub Namespace.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "notificationhub-resources",
///     location: "West Europe",
/// });
/// const exampleNamespace = new azure.notificationhub.Namespace("example", {
///     name: "myappnamespace",
///     resourceGroupName: example.name,
///     location: example.location,
///     namespaceType: "NotificationHub",
///     skuName: "Free",
/// });
/// const exampleHub = new azure.notificationhub.Hub("example", {
///     name: "mynotificationhub",
///     namespaceName: exampleNamespace.name,
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleAuthorizationRule = new azure.notificationhub.AuthorizationRule("example", {
///     name: "management-auth-rule",
///     notificationHubName: exampleHub.name,
///     namespaceName: exampleNamespace.name,
///     resourceGroupName: example.name,
///     manage: true,
///     send: true,
///     listen: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="notificationhub-resources",
///     location="West Europe")
/// example_namespace = azure.notificationhub.Namespace("example",
///     name="myappnamespace",
///     resource_group_name=example.name,
///     location=example.location,
///     namespace_type="NotificationHub",
///     sku_name="Free")
/// example_hub = azure.notificationhub.Hub("example",
///     name="mynotificationhub",
///     namespace_name=example_namespace.name,
///     resource_group_name=example.name,
///     location=example.location)
/// example_authorization_rule = azure.notificationhub.AuthorizationRule("example",
///     name="management-auth-rule",
///     notification_hub_name=example_hub.name,
///     namespace_name=example_namespace.name,
///     resource_group_name=example.name,
///     manage=True,
///     send=True,
///     listen=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "notificationhub-resources",
///         Location = "West Europe",
///     });
///
///     var exampleNamespace = new Azure.NotificationHub.Namespace("example", new()
///     {
///         Name = "myappnamespace",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         NamespaceType = "NotificationHub",
///         SkuName = "Free",
///     });
///
///     var exampleHub = new Azure.NotificationHub.Hub("example", new()
///     {
///         Name = "mynotificationhub",
///         NamespaceName = exampleNamespace.Name,
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleAuthorizationRule = new Azure.NotificationHub.AuthorizationRule("example", new()
///     {
///         Name = "management-auth-rule",
///         NotificationHubName = exampleHub.Name,
///         NamespaceName = exampleNamespace.Name,
///         ResourceGroupName = example.Name,
///         Manage = true,
///         Send = true,
///         Listen = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/notificationhub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("notificationhub-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNamespace, err := notificationhub.NewNamespace(ctx, "example", &notificationhub.NamespaceArgs{
/// 			Name:              pulumi.String("myappnamespace"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			NamespaceType:     pulumi.String("NotificationHub"),
/// 			SkuName:           pulumi.String("Free"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleHub, err := notificationhub.NewHub(ctx, "example", &notificationhub.HubArgs{
/// 			Name:              pulumi.String("mynotificationhub"),
/// 			NamespaceName:     exampleNamespace.Name,
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = notificationhub.NewAuthorizationRule(ctx, "example", &notificationhub.AuthorizationRuleArgs{
/// 			Name:                pulumi.String("management-auth-rule"),
/// 			NotificationHubName: exampleHub.Name,
/// 			NamespaceName:       exampleNamespace.Name,
/// 			ResourceGroupName:   example.Name,
/// 			Manage:              pulumi.Bool(true),
/// 			Send:                pulumi.Bool(true),
/// 			Listen:              pulumi.Bool(true),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.notificationhub.Namespace;
/// import com.pulumi.azure.notificationhub.NamespaceArgs;
/// import com.pulumi.azure.notificationhub.Hub;
/// import com.pulumi.azure.notificationhub.HubArgs;
/// import com.pulumi.azure.notificationhub.AuthorizationRule;
/// import com.pulumi.azure.notificationhub.AuthorizationRuleArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("notificationhub-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleNamespace = new Namespace("exampleNamespace", NamespaceArgs.builder()
///             .name("myappnamespace")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .namespaceType("NotificationHub")
///             .skuName("Free")
///             .build());
///
///         var exampleHub = new Hub("exampleHub", HubArgs.builder()
///             .name("mynotificationhub")
///             .namespaceName(exampleNamespace.name())
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleAuthorizationRule = new AuthorizationRule("exampleAuthorizationRule", AuthorizationRuleArgs.builder()
///             .name("management-auth-rule")
///             .notificationHubName(exampleHub.name())
///             .namespaceName(exampleNamespace.name())
///             .resourceGroupName(example.name())
///             .manage(true)
///             .send(true)
///             .listen(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: notificationhub-resources
///       location: West Europe
///   exampleNamespace:
///     type: azure:notificationhub:Namespace
///     name: example
///     properties:
///       name: myappnamespace
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       namespaceType: NotificationHub
///       skuName: Free
///   exampleHub:
///     type: azure:notificationhub:Hub
///     name: example
///     properties:
///       name: mynotificationhub
///       namespaceName: ${exampleNamespace.name}
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleAuthorizationRule:
///     type: azure:notificationhub:AuthorizationRule
///     name: example
///     properties:
///       name: management-auth-rule
///       notificationHubName: ${exampleHub.name}
///       namespaceName: ${exampleNamespace.name}
///       resourceGroupName: ${example.name}
///       manage: true
///       send: true
///       listen: true
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.NotificationHubs` - 2023-09-01
///
/// ## Import
///
/// Notification Hub Authorization Rule can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:notificationhub/authorizationRule:AuthorizationRule rule1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.NotificationHubs/namespaces/namespace1/notificationHubs/hub1/authorizationRules/rule1
/// ```
class AuthorizationRule extends pulumi.CustomResource {
  /// Does this Authorization Rule have Listen access to the Notification Hub? Defaults to `false`.
  late final pulumi.Output<bool?> listen;
  /// Does this Authorization Rule have Manage access to the Notification Hub? Defaults to `false`.
  ///
  /// > **Note:** If `manage` is set to `true` then both `send` and `listen` must also be set to `true`.
  late final pulumi.Output<bool?> manage;
  /// The name to use for this Authorization Rule. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the Notification Hub Namespace in which the Notification Hub exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> namespaceName;
  /// The name of the Notification Hub for which the Authorization Rule should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> notificationHubName;
  /// The Primary Access Key associated with this Authorization Rule.
  late final pulumi.Output<String> primaryAccessKey;
  /// The Primary Connetion String associated with this Authorization Rule.
  late final pulumi.Output<String> primaryConnectionString;
  /// The name of the Resource Group in which the Notification Hub Namespace exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The Secondary Access Key associated with this Authorization Rule.
  late final pulumi.Output<String> secondaryAccessKey;
  /// The Secondary Connetion String associated with this Authorization Rule.
  late final pulumi.Output<String> secondaryConnectionString;
  /// Does this Authorization Rule have Send access to the Notification Hub? Defaults to `false`.
  late final pulumi.Output<bool?> send;

  /// Creates a new [AuthorizationRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AuthorizationRule]. {@macro pulumi_notificationhub_authorization_rule_authorization_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AuthorizationRule(
    String name, {
    AuthorizationRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:notificationhub/authorizationRule:AuthorizationRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.listen = registerOutput<bool?>('listen');
    this.manage = registerOutput<bool?>('manage');
    this.name = registerOutput<String>('name');
    this.namespaceName = registerOutput<String>('namespaceName');
    this.notificationHubName = registerOutput<String>('notificationHubName');
    this.primaryAccessKey = registerOutput<String>('primaryAccessKey');
    this.primaryConnectionString = registerOutput<String>('primaryConnectionString');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.secondaryAccessKey = registerOutput<String>('secondaryAccessKey');
    this.secondaryConnectionString = registerOutput<String>('secondaryConnectionString');
    this.send = registerOutput<bool?>('send');
  }

  /// Gets an existing [AuthorizationRule] resource's state with the given [name] and [id].
  static AuthorizationRule get(
    String name,
    pulumi.Input<String> id, {
    AuthorizationRuleState? state,
  }) {
    return AuthorizationRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AuthorizationRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:notificationhub/authorizationRule:AuthorizationRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.listen = registerOutput<bool?>('listen');
    this.manage = registerOutput<bool?>('manage');
    this.name = registerOutput<String>('name');
    this.namespaceName = registerOutput<String>('namespaceName');
    this.notificationHubName = registerOutput<String>('notificationHubName');
    this.primaryAccessKey = registerOutput<String>('primaryAccessKey');
    this.primaryConnectionString = registerOutput<String>('primaryConnectionString');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.secondaryAccessKey = registerOutput<String>('secondaryAccessKey');
    this.secondaryConnectionString = registerOutput<String>('secondaryConnectionString');
    this.send = registerOutput<bool?>('send');
  }
}
