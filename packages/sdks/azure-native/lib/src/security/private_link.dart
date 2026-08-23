import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_link_args.dart';
import 'system_data_response.dart';

/// A private link resource that enables secure, private connectivity to Microsoft Defender for Cloud services. This resource manages the lifecycle of private endpoint connections and provides the necessary infrastructure for private connectivity.
///
/// Uses Azure REST API version 2025-09-01-preview.
///
/// Other available API versions: 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native security [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create private link
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateLink = new AzureNative.Security.PrivateLink("privateLink", new()
///     {
///         Location = "eastus",
///         PrivateLinkName = "pls",
///         ResourceGroupName = "rg",
///         Tags =
///         {
///             { "environment", "production" },
///             { "owner", "security-team" },
///             { "project", "private-links" },
///         },
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
/// 		_, err := security.NewPrivateLink(ctx, "privateLink", &security.PrivateLinkArgs{
/// 			Location:          pulumi.String("eastus"),
/// 			PrivateLinkName:   pulumi.String("pls"),
/// 			ResourceGroupName: pulumi.String("rg"),
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("production"),
/// 				"owner":       pulumi.String("security-team"),
/// 				"project":     pulumi.String("private-links"),
/// 			},
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
/// resource "azure-native_security_privatelink" "privateLink" {
///   location            = "eastus"
///   private_link_name   = "pls"
///   resource_group_name = "rg"
///   tags = {
///     "environment" = "production"
///     "owner"       = "security-team"
///     "project"     = "private-links"
///   }
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
/// import com.pulumi.azurenative.security.PrivateLink;
/// import com.pulumi.azurenative.security.PrivateLinkArgs;
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
///         var privateLink = new PrivateLink("privateLink", PrivateLinkArgs.builder()
///             .location("eastus")
///             .privateLinkName("pls")
///             .resourceGroupName("rg")
///             .tags(Map.ofEntries(
///                 Map.entry("environment", "production"),
///                 Map.entry("owner", "security-team"),
///                 Map.entry("project", "private-links")
///             ))
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
/// const privateLink = new azure_native.security.PrivateLink("privateLink", {
///     location: "eastus",
///     privateLinkName: "pls",
///     resourceGroupName: "rg",
///     tags: {
///         environment: "production",
///         owner: "security-team",
///         project: "private-links",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_link = azure_native.security.PrivateLink("privateLink",
///     location="eastus",
///     private_link_name="pls",
///     resource_group_name="rg",
///     tags={
///         "environment": "production",
///         "owner": "security-team",
///         "project": "private-links",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   privateLink:
///     type: azure-native:security:PrivateLink
///     properties:
///       location: eastus
///       privateLinkName: pls
///       resourceGroupName: rg
///       tags:
///         environment: production
///         owner: security-team
///         project: private-links
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
/// $ pulumi import azure-native:security:PrivateLink pls /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Security/privateLinks/{privateLinkName}
/// ```
class PrivateLink extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// List of private endpoint connections associated with this private link. Each connection represents a private endpoint from a customer's virtual network.
  late final pulumi.Output<List<Map<String, dynamic>>> privateEndpointConnections;
  /// List of private link resources available for connection. For Defender services, this typically includes the 'containers' group with 'api' and regional data endpoints.
  late final pulumi.Output<List<Map<String, dynamic>>> privateLinkResources;
  /// The current provisioning state of the private link resource. Indicates whether the resource is being created, updated, deleted, or has completed successfully.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateLink].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateLink]. {@macro pulumi_security_private_link_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateLink(
    String name, {
    PrivateLinkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:security:PrivateLink',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    privateEndpointConnections = registerOutput<List<Map<String, dynamic>>>('privateEndpointConnections');
    privateLinkResources = registerOutput<List<Map<String, dynamic>>>('privateLinkResources');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
