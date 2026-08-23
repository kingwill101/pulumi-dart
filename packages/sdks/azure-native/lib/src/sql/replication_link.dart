import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_link_args.dart';

/// A replication link.
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2023-05-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview, 2025-01-01, 2025-02-01-preview, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Updates Replication Link
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var replicationLink = new AzureNative.Sql.ReplicationLink("replicationLink", new()
///     {
///         DatabaseName = "gamma-db",
///         LinkId = "00000000-1111-2222-3333-666666666666",
///         LinkType = AzureNative.Sql.ReplicationLinkType.STANDBY,
///         ResourceGroupName = "Default",
///         ServerName = "sourcesvr",
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
/// 	sql "github.com/pulumi/pulumi-azure-native-sdk/sql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewReplicationLink(ctx, "replicationLink", &sql.ReplicationLinkArgs{
/// 			DatabaseName:      pulumi.String("gamma-db"),
/// 			LinkId:            pulumi.String("00000000-1111-2222-3333-666666666666"),
/// 			LinkType:          pulumi.String(sql.ReplicationLinkTypeSTANDBY),
/// 			ResourceGroupName: pulumi.String("Default"),
/// 			ServerName:        pulumi.String("sourcesvr"),
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
/// resource "azure-native_sql_replicationlink" "replicationLink" {
///   database_name       = "gamma-db"
///   link_id             = "00000000-1111-2222-3333-666666666666"
///   link_type           = "STANDBY"
///   resource_group_name = "Default"
///   server_name         = "sourcesvr"
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
/// import com.pulumi.azurenative.sql.ReplicationLink;
/// import com.pulumi.azurenative.sql.ReplicationLinkArgs;
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
///         var replicationLink = new ReplicationLink("replicationLink", ReplicationLinkArgs.builder()
///             .databaseName("gamma-db")
///             .linkId("00000000-1111-2222-3333-666666666666")
///             .linkType("STANDBY")
///             .resourceGroupName("Default")
///             .serverName("sourcesvr")
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
/// const replicationLink = new azure_native.sql.ReplicationLink("replicationLink", {
///     databaseName: "gamma-db",
///     linkId: "00000000-1111-2222-3333-666666666666",
///     linkType: azure_native.sql.ReplicationLinkType.STANDBY,
///     resourceGroupName: "Default",
///     serverName: "sourcesvr",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// replication_link = azure_native.sql.ReplicationLink("replicationLink",
///     database_name="gamma-db",
///     link_id="00000000-1111-2222-3333-666666666666",
///     link_type=azure_native.sql.ReplicationLinkType.STANDBY,
///     resource_group_name="Default",
///     server_name="sourcesvr")
///
/// ```
///
/// ```yaml
/// resources:
///   replicationLink:
///     type: azure-native:sql:ReplicationLink
///     properties:
///       databaseName: gamma-db
///       linkId: 00000000-1111-2222-3333-666666666666
///       linkType: STANDBY
///       resourceGroupName: Default
///       serverName: sourcesvr
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
/// $ pulumi import azure-native:sql:ReplicationLink 00000000-1111-2222-3333-666666666666 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/databases/{databaseName}/replicationLinks/{linkId}
/// ```
class ReplicationLink extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Whether the user is currently allowed to terminate the link.
  late final pulumi.Output<bool> isTerminationAllowed;
  /// Link type (GEO, NAMED, STANDBY). Update operation does not support NAMED.
  late final pulumi.Output<String?> linkType;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Resource partner database.
  late final pulumi.Output<String> partnerDatabase;
  /// Resource partner database Id.
  late final pulumi.Output<String> partnerDatabaseId;
  /// Resource partner location.
  late final pulumi.Output<String> partnerLocation;
  /// Partner replication role.
  late final pulumi.Output<String> partnerRole;
  /// Resource partner server.
  late final pulumi.Output<String> partnerServer;
  /// Seeding completion percentage for the link.
  late final pulumi.Output<int> percentComplete;
  /// Replication mode.
  late final pulumi.Output<String> replicationMode;
  /// Replication state (PENDING, SEEDING, CATCHUP, SUSPENDED).
  late final pulumi.Output<String> replicationState;
  /// Local replication role.
  late final pulumi.Output<String> role;
  /// Time at which the link was created.
  late final pulumi.Output<String> startTime;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [ReplicationLink].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReplicationLink]. {@macro pulumi_sql_replication_link_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReplicationLink(
    String name, {
    ReplicationLinkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:sql:ReplicationLink',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    isTerminationAllowed = registerOutput<bool>('isTerminationAllowed');
    linkType = registerOutput<String?>('linkType');
    this.name = registerOutput<String>('name');
    partnerDatabase = registerOutput<String>('partnerDatabase');
    partnerDatabaseId = registerOutput<String>('partnerDatabaseId');
    partnerLocation = registerOutput<String>('partnerLocation');
    partnerRole = registerOutput<String>('partnerRole');
    partnerServer = registerOutput<String>('partnerServer');
    percentComplete = registerOutput<int>('percentComplete');
    replicationMode = registerOutput<String>('replicationMode');
    replicationState = registerOutput<String>('replicationState');
    role = registerOutput<String>('role');
    startTime = registerOutput<String>('startTime');
    type = registerOutput<String>('type');
  }
}
