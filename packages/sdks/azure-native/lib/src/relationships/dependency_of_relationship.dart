import 'package:pulumi/pulumi.dart' as pulumi;
import 'dependency_of_relationship_args.dart';
import 'dependency_of_relationship_properties_response.dart';
import 'system_data_response.dart';

/// Defines a dependencyOf relationship resource.
///
/// Uses Azure REST API version 2023-09-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### DependencyOfRelationships_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dependencyOfRelationship = new AzureNative.Relationships.DependencyOfRelationship("dependencyOfRelationship", new()
///     {
///         Name = "relationshipOne",
///         Properties = new AzureNative.Relationships.Inputs.DependencyOfRelationshipPropertiesArgs
///         {
///             TargetId = "/subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2/resourceGroups/testrg123/providers/Microsoft.Web/staticSites/test-site",
///             TargetTenant = "72f988bf-86f1-41af-91ab-2d7cd011db47",
///         },
///         ResourceUri = "subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2/resourceGroups/testrg/providers/Microsoft.DocumentDb/databaseAccounts/test-db-account",
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
/// 	relationships "github.com/pulumi/pulumi-azure-native-sdk/relationships/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := relationships.NewDependencyOfRelationship(ctx, "dependencyOfRelationship", &relationships.DependencyOfRelationshipArgs{
/// 			Name: pulumi.String("relationshipOne"),
/// 			Properties: &relationships.DependencyOfRelationshipPropertiesArgs{
/// 				TargetId:     pulumi.String("/subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2/resourceGroups/testrg123/providers/Microsoft.Web/staticSites/test-site"),
/// 				TargetTenant: pulumi.String("72f988bf-86f1-41af-91ab-2d7cd011db47"),
/// 			},
/// 			ResourceUri: pulumi.String("subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2/resourceGroups/testrg/providers/Microsoft.DocumentDb/databaseAccounts/test-db-account"),
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
/// resource "azure-native_relationships_dependencyofrelationship" "dependencyOfRelationship" {
///   name = "relationshipOne"
///   properties = {
///     target_id     = "/subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2/resourceGroups/testrg123/providers/Microsoft.Web/staticSites/test-site"
///     target_tenant = "72f988bf-86f1-41af-91ab-2d7cd011db47"
///   }
///   resource_uri = "subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2/resourceGroups/testrg/providers/Microsoft.DocumentDb/databaseAccounts/test-db-account"
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
/// import com.pulumi.azurenative.relationships.DependencyOfRelationship;
/// import com.pulumi.azurenative.relationships.DependencyOfRelationshipArgs;
/// import com.pulumi.azurenative.relationships.inputs.DependencyOfRelationshipPropertiesArgs;
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
///         var dependencyOfRelationship = new DependencyOfRelationship("dependencyOfRelationship", DependencyOfRelationshipArgs.builder()
///             .name("relationshipOne")
///             .properties(DependencyOfRelationshipPropertiesArgs.builder()
///                 .targetId("/subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2/resourceGroups/testrg123/providers/Microsoft.Web/staticSites/test-site")
///                 .targetTenant("72f988bf-86f1-41af-91ab-2d7cd011db47")
///                 .build())
///             .resourceUri("subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2/resourceGroups/testrg/providers/Microsoft.DocumentDb/databaseAccounts/test-db-account")
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
/// const dependencyOfRelationship = new azure_native.relationships.DependencyOfRelationship("dependencyOfRelationship", {
///     name: "relationshipOne",
///     properties: {
///         targetId: "/subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2/resourceGroups/testrg123/providers/Microsoft.Web/staticSites/test-site",
///         targetTenant: "72f988bf-86f1-41af-91ab-2d7cd011db47",
///     },
///     resourceUri: "subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2/resourceGroups/testrg/providers/Microsoft.DocumentDb/databaseAccounts/test-db-account",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dependency_of_relationship = azure_native.relationships.DependencyOfRelationship("dependencyOfRelationship",
///     name="relationshipOne",
///     properties={
///         "target_id": "/subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2/resourceGroups/testrg123/providers/Microsoft.Web/staticSites/test-site",
///         "target_tenant": "72f988bf-86f1-41af-91ab-2d7cd011db47",
///     },
///     resource_uri="subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2/resourceGroups/testrg/providers/Microsoft.DocumentDb/databaseAccounts/test-db-account")
///
/// ```
///
/// ```yaml
/// resources:
///   dependencyOfRelationship:
///     type: azure-native:relationships:DependencyOfRelationship
///     properties:
///       name: relationshipOne
///       properties:
///         targetId: /subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2/resourceGroups/testrg123/providers/Microsoft.Web/staticSites/test-site
///         targetTenant: 72f988bf-86f1-41af-91ab-2d7cd011db47
///       resourceUri: subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2/resourceGroups/testrg/providers/Microsoft.DocumentDb/databaseAccounts/test-db-account
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
/// $ pulumi import azure-native:relationships:DependencyOfRelationship relationshipOne /{resourceUri}/providers/Microsoft.Relationships/dependencyOf/{name}
/// ```
class DependencyOfRelationship extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<DependencyOfRelationshipPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DependencyOfRelationship].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DependencyOfRelationship]. {@macro pulumi_relationships_dependency_of_relationship_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DependencyOfRelationship(
    String name, {
    DependencyOfRelationshipArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:relationships:DependencyOfRelationship',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<DependencyOfRelationshipPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DependencyOfRelationshipPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
