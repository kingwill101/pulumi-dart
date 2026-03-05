import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_group_member_relationship_args.dart';
import 'service_group_member_relationship_properties_response.dart';
import 'system_data_response.dart';

/// Defines a ServiceGroupMember relationship resource.
///
/// Uses Azure REST API version 2023-09-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ServiceGroupMemberRelationships_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serviceGroupMemberRelationship = new AzureNative.Relationships.ServiceGroupMemberRelationship("serviceGroupMemberRelationship", new()
///     {
///         Name = "sg1",
///         Properties = new AzureNative.Relationships.Inputs.ServiceGroupMemberRelationshipPropertiesArgs
///         {
///             TargetId = "/providers/Microsoft.Management/serviceGroups/sg1",
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
/// 		_, err := relationships.NewServiceGroupMemberRelationship(ctx, "serviceGroupMemberRelationship", &relationships.ServiceGroupMemberRelationshipArgs{
/// 			Name: pulumi.String("sg1"),
/// 			Properties: &relationships.ServiceGroupMemberRelationshipPropertiesArgs{
/// 				TargetId:     pulumi.String("/providers/Microsoft.Management/serviceGroups/sg1"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.relationships.ServiceGroupMemberRelationship;
/// import com.pulumi.azurenative.relationships.ServiceGroupMemberRelationshipArgs;
/// import com.pulumi.azurenative.relationships.inputs.ServiceGroupMemberRelationshipPropertiesArgs;
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
///         var serviceGroupMemberRelationship = new ServiceGroupMemberRelationship("serviceGroupMemberRelationship", ServiceGroupMemberRelationshipArgs.builder()
///             .name("sg1")
///             .properties(ServiceGroupMemberRelationshipPropertiesArgs.builder()
///                 .targetId("/providers/Microsoft.Management/serviceGroups/sg1")
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
/// const serviceGroupMemberRelationship = new azure_native.relationships.ServiceGroupMemberRelationship("serviceGroupMemberRelationship", {
///     name: "sg1",
///     properties: {
///         targetId: "/providers/Microsoft.Management/serviceGroups/sg1",
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
/// service_group_member_relationship = azure_native.relationships.ServiceGroupMemberRelationship("serviceGroupMemberRelationship",
///     name="sg1",
///     properties={
///         "target_id": "/providers/Microsoft.Management/serviceGroups/sg1",
///         "target_tenant": "72f988bf-86f1-41af-91ab-2d7cd011db47",
///     },
///     resource_uri="subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2/resourceGroups/testrg/providers/Microsoft.DocumentDb/databaseAccounts/test-db-account")
///
/// ```
///
/// ```yaml
/// resources:
///   serviceGroupMemberRelationship:
///     type: azure-native:relationships:ServiceGroupMemberRelationship
///     properties:
///       name: sg1
///       properties:
///         targetId: /providers/Microsoft.Management/serviceGroups/sg1
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
/// $ pulumi import azure-native:relationships:ServiceGroupMemberRelationship sg1 /{resourceUri}/providers/Microsoft.Relationships/serviceGroupMember/{name}
/// ```
class ServiceGroupMemberRelationship extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<ServiceGroupMemberRelationshipPropertiesResponse>
  properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ServiceGroupMemberRelationship].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceGroupMemberRelationship]. {@macro pulumi_relationships_service_group_member_relationship_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceGroupMemberRelationship(
    String name, {
    ServiceGroupMemberRelationshipArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:relationships:ServiceGroupMemberRelationship',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties =
        registerOutput<ServiceGroupMemberRelationshipPropertiesResponse>(
          'properties',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ServiceGroupMemberRelationshipPropertiesResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
