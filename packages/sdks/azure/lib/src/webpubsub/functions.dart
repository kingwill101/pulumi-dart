import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_private_link_resource_args.dart';
import 'get_private_link_resource_result.dart';
import 'get_service_args.dart';
import 'get_service_result.dart';

/// Use this data source to access information about the Private Link Resource supported by the Web Pubsub Resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const testResourceGroup = new azure.core.ResourceGroup("test", {
///     name: "terraform-webpubsub",
///     location: "east us",
/// });
/// const testService = new azure.webpubsub.Service("test", {
///     name: "tfex-webpubsub",
///     location: testResourceGroup.location,
///     resourceGroupName: testResourceGroup.name,
///     sku: "Standard_S1",
///     capacity: 1,
/// });
/// const test = azure.webpubsub.getPrivateLinkResourceOutput({
///     webPubsubId: testService.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// test_resource_group = azure.core.ResourceGroup("test",
///     name="terraform-webpubsub",
///     location="east us")
/// test_service = azure.webpubsub.Service("test",
///     name="tfex-webpubsub",
///     location=test_resource_group.location,
///     resource_group_name=test_resource_group.name,
///     sku="Standard_S1",
///     capacity=1)
/// test = azure.webpubsub.get_private_link_resource_output(web_pubsub_id=test_service.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testResourceGroup = new Azure.Core.ResourceGroup("test", new()
///     {
///         Name = "terraform-webpubsub",
///         Location = "east us",
///     });
///
///     var testService = new Azure.WebPubSub.Service("test", new()
///     {
///         Name = "tfex-webpubsub",
///         Location = testResourceGroup.Location,
///         ResourceGroupName = testResourceGroup.Name,
///         Sku = "Standard_S1",
///         Capacity = 1,
///     });
///
///     var test = Azure.WebPubSub.GetPrivateLinkResource.Invoke(new()
///     {
///         WebPubsubId = testService.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/webpubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		testResourceGroup, err := core.NewResourceGroup(ctx, "test", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("terraform-webpubsub"),
/// 			Location: pulumi.String("east us"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testService, err := webpubsub.NewService(ctx, "test", &webpubsub.ServiceArgs{
/// 			Name:              pulumi.String("tfex-webpubsub"),
/// 			Location:          testResourceGroup.Location,
/// 			ResourceGroupName: testResourceGroup.Name,
/// 			Sku:               pulumi.String("Standard_S1"),
/// 			Capacity:          pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_ = webpubsub.GetPrivateLinkResourceOutput(ctx, webpubsub.GetPrivateLinkResourceOutputArgs{
/// 			WebPubsubId: testService.ID(),
/// 		}, nil)
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
/// import com.pulumi.azure.webpubsub.Service;
/// import com.pulumi.azure.webpubsub.ServiceArgs;
/// import com.pulumi.azure.webpubsub.WebpubsubFunctions;
/// import com.pulumi.azure.webpubsub.inputs.GetPrivateLinkResourceArgs;
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
///         var testResourceGroup = new ResourceGroup("testResourceGroup", ResourceGroupArgs.builder()
///             .name("terraform-webpubsub")
///             .location("east us")
///             .build());
///
///         var testService = new Service("testService", ServiceArgs.builder()
///             .name("tfex-webpubsub")
///             .location(testResourceGroup.location())
///             .resourceGroupName(testResourceGroup.name())
///             .sku("Standard_S1")
///             .capacity(1)
///             .build());
///
///         final var test = WebpubsubFunctions.getPrivateLinkResource(GetPrivateLinkResourceArgs.builder()
///             .webPubsubId(testService.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testResourceGroup:
///     type: azure:core:ResourceGroup
///     name: test
///     properties:
///       name: terraform-webpubsub
///       location: east us
///   testService:
///     type: azure:webpubsub:Service
///     name: test
///     properties:
///       name: tfex-webpubsub
///       location: ${testResourceGroup.location}
///       resourceGroupName: ${testResourceGroup.name}
///       sku: Standard_S1
///       capacity: 1
/// variables:
///   test:
///     fn::invoke:
///       function: azure:webpubsub:getPrivateLinkResource
///       arguments:
///         webPubsubId: ${testService.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.SignalRService` - 2024-03-01
/// [args] Arguments passed to this invoke. {@macro pulumi_webpubsub_get_private_link_resource_get_private_link_resource_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateLinkResourceResult> getPrivateLinkResource(
  GetPrivateLinkResourceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:webpubsub/getPrivateLinkResource:getPrivateLinkResource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateLinkResourceResult.fromMap(result);
}

/// Use this data source to access information about an existing Azure Web Pubsub service.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.webpubsub.getService({
///     name: "test-webpubsub",
///     resourceGroupName: "wps-resource-group",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.webpubsub.get_service(name="test-webpubsub",
///     resource_group_name="wps-resource-group")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.WebPubSub.GetService.Invoke(new()
///     {
///         Name = "test-webpubsub",
///         ResourceGroupName = "wps-resource-group",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/webpubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := webpubsub.LookupService(ctx, &webpubsub.LookupServiceArgs{
/// 			Name:              "test-webpubsub",
/// 			ResourceGroupName: "wps-resource-group",
/// 		}, nil)
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
/// import com.pulumi.azure.webpubsub.WebpubsubFunctions;
/// import com.pulumi.azure.webpubsub.inputs.GetServiceArgs;
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
///         final var example = WebpubsubFunctions.getService(GetServiceArgs.builder()
///             .name("test-webpubsub")
///             .resourceGroupName("wps-resource-group")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:webpubsub:getService
///       arguments:
///         name: test-webpubsub
///         resourceGroupName: wps-resource-group
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.SignalRService` - 2024-03-01
/// [args] Arguments passed to this invoke. {@macro pulumi_webpubsub_get_service_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:webpubsub/getService:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}
