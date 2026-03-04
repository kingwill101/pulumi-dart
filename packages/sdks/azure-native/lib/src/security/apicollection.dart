import 'package:pulumi/pulumi.dart' as pulumi;
import 'apicollection_args.dart';

/// An API collection as represented by Defender for APIs.
///
/// Uses Azure REST API version 2022-11-20-preview. In version 2.x of the Azure Native provider, it used API version 2022-11-20-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Onboard an Azure API Management API to Defender for APIs
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var apiCollection = new AzureNative.Security.APICollection("apiCollection", new()
///     {
///         ApiCollectionId = "echo-api",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
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
/// 	security "github.com/pulumi/pulumi-azure-native-sdk/security/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := security.NewAPICollection(ctx, "apiCollection", &security.APICollectionArgs{
/// 			ApiCollectionId:   pulumi.String("echo-api"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.security.APICollection;
/// import com.pulumi.azurenative.security.APICollectionArgs;
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
///         var apiCollection = new APICollection("apiCollection", APICollectionArgs.builder()
///             .apiCollectionId("echo-api")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
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
/// const apiCollection = new azure_native.security.APICollection("apiCollection", {
///     apiCollectionId: "echo-api",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// api_collection = azure_native.security.APICollection("apiCollection",
///     api_collection_id="echo-api",
///     resource_group_name="rg1",
///     service_name="apimService1")
///
/// ```
///
/// ```yaml
/// resources:
///   apiCollection:
///     type: azure-native:security:APICollection
///     properties:
///       apiCollectionId: echo-api
///       resourceGroupName: rg1
///       serviceName: apimService1
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
/// $ pulumi import azure-native:security:APICollection echo-api /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/providers/Microsoft.Security/apiCollections/{apiCollectionId}
/// ```
class APICollection extends pulumi.CustomResource {
  /// Additional data regarding the API collection.
  late final pulumi.Output<Map<String, String>?> additionalData;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The display name of the Azure API Management API.
  late final pulumi.Output<String?> displayName;

  /// Resource name
  late final pulumi.Output<String> name;

  /// Resource type
  late final pulumi.Output<String> type;

  /// Creates a new [APICollection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [APICollection]. {@macro pulumi_security_apicollection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  APICollection(
    String name, {
    APICollectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:security:APICollection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    additionalData = registerOutput<Map<String, String>?>('additionalData');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    displayName = registerOutput<String?>('displayName');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
  }
}
