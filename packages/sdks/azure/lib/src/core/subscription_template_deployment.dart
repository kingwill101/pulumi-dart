import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_template_deployment_args.dart';
import 'subscription_template_deployment_state.dart';

/// Manages a Subscription Template Deployment.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.SubscriptionTemplateDeployment("example", {
///     name: "example-deployment",
///     location: "West Europe",
///     templateContent: ` {
///    \\"schema\\": \\"https://schema.management.azure.com/schemas/2015-01-01/deploymentTemplate.json#\\",
///    \\"contentVersion\\": \\"1.0.0.0\\",
///    \\"parameters\\": {},
///    \\"variables\\": {},
///    \\"resources\\": [
///      {
///        \\"type\\": \\"Microsoft.Resources/resourceGroups\\",
///        \\"apiVersion\\": \\"2018-05-01\\",
///        \\"location\\": \\"West Europe\\",
///        \\"name\\": \\"some-resource-group\\",
///        \\"properties\\": {}
///      }
///    ]
///  }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.SubscriptionTemplateDeployment("example",
///     name="example-deployment",
///     location="West Europe",
///     template_content=""" {
///    \"$schema\": \"https://schema.management.azure.com/schemas/2015-01-01/deploymentTemplate.json#\",
///    \"contentVersion\": \"1.0.0.0\",
///    \"parameters\": {},
///    \"variables\": {},
///    \"resources\": [
///      {
///        \"type\": \"Microsoft.Resources/resourceGroups\",
///        \"apiVersion\": \"2018-05-01\",
///        \"location\": \"West Europe\",
///        \"name\": \"some-resource-group\",
///        \"properties\": {}
///      }
///    ]
///  }
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.SubscriptionTemplateDeployment("example", new()
///     {
///         Name = "example-deployment",
///         Location = "West Europe",
///         TemplateContent = @" {
///    \""$schema\"": \""https://schema.management.azure.com/schemas/2015-01-01/deploymentTemplate.json#\"",
///    \""contentVersion\"": \""1.0.0.0\"",
///    \""parameters\"": {},
///    \""variables\"": {},
///    \""resources\"": [
///      {
///        \""type\"": \""Microsoft.Resources/resourceGroups\"",
///        \""apiVersion\"": \""2018-05-01\"",
///        \""location\"": \""West Europe\"",
///        \""name\"": \""some-resource-group\"",
///        \""properties\"": {}
///      }
///    ]
///  }
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := core.NewSubscriptionTemplateDeployment(ctx, "example", &core.SubscriptionTemplateDeploymentArgs{
/// 			Name:     pulumi.String("example-deployment"),
/// 			Location: pulumi.String("West Europe"),
/// 			TemplateContent: pulumi.String(` {
///    \"$schema\": \"https://schema.management.azure.com/schemas/2015-01-01/deploymentTemplate.json#\",
///    \"contentVersion\": \"1.0.0.0\",
///    \"parameters\": {},
///    \"variables\": {},
///    \"resources\": [
///      {
///        \"type\": \"Microsoft.Resources/resourceGroups\",
///        \"apiVersion\": \"2018-05-01\",
///        \"location\": \"West Europe\",
///        \"name\": \"some-resource-group\",
///        \"properties\": {}
///      }
///    ]
///  }
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_subscriptiontemplatedeployment" "example" {
///   name             = "example-deployment"
///   location         = "West Europe"
///   template_content = " {\n   \\\"$schema\\\": \\\"https://schema.management.azure.com/schemas/2015-01-01/deploymentTemplate.json#\\\",\n   \\\"contentVersion\\\": \\\"1.0.0.0\\\",\n   \\\"parameters\\\": {},\n   \\\"variables\\\": {},\n   \\\"resources\\\": [\n     {\n       \\\"type\\\": \\\"Microsoft.Resources/resourceGroups\\\",\n       \\\"apiVersion\\\": \\\"2018-05-01\\\",\n       \\\"location\\\": \\\"West Europe\\\",\n       \\\"name\\\": \\\"some-resource-group\\\",\n       \\\"properties\\\": {}\n     }\n   ]\n }\n"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.SubscriptionTemplateDeployment;
/// import com.pulumi.azure.core.SubscriptionTemplateDeploymentArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new SubscriptionTemplateDeployment("example", SubscriptionTemplateDeploymentArgs.builder()
///             .name("example-deployment")
///             .location("West Europe")
///             .templateContent("""
///  {
///    \"$schema\": \"https://schema.management.azure.com/schemas/2015-01-01/deploymentTemplate.json#\",
///    \"contentVersion\": \"1.0.0.0\",
///    \"parameters\": {},
///    \"variables\": {},
///    \"resources\": [
///      {
///        \"type\": \"Microsoft.Resources/resourceGroups\",
///        \"apiVersion\": \"2018-05-01\",
///        \"location\": \"West Europe\",
///        \"name\": \"some-resource-group\",
///        \"properties\": {}
///      }
///    ]
///  }
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:SubscriptionTemplateDeployment
///     properties:
///       name: example-deployment
///       location: West Europe
///       templateContent: |2
///          {
///            \"$schema\": \"https://schema.management.azure.com/schemas/2015-01-01/deploymentTemplate.json#\",
///            \"contentVersion\": \"1.0.0.0\",
///            \"parameters\": {},
///            \"variables\": {},
///            \"resources\": [
///              {
///                \"type\": \"Microsoft.Resources/resourceGroups\",
///                \"apiVersion\": \"2018-05-01\",
///                \"location\": \"West Europe\",
///                \"name\": \"some-resource-group\",
///                \"properties\": {}
///              }
///            ]
///          }
/// ```
///
///
/// ## Import
///
/// Subscription Template Deployments can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:core/subscriptionTemplateDeployment:SubscriptionTemplateDeployment example /subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.Resources/deployments/template1
/// ```
class SubscriptionTemplateDeployment extends pulumi.CustomResource {
  /// The Debug Level which should be used for this Subscription Template Deployment. Possible values are `none`, `requestContent`, `responseContent` and `requestContent, responseContent`.
  late final pulumi.Output<String?> debugLevel;
  /// The Azure Region where the Subscription Template Deployment should exist. Changing this forces a new Subscription Template Deployment to be created.
  late final pulumi.Output<String> location;
  /// The name which should be used for this Subscription Template Deployment. Changing this forces a new Subscription Template Deployment to be created.
  late final pulumi.Output<String> name;
  /// The JSON Content of the Outputs of the ARM Template Deployment.
  late final pulumi.Output<String> outputContent;
  /// The contents of the ARM Template parameters file - containing a JSON list of parameters.
  late final pulumi.Output<String> parametersContent;
  /// A mapping of tags which should be assigned to the Subscription Template Deployment.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The contents of the ARM Template which should be deployed into this Subscription.
  late final pulumi.Output<String> templateContent;
  /// The ID of the Template Spec Version to deploy into the Subscription. Cannot be specified with `templateContent`.
  late final pulumi.Output<String?> templateSpecVersionId;

  /// Creates a new [SubscriptionTemplateDeployment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SubscriptionTemplateDeployment]. {@macro pulumi_core_subscription_template_deployment_subscription_template_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SubscriptionTemplateDeployment(
    String name, {
    SubscriptionTemplateDeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:core/subscriptionTemplateDeployment:SubscriptionTemplateDeployment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    debugLevel = registerOutput<String?>('debugLevel');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    outputContent = registerOutput<String>('outputContent');
    parametersContent = registerOutput<String>('parametersContent');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    templateContent = registerOutput<String>('templateContent');
    templateSpecVersionId = registerOutput<String?>('templateSpecVersionId');
  }

  /// Gets an existing [SubscriptionTemplateDeployment] resource's state with the given [name] and [id].
  static SubscriptionTemplateDeployment get(
    String name,
    pulumi.Input<String> id, {
    SubscriptionTemplateDeploymentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SubscriptionTemplateDeployment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SubscriptionTemplateDeployment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:core/subscriptionTemplateDeployment:SubscriptionTemplateDeployment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    debugLevel = registerOutput<String?>('debugLevel');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    outputContent = registerOutput<String>('outputContent');
    parametersContent = registerOutput<String>('parametersContent');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    templateContent = registerOutput<String>('templateContent');
    templateSpecVersionId = registerOutput<String?>('templateSpecVersionId');
  }

  /// Creates a typed reference to an existing [SubscriptionTemplateDeployment] resource.
  SubscriptionTemplateDeployment.reference(String urn)
    : super(
        'azure:core/subscriptionTemplateDeployment:SubscriptionTemplateDeployment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    debugLevel = registerOutput<String?>('debugLevel');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    outputContent = registerOutput<String>('outputContent');
    parametersContent = registerOutput<String>('parametersContent');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    templateContent = registerOutput<String>('templateContent');
    templateSpecVersionId = registerOutput<String?>('templateSpecVersionId');
  }
}
