import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_args.dart';
import 'get_service_result.dart';

/// Gets information about an Active Directory Domain Service.
///
/// &gt; **Note:** At present this data source only supports **User Forest** mode and _not_ **Resource Forest** mode. [Read more](https://docs.microsoft.com/azure/active-directory-domain-services/concepts-resource-forest) about the different operation modes for this service.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.domainservices.getService({
///     name: "example-aadds",
///     resourceGroupName: "example-aadds-rg",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.domainservices.get_service(name="example-aadds",
///     resource_group_name="example-aadds-rg")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.DomainServices.GetService.Invoke(new()
///     {
///         Name = "example-aadds",
///         ResourceGroupName = "example-aadds-rg",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/domainservices"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := domainservices.LookupService(ctx, &domainservices.LookupServiceArgs{
/// 			Name:              "example-aadds",
/// 			ResourceGroupName: "example-aadds-rg",
/// 		}, nil)
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
/// data "azure_domainservices_getservice" "example" {
///   name                = "example-aadds"
///   resource_group_name = "example-aadds-rg"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.domainservices.DomainservicesFunctions;
/// import com.pulumi.azure.domainservices.inputs.GetServiceArgs;
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
///         final var example = DomainservicesFunctions.getService(GetServiceArgs.builder()
///             .name("example-aadds")
///             .resourceGroupName("example-aadds-rg")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:domainservices:getService
///       arguments:
///         name: example-aadds
///         resourceGroupName: example-aadds-rg
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.AAD` - 2021-05-01
/// [args] Arguments passed to this invoke. {@macro pulumi_domainservices_get_service_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:domainservices/getService:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}

pulumi.Output<GetServiceResult> getServiceOutput(
  GetServiceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:domainservices/getService:getService',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServiceResult.fromMap);
}
