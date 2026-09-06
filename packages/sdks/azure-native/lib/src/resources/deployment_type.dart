import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_args.dart';
import 'deployment_properties_extended_response.dart';

/// Deployment information.
///
/// Uses Azure REST API version 2024-03-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2020-10-01, 2021-01-01, 2021-04-01, 2022-09-01, 2023-07-01, 2024-07-01, 2024-11-01, 2025-03-01, 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native resources [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a deployment that will deploy a template with a uri and queryString
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var deployment = new AzureNative.Resources.Deployment("deployment", new()
///     {
///         DeploymentName = "my-deployment",
///         Properties = new AzureNative.Resources.Inputs.DeploymentPropertiesArgs
///         {
///             Mode = AzureNative.Resources.DeploymentMode.Incremental,
///             Parameters = null,
///             TemplateLink = new AzureNative.Resources.Inputs.TemplateLinkArgs
///             {
///                 QueryString = "sv=2019-02-02&st=2019-04-29T22%3A18%3A26Z&se=2019-04-30T02%3A23%3A26Z&sr=b&sp=rw&sip=168.1.5.60-168.1.5.70&spr=https&sig=xxxxxxxx0xxxxxxxxxxxxx%2bxxxxxxxxxxxxxxxxxxxx%3d",
///                 Uri = "https://example.com/exampleTemplate.json",
///             },
///         },
///         ResourceGroupName = "my-resource-group",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	resources "github.com/pulumi/pulumi-azure-native-sdk/resources/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := resources.NewDeployment(ctx, "deployment", &resources.DeploymentArgs{
/// 			DeploymentName: pulumi.String("my-deployment"),
/// 			Properties: &resources.DeploymentPropertiesArgs{
/// 				Mode:       resources.DeploymentModeIncremental,
/// 				Parameters: resources.DeploymentParameterMap{},
/// 				TemplateLink: &resources.TemplateLinkArgs{
/// 					QueryString: pulumi.String("sv=2019-02-02&st=2019-04-29T22%3A18%3A26Z&se=2019-04-30T02%3A23%3A26Z&sr=b&sp=rw&sip=168.1.5.60-168.1.5.70&spr=https&sig=xxxxxxxx0xxxxxxxxxxxxx%2bxxxxxxxxxxxxxxxxxxxx%3d"),
/// 					Uri:         pulumi.String("https://example.com/exampleTemplate.json"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("my-resource-group"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_resources_deployment" "deployment" {
///   deployment_name = "my-deployment"
///   properties = {
///     mode       = "Incremental"
///     parameters = {}
///     template_link = {
///       query_string = "sv=2019-02-02&st=2019-04-29T22%3A18%3A26Z&se=2019-04-30T02%3A23%3A26Z&sr=b&sp=rw&sip=168.1.5.60-168.1.5.70&spr=https&sig=xxxxxxxx0xxxxxxxxxxxxx%2bxxxxxxxxxxxxxxxxxxxx%3d"
///       uri          = "https://example.com/exampleTemplate.json"
///     }
///   }
///   resource_group_name = "my-resource-group"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.resources.Deployment;
/// import com.pulumi.azurenative.resources.DeploymentArgs;
/// import com.pulumi.azurenative.resources.inputs.DeploymentPropertiesArgs;
/// import com.pulumi.azurenative.resources.inputs.TemplateLinkArgs;
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
///         var deployment = new Deployment("deployment", DeploymentArgs.builder()
///             .deploymentName("my-deployment")
///             .properties(DeploymentPropertiesArgs.builder()
///                 .mode("Incremental")
///                 .parameters(Map.ofEntries(
///                 ))
///                 .templateLink(TemplateLinkArgs.builder()
///                     .queryString("sv=2019-02-02&st=2019-04-29T22%3A18%3A26Z&se=2019-04-30T02%3A23%3A26Z&sr=b&sp=rw&sip=168.1.5.60-168.1.5.70&spr=https&sig=xxxxxxxx0xxxxxxxxxxxxx%2bxxxxxxxxxxxxxxxxxxxx%3d")
///                     .uri("https://example.com/exampleTemplate.json")
///                     .build())
///                 .build())
///             .resourceGroupName("my-resource-group")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const deployment = new azure_native.resources.Deployment("deployment", {
///     deploymentName: "my-deployment",
///     properties: {
///         mode: azure_native.resources.DeploymentMode.Incremental,
///         parameters: {},
///         templateLink: {
///             queryString: "sv=2019-02-02&st=2019-04-29T22%3A18%3A26Z&se=2019-04-30T02%3A23%3A26Z&sr=b&sp=rw&sip=168.1.5.60-168.1.5.70&spr=https&sig=xxxxxxxx0xxxxxxxxxxxxx%2bxxxxxxxxxxxxxxxxxxxx%3d",
///             uri: "https://example.com/exampleTemplate.json",
///         },
///     },
///     resourceGroupName: "my-resource-group",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// deployment = azure_native.resources.Deployment("deployment",
///     deployment_name="my-deployment",
///     properties={
///         "mode": azure_native.resources.DeploymentMode.INCREMENTAL,
///         "parameters": {},
///         "template_link": {
///             "query_string": "sv=2019-02-02&st=2019-04-29T22%3A18%3A26Z&se=2019-04-30T02%3A23%3A26Z&sr=b&sp=rw&sip=168.1.5.60-168.1.5.70&spr=https&sig=xxxxxxxx0xxxxxxxxxxxxx%2bxxxxxxxxxxxxxxxxxxxx%3d",
///             "uri": "https://example.com/exampleTemplate.json",
///         },
///     },
///     resource_group_name="my-resource-group")
///
/// ```
///
/// ```yaml
/// resources:
///   deployment:
///     type: azure-native:resources:Deployment
///     properties:
///       deploymentName: my-deployment
///       properties:
///         mode: Incremental
///         parameters: {}
///         templateLink:
///           queryString: sv=2019-02-02&st=2019-04-29T22%3A18%3A26Z&se=2019-04-30T02%3A23%3A26Z&sr=b&sp=rw&sip=168.1.5.60-168.1.5.70&spr=https&sig=xxxxxxxx0xxxxxxxxxxxxx%2bxxxxxxxxxxxxxxxxxxxx%3d
///           uri: https://example.com/exampleTemplate.json
///       resourceGroupName: my-resource-group
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a deployment that will deploy a templateSpec with the given resourceId
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var deployment = new AzureNative.Resources.Deployment("deployment", new()
///     {
///         DeploymentName = "my-deployment",
///         Properties = new AzureNative.Resources.Inputs.DeploymentPropertiesArgs
///         {
///             Mode = AzureNative.Resources.DeploymentMode.Incremental,
///             Parameters = null,
///             TemplateLink = new AzureNative.Resources.Inputs.TemplateLinkArgs
///             {
///                 Id = "/subscriptions/00000000-0000-0000-0000-000000000001/resourceGroups/my-resource-group/providers/Microsoft.Resources/TemplateSpecs/TemplateSpec-Name/versions/v1",
///             },
///         },
///         ResourceGroupName = "my-resource-group",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	resources "github.com/pulumi/pulumi-azure-native-sdk/resources/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := resources.NewDeployment(ctx, "deployment", &resources.DeploymentArgs{
/// 			DeploymentName: pulumi.String("my-deployment"),
/// 			Properties: &resources.DeploymentPropertiesArgs{
/// 				Mode:       resources.DeploymentModeIncremental,
/// 				Parameters: resources.DeploymentParameterMap{},
/// 				TemplateLink: &resources.TemplateLinkArgs{
/// 					Id: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000001/resourceGroups/my-resource-group/providers/Microsoft.Resources/TemplateSpecs/TemplateSpec-Name/versions/v1"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("my-resource-group"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_resources_deployment" "deployment" {
///   deployment_name = "my-deployment"
///   properties = {
///     mode       = "Incremental"
///     parameters = {}
///     template_link = {
///       id = "/subscriptions/00000000-0000-0000-0000-000000000001/resourceGroups/my-resource-group/providers/Microsoft.Resources/TemplateSpecs/TemplateSpec-Name/versions/v1"
///     }
///   }
///   resource_group_name = "my-resource-group"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.resources.Deployment;
/// import com.pulumi.azurenative.resources.DeploymentArgs;
/// import com.pulumi.azurenative.resources.inputs.DeploymentPropertiesArgs;
/// import com.pulumi.azurenative.resources.inputs.TemplateLinkArgs;
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
///         var deployment = new Deployment("deployment", DeploymentArgs.builder()
///             .deploymentName("my-deployment")
///             .properties(DeploymentPropertiesArgs.builder()
///                 .mode("Incremental")
///                 .parameters(Map.ofEntries(
///                 ))
///                 .templateLink(TemplateLinkArgs.builder()
///                     .id("/subscriptions/00000000-0000-0000-0000-000000000001/resourceGroups/my-resource-group/providers/Microsoft.Resources/TemplateSpecs/TemplateSpec-Name/versions/v1")
///                     .build())
///                 .build())
///             .resourceGroupName("my-resource-group")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const deployment = new azure_native.resources.Deployment("deployment", {
///     deploymentName: "my-deployment",
///     properties: {
///         mode: azure_native.resources.DeploymentMode.Incremental,
///         parameters: {},
///         templateLink: {
///             id: "/subscriptions/00000000-0000-0000-0000-000000000001/resourceGroups/my-resource-group/providers/Microsoft.Resources/TemplateSpecs/TemplateSpec-Name/versions/v1",
///         },
///     },
///     resourceGroupName: "my-resource-group",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// deployment = azure_native.resources.Deployment("deployment",
///     deployment_name="my-deployment",
///     properties={
///         "mode": azure_native.resources.DeploymentMode.INCREMENTAL,
///         "parameters": {},
///         "template_link": {
///             "id": "/subscriptions/00000000-0000-0000-0000-000000000001/resourceGroups/my-resource-group/providers/Microsoft.Resources/TemplateSpecs/TemplateSpec-Name/versions/v1",
///         },
///     },
///     resource_group_name="my-resource-group")
///
/// ```
///
/// ```yaml
/// resources:
///   deployment:
///     type: azure-native:resources:Deployment
///     properties:
///       deploymentName: my-deployment
///       properties:
///         mode: Incremental
///         parameters: {}
///         templateLink:
///           id: /subscriptions/00000000-0000-0000-0000-000000000001/resourceGroups/my-resource-group/providers/Microsoft.Resources/TemplateSpecs/TemplateSpec-Name/versions/v1
///       resourceGroupName: my-resource-group
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a deployment that will redeploy another deployment on failure
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var deployment = new AzureNative.Resources.Deployment("deployment", new()
///     {
///         DeploymentName = "my-deployment",
///         Properties = new AzureNative.Resources.Inputs.DeploymentPropertiesArgs
///         {
///             Mode = AzureNative.Resources.DeploymentMode.Complete,
///             OnErrorDeployment = new AzureNative.Resources.Inputs.OnErrorDeploymentArgs
///             {
///                 DeploymentName = "name-of-deployment-to-use",
///                 Type = AzureNative.Resources.OnErrorDeploymentType.SpecificDeployment,
///             },
///             Parameters = null,
///             TemplateLink = new AzureNative.Resources.Inputs.TemplateLinkArgs
///             {
///                 Uri = "https://example.com/exampleTemplate.json",
///             },
///         },
///         ResourceGroupName = "my-resource-group",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	resources "github.com/pulumi/pulumi-azure-native-sdk/resources/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := resources.NewDeployment(ctx, "deployment", &resources.DeploymentArgs{
/// 			DeploymentName: pulumi.String("my-deployment"),
/// 			Properties: &resources.DeploymentPropertiesArgs{
/// 				Mode: resources.DeploymentModeComplete,
/// 				OnErrorDeployment: &resources.OnErrorDeploymentArgs{
/// 					DeploymentName: pulumi.String("name-of-deployment-to-use"),
/// 					Type:           resources.OnErrorDeploymentTypeSpecificDeployment,
/// 				},
/// 				Parameters: resources.DeploymentParameterMap{},
/// 				TemplateLink: &resources.TemplateLinkArgs{
/// 					Uri: pulumi.String("https://example.com/exampleTemplate.json"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("my-resource-group"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_resources_deployment" "deployment" {
///   deployment_name = "my-deployment"
///   properties = {
///     mode = "Complete"
///     on_error_deployment = {
///       deployment_name = "name-of-deployment-to-use"
///       type            = "SpecificDeployment"
///     }
///     parameters = {}
///     template_link = {
///       uri = "https://example.com/exampleTemplate.json"
///     }
///   }
///   resource_group_name = "my-resource-group"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.resources.Deployment;
/// import com.pulumi.azurenative.resources.DeploymentArgs;
/// import com.pulumi.azurenative.resources.inputs.DeploymentPropertiesArgs;
/// import com.pulumi.azurenative.resources.inputs.OnErrorDeploymentArgs;
/// import com.pulumi.azurenative.resources.inputs.TemplateLinkArgs;
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
///         var deployment = new Deployment("deployment", DeploymentArgs.builder()
///             .deploymentName("my-deployment")
///             .properties(DeploymentPropertiesArgs.builder()
///                 .mode("Complete")
///                 .onErrorDeployment(OnErrorDeploymentArgs.builder()
///                     .deploymentName("name-of-deployment-to-use")
///                     .type("SpecificDeployment")
///                     .build())
///                 .parameters(Map.ofEntries(
///                 ))
///                 .templateLink(TemplateLinkArgs.builder()
///                     .uri("https://example.com/exampleTemplate.json")
///                     .build())
///                 .build())
///             .resourceGroupName("my-resource-group")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const deployment = new azure_native.resources.Deployment("deployment", {
///     deploymentName: "my-deployment",
///     properties: {
///         mode: azure_native.resources.DeploymentMode.Complete,
///         onErrorDeployment: {
///             deploymentName: "name-of-deployment-to-use",
///             type: azure_native.resources.OnErrorDeploymentType.SpecificDeployment,
///         },
///         parameters: {},
///         templateLink: {
///             uri: "https://example.com/exampleTemplate.json",
///         },
///     },
///     resourceGroupName: "my-resource-group",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// deployment = azure_native.resources.Deployment("deployment",
///     deployment_name="my-deployment",
///     properties={
///         "mode": azure_native.resources.DeploymentMode.COMPLETE,
///         "on_error_deployment": {
///             "deployment_name": "name-of-deployment-to-use",
///             "type": azure_native.resources.OnErrorDeploymentType.SPECIFIC_DEPLOYMENT,
///         },
///         "parameters": {},
///         "template_link": {
///             "uri": "https://example.com/exampleTemplate.json",
///         },
///     },
///     resource_group_name="my-resource-group")
///
/// ```
///
/// ```yaml
/// resources:
///   deployment:
///     type: azure-native:resources:Deployment
///     properties:
///       deploymentName: my-deployment
///       properties:
///         mode: Complete
///         onErrorDeployment:
///           deploymentName: name-of-deployment-to-use
///           type: SpecificDeployment
///         parameters: {}
///         templateLink:
///           uri: https://example.com/exampleTemplate.json
///       resourceGroupName: my-resource-group
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a deployment that will redeploy the last successful deployment on failure
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var deployment = new AzureNative.Resources.Deployment("deployment", new()
///     {
///         DeploymentName = "my-deployment",
///         Properties = new AzureNative.Resources.Inputs.DeploymentPropertiesArgs
///         {
///             Mode = AzureNative.Resources.DeploymentMode.Complete,
///             OnErrorDeployment = new AzureNative.Resources.Inputs.OnErrorDeploymentArgs
///             {
///                 Type = AzureNative.Resources.OnErrorDeploymentType.LastSuccessful,
///             },
///             Parameters = null,
///             TemplateLink = new AzureNative.Resources.Inputs.TemplateLinkArgs
///             {
///                 Uri = "https://example.com/exampleTemplate.json",
///             },
///         },
///         ResourceGroupName = "my-resource-group",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	resources "github.com/pulumi/pulumi-azure-native-sdk/resources/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := resources.NewDeployment(ctx, "deployment", &resources.DeploymentArgs{
/// 			DeploymentName: pulumi.String("my-deployment"),
/// 			Properties: &resources.DeploymentPropertiesArgs{
/// 				Mode: resources.DeploymentModeComplete,
/// 				OnErrorDeployment: &resources.OnErrorDeploymentArgs{
/// 					Type: resources.OnErrorDeploymentTypeLastSuccessful,
/// 				},
/// 				Parameters: resources.DeploymentParameterMap{},
/// 				TemplateLink: &resources.TemplateLinkArgs{
/// 					Uri: pulumi.String("https://example.com/exampleTemplate.json"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("my-resource-group"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_resources_deployment" "deployment" {
///   deployment_name = "my-deployment"
///   properties = {
///     mode = "Complete"
///     on_error_deployment = {
///       type = "LastSuccessful"
///     }
///     parameters = {}
///     template_link = {
///       uri = "https://example.com/exampleTemplate.json"
///     }
///   }
///   resource_group_name = "my-resource-group"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.resources.Deployment;
/// import com.pulumi.azurenative.resources.DeploymentArgs;
/// import com.pulumi.azurenative.resources.inputs.DeploymentPropertiesArgs;
/// import com.pulumi.azurenative.resources.inputs.OnErrorDeploymentArgs;
/// import com.pulumi.azurenative.resources.inputs.TemplateLinkArgs;
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
///         var deployment = new Deployment("deployment", DeploymentArgs.builder()
///             .deploymentName("my-deployment")
///             .properties(DeploymentPropertiesArgs.builder()
///                 .mode("Complete")
///                 .onErrorDeployment(OnErrorDeploymentArgs.builder()
///                     .type("LastSuccessful")
///                     .build())
///                 .parameters(Map.ofEntries(
///                 ))
///                 .templateLink(TemplateLinkArgs.builder()
///                     .uri("https://example.com/exampleTemplate.json")
///                     .build())
///                 .build())
///             .resourceGroupName("my-resource-group")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const deployment = new azure_native.resources.Deployment("deployment", {
///     deploymentName: "my-deployment",
///     properties: {
///         mode: azure_native.resources.DeploymentMode.Complete,
///         onErrorDeployment: {
///             type: azure_native.resources.OnErrorDeploymentType.LastSuccessful,
///         },
///         parameters: {},
///         templateLink: {
///             uri: "https://example.com/exampleTemplate.json",
///         },
///     },
///     resourceGroupName: "my-resource-group",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// deployment = azure_native.resources.Deployment("deployment",
///     deployment_name="my-deployment",
///     properties={
///         "mode": azure_native.resources.DeploymentMode.COMPLETE,
///         "on_error_deployment": {
///             "type": azure_native.resources.OnErrorDeploymentType.LAST_SUCCESSFUL,
///         },
///         "parameters": {},
///         "template_link": {
///             "uri": "https://example.com/exampleTemplate.json",
///         },
///     },
///     resource_group_name="my-resource-group")
///
/// ```
///
/// ```yaml
/// resources:
///   deployment:
///     type: azure-native:resources:Deployment
///     properties:
///       deploymentName: my-deployment
///       properties:
///         mode: Complete
///         onErrorDeployment:
///           type: LastSuccessful
///         parameters: {}
///         templateLink:
///           uri: https://example.com/exampleTemplate.json
///       resourceGroupName: my-resource-group
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:resources:Deployment my-deployment /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.Resources/deployments/{deploymentName}
/// ```
class DeploymentType extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// the location of the deployment.
  late final pulumi.Output<String?> location;
  /// The name of the deployment.
  late final pulumi.Output<String> name;
  /// Deployment properties.
  late final pulumi.Output<DeploymentPropertiesExtendedResponse> properties;
  /// Deployment tags
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the deployment.
  late final pulumi.Output<String> type;

  /// Creates a new [DeploymentType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeploymentType]. {@macro pulumi_resources_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeploymentType(
    String name, {
    DeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:resources:Deployment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<DeploymentPropertiesExtendedResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeploymentPropertiesExtendedResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [DeploymentType] resource.
  DeploymentType.reference(String urn)
    : super(
        'azure-native:resources:Deployment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<DeploymentPropertiesExtendedResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeploymentPropertiesExtendedResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
