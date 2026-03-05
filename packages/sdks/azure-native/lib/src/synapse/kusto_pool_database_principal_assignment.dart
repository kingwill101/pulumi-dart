import 'package:pulumi/pulumi.dart' as pulumi;
import 'kusto_pool_database_principal_assignment_args.dart';
import 'system_data_response.dart';

/// Class representing a database principal assignment.
///
/// Uses Azure REST API version 2021-06-01-preview. In version 2.x of the Azure Native provider, it used API version 2021-06-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### KustoPoolDatabasePrincipalAssignmentsCreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var kustoPoolDatabasePrincipalAssignment = new AzureNative.Synapse.KustoPoolDatabasePrincipalAssignment("kustoPoolDatabasePrincipalAssignment", new()
///     {
///         DatabaseName = "Kustodatabase8",
///         KustoPoolName = "kustoclusterrptest4",
///         PrincipalAssignmentName = "kustoprincipal1",
///         PrincipalId = "87654321-1234-1234-1234-123456789123",
///         PrincipalType = AzureNative.Synapse.PrincipalType.App,
///         ResourceGroupName = "kustorptest",
///         Role = AzureNative.Synapse.DatabasePrincipalRole.Admin,
///         TenantId = "12345678-1234-1234-1234-123456789123",
///         WorkspaceName = "synapseWorkspaceName",
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
/// 	synapse "github.com/pulumi/pulumi-azure-native-sdk/synapse/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := synapse.NewKustoPoolDatabasePrincipalAssignment(ctx, "kustoPoolDatabasePrincipalAssignment", &synapse.KustoPoolDatabasePrincipalAssignmentArgs{
/// 			DatabaseName:            pulumi.String("Kustodatabase8"),
/// 			KustoPoolName:           pulumi.String("kustoclusterrptest4"),
/// 			PrincipalAssignmentName: pulumi.String("kustoprincipal1"),
/// 			PrincipalId:             pulumi.String("87654321-1234-1234-1234-123456789123"),
/// 			PrincipalType:           pulumi.String(synapse.PrincipalTypeApp),
/// 			ResourceGroupName:       pulumi.String("kustorptest"),
/// 			Role:                    pulumi.String(synapse.DatabasePrincipalRoleAdmin),
/// 			TenantId:                pulumi.String("12345678-1234-1234-1234-123456789123"),
/// 			WorkspaceName:           pulumi.String("synapseWorkspaceName"),
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
/// import com.pulumi.azurenative.synapse.KustoPoolDatabasePrincipalAssignment;
/// import com.pulumi.azurenative.synapse.KustoPoolDatabasePrincipalAssignmentArgs;
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
///         var kustoPoolDatabasePrincipalAssignment = new KustoPoolDatabasePrincipalAssignment("kustoPoolDatabasePrincipalAssignment", KustoPoolDatabasePrincipalAssignmentArgs.builder()
///             .databaseName("Kustodatabase8")
///             .kustoPoolName("kustoclusterrptest4")
///             .principalAssignmentName("kustoprincipal1")
///             .principalId("87654321-1234-1234-1234-123456789123")
///             .principalType("App")
///             .resourceGroupName("kustorptest")
///             .role("Admin")
///             .tenantId("12345678-1234-1234-1234-123456789123")
///             .workspaceName("synapseWorkspaceName")
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
/// const kustoPoolDatabasePrincipalAssignment = new azure_native.synapse.KustoPoolDatabasePrincipalAssignment("kustoPoolDatabasePrincipalAssignment", {
///     databaseName: "Kustodatabase8",
///     kustoPoolName: "kustoclusterrptest4",
///     principalAssignmentName: "kustoprincipal1",
///     principalId: "87654321-1234-1234-1234-123456789123",
///     principalType: azure_native.synapse.PrincipalType.App,
///     resourceGroupName: "kustorptest",
///     role: azure_native.synapse.DatabasePrincipalRole.Admin,
///     tenantId: "12345678-1234-1234-1234-123456789123",
///     workspaceName: "synapseWorkspaceName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// kusto_pool_database_principal_assignment = azure_native.synapse.KustoPoolDatabasePrincipalAssignment("kustoPoolDatabasePrincipalAssignment",
///     database_name="Kustodatabase8",
///     kusto_pool_name="kustoclusterrptest4",
///     principal_assignment_name="kustoprincipal1",
///     principal_id="87654321-1234-1234-1234-123456789123",
///     principal_type=azure_native.synapse.PrincipalType.APP,
///     resource_group_name="kustorptest",
///     role=azure_native.synapse.DatabasePrincipalRole.ADMIN,
///     tenant_id="12345678-1234-1234-1234-123456789123",
///     workspace_name="synapseWorkspaceName")
///
/// ```
///
/// ```yaml
/// resources:
///   kustoPoolDatabasePrincipalAssignment:
///     type: azure-native:synapse:KustoPoolDatabasePrincipalAssignment
///     properties:
///       databaseName: Kustodatabase8
///       kustoPoolName: kustoclusterrptest4
///       principalAssignmentName: kustoprincipal1
///       principalId: 87654321-1234-1234-1234-123456789123
///       principalType: App
///       resourceGroupName: kustorptest
///       role: Admin
///       tenantId: 12345678-1234-1234-1234-123456789123
///       workspaceName: synapseWorkspaceName
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
/// $ pulumi import azure-native:synapse:KustoPoolDatabasePrincipalAssignment synapseWorkspaceName/kustoclusterrptest4/Kustodatabase8/kustoprincipal1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Synapse/workspaces/{workspaceName}/kustoPools/{kustoPoolName}/databases/{databaseName}/principalAssignments/{principalAssignmentName}
/// ```
class KustoPoolDatabasePrincipalAssignment extends pulumi.CustomResource {
  /// The service principal object id in AAD (Azure active directory)
  late final pulumi.Output<String> aadObjectId;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The principal ID assigned to the database principal. It can be a user email, application ID, or security group name.
  late final pulumi.Output<String> principalId;
  /// The principal name
  late final pulumi.Output<String> principalName;
  /// Principal type.
  late final pulumi.Output<String> principalType;
  /// The provisioned state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Database principal role.
  late final pulumi.Output<String> role;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The tenant id of the principal
  late final pulumi.Output<String?> tenantId;
  /// The tenant name of the principal
  late final pulumi.Output<String> tenantName;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [KustoPoolDatabasePrincipalAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KustoPoolDatabasePrincipalAssignment]. {@macro pulumi_synapse_kusto_pool_database_principal_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KustoPoolDatabasePrincipalAssignment(
    String name, {
    KustoPoolDatabasePrincipalAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:synapse:KustoPoolDatabasePrincipalAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aadObjectId = registerOutput<String>('aadObjectId');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    principalId = registerOutput<String>('principalId');
    principalName = registerOutput<String>('principalName');
    principalType = registerOutput<String>('principalType');
    provisioningState = registerOutput<String>('provisioningState');
    role = registerOutput<String>('role');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tenantId = registerOutput<String?>('tenantId');
    tenantName = registerOutput<String>('tenantName');
    type = registerOutput<String>('type');
  }
}
