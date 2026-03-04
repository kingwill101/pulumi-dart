import 'package:pulumi/pulumi.dart' as pulumi;
import 'reference_input_mssql_args.dart';
import 'reference_input_mssql_state.dart';

/// Manages a Stream Analytics Reference Input from MS SQL. Reference data (also known as a lookup table) is a finite data set that is static or slowly changing in nature, used to perform a lookup or to correlate with your data stream. Learn more [here](https://docs.microsoft.com/azure/stream-analytics/stream-analytics-use-reference-data#azure-sql-database).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const example = azure.streamanalytics.getJobOutput({
///     name: "example-job",
///     resourceGroupName: exampleResourceGroup.name,
/// });
/// const exampleServer = new azure.mssql.Server("example", {
///     name: "example-sqlserver",
///     resourceGroupName: exampleResourceGroup.name,
///     location: exampleResourceGroup.location,
///     version: "12.0",
///     administratorLogin: "admin",
///     administratorLoginPassword: "password",
/// });
/// const exampleDatabase = new azure.mssql.Database("example", {
///     name: "example-db",
///     serverId: exampleServer.id,
/// });
/// const exampleReferenceInputMssql = new azure.streamanalytics.ReferenceInputMssql("example", {
///     name: "example-reference-input",
///     resourceGroupName: example.apply(example => example.resourceGroupName),
///     streamAnalyticsJobName: example.apply(example => example.name),
///     server: exampleServer.fullyQualifiedDomainName,
///     database: exampleDatabase.name,
///     username: "exampleuser",
///     password: "examplepassword",
///     refreshType: "RefreshPeriodicallyWithFull",
///     refreshIntervalDuration: "00:20:00",
///     fullSnapshotQuery: `    SELECT *
///     INTO [YourOutputAlias]
///     FROM [YourInputAlias]
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example = azure.streamanalytics.get_job_output(name="example-job",
///     resource_group_name=example_resource_group.name)
/// example_server = azure.mssql.Server("example",
///     name="example-sqlserver",
///     resource_group_name=example_resource_group.name,
///     location=example_resource_group.location,
///     version="12.0",
///     administrator_login="admin",
///     administrator_login_password="password")
/// example_database = azure.mssql.Database("example",
///     name="example-db",
///     server_id=example_server.id)
/// example_reference_input_mssql = azure.streamanalytics.ReferenceInputMssql("example",
///     name="example-reference-input",
///     resource_group_name=example.resource_group_name,
///     stream_analytics_job_name=example.name,
///     server=example_server.fully_qualified_domain_name,
///     database=example_database.name,
///     username="exampleuser",
///     password="examplepassword",
///     refresh_type="RefreshPeriodicallyWithFull",
///     refresh_interval_duration="00:20:00",
///     full_snapshot_query="""    SELECT *
///     INTO [YourOutputAlias]
///     FROM [YourInputAlias]
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
///     var exampleResourceGroup = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var example = Azure.StreamAnalytics.GetJob.Invoke(new()
///     {
///         Name = "example-job",
///         ResourceGroupName = exampleResourceGroup.Name,
///     });
///
///     var exampleServer = new Azure.MSSql.Server("example", new()
///     {
///         Name = "example-sqlserver",
///         ResourceGroupName = exampleResourceGroup.Name,
///         Location = exampleResourceGroup.Location,
///         Version = "12.0",
///         AdministratorLogin = "admin",
///         AdministratorLoginPassword = "password",
///     });
///
///     var exampleDatabase = new Azure.MSSql.Database("example", new()
///     {
///         Name = "example-db",
///         ServerId = exampleServer.Id,
///     });
///
///     var exampleReferenceInputMssql = new Azure.StreamAnalytics.ReferenceInputMssql("example", new()
///     {
///         Name = "example-reference-input",
///         ResourceGroupName = example.Apply(getJobResult => getJobResult.ResourceGroupName),
///         StreamAnalyticsJobName = example.Apply(getJobResult => getJobResult.Name),
///         Server = exampleServer.FullyQualifiedDomainName,
///         Database = exampleDatabase.Name,
///         Username = "exampleuser",
///         Password = "examplepassword",
///         RefreshType = "RefreshPeriodicallyWithFull",
///         RefreshIntervalDuration = "00:20:00",
///         FullSnapshotQuery = @"    SELECT *
///     INTO [YourOutputAlias]
///     FROM [YourInputAlias]
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/mssql"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/streamanalytics"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example := streamanalytics.LookupJobOutput(ctx, streamanalytics.GetJobOutputArgs{
/// 			Name:              pulumi.String("example-job"),
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 		}, nil)
/// 		exampleServer, err := mssql.NewServer(ctx, "example", &mssql.ServerArgs{
/// 			Name:                       pulumi.String("example-sqlserver"),
/// 			ResourceGroupName:          exampleResourceGroup.Name,
/// 			Location:                   exampleResourceGroup.Location,
/// 			Version:                    pulumi.String("12.0"),
/// 			AdministratorLogin:         pulumi.String("admin"),
/// 			AdministratorLoginPassword: pulumi.String("password"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDatabase, err := mssql.NewDatabase(ctx, "example", &mssql.DatabaseArgs{
/// 			Name:     pulumi.String("example-db"),
/// 			ServerId: exampleServer.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = streamanalytics.NewReferenceInputMssql(ctx, "example", &streamanalytics.ReferenceInputMssqlArgs{
/// 			Name: pulumi.String("example-reference-input"),
/// 			ResourceGroupName: pulumi.String(example.ApplyT(func(example streamanalytics.GetJobResult) (*string, error) {
/// 				return &example.ResourceGroupName, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			StreamAnalyticsJobName: pulumi.String(example.ApplyT(func(example streamanalytics.GetJobResult) (*string, error) {
/// 				return &example.Name, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			Server:                  exampleServer.FullyQualifiedDomainName,
/// 			Database:                exampleDatabase.Name,
/// 			Username:                pulumi.String("exampleuser"),
/// 			Password:                pulumi.String("examplepassword"),
/// 			RefreshType:             pulumi.String("RefreshPeriodicallyWithFull"),
/// 			RefreshIntervalDuration: pulumi.String("00:20:00"),
/// 			FullSnapshotQuery:       pulumi.String("    SELECT *\n    INTO [YourOutputAlias]\n    FROM [YourInputAlias]\n"),
/// 		})
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.streamanalytics.StreamanalyticsFunctions;
/// import com.pulumi.azure.streamanalytics.inputs.GetJobArgs;
/// import com.pulumi.azure.mssql.Server;
/// import com.pulumi.azure.mssql.ServerArgs;
/// import com.pulumi.azure.mssql.Database;
/// import com.pulumi.azure.mssql.DatabaseArgs;
/// import com.pulumi.azure.streamanalytics.ReferenceInputMssql;
/// import com.pulumi.azure.streamanalytics.ReferenceInputMssqlArgs;
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
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         final var example = StreamanalyticsFunctions.getJob(GetJobArgs.builder()
///             .name("example-job")
///             .resourceGroupName(exampleResourceGroup.name())
///             .build());
///
///         var exampleServer = new Server("exampleServer", ServerArgs.builder()
///             .name("example-sqlserver")
///             .resourceGroupName(exampleResourceGroup.name())
///             .location(exampleResourceGroup.location())
///             .version("12.0")
///             .administratorLogin("admin")
///             .administratorLoginPassword("password")
///             .build());
///
///         var exampleDatabase = new Database("exampleDatabase", DatabaseArgs.builder()
///             .name("example-db")
///             .serverId(exampleServer.id())
///             .build());
///
///         var exampleReferenceInputMssql = new ReferenceInputMssql("exampleReferenceInputMssql", ReferenceInputMssqlArgs.builder()
///             .name("example-reference-input")
///             .resourceGroupName(example.applyValue(_example -> _example.resourceGroupName()))
///             .streamAnalyticsJobName(example.applyValue(_example -> _example.name()))
///             .server(exampleServer.fullyQualifiedDomainName())
///             .database(exampleDatabase.name())
///             .username("exampleuser")
///             .password("examplepassword")
///             .refreshType("RefreshPeriodicallyWithFull")
///             .refreshIntervalDuration("00:20:00")
///             .fullSnapshotQuery("""
///     SELECT *
///     INTO [YourOutputAlias]
///     FROM [YourInputAlias]
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleServer:
///     type: azure:mssql:Server
///     name: example
///     properties:
///       name: example-sqlserver
///       resourceGroupName: ${exampleResourceGroup.name}
///       location: ${exampleResourceGroup.location}
///       version: '12.0'
///       administratorLogin: admin
///       administratorLoginPassword: password
///   exampleDatabase:
///     type: azure:mssql:Database
///     name: example
///     properties:
///       name: example-db
///       serverId: ${exampleServer.id}
///   exampleReferenceInputMssql:
///     type: azure:streamanalytics:ReferenceInputMssql
///     name: example
///     properties:
///       name: example-reference-input
///       resourceGroupName: ${example.resourceGroupName}
///       streamAnalyticsJobName: ${example.name}
///       server: ${exampleServer.fullyQualifiedDomainName}
///       database: ${exampleDatabase.name}
///       username: exampleuser
///       password: examplepassword
///       refreshType: RefreshPeriodicallyWithFull
///       refreshIntervalDuration: 00:20:00
///       fullSnapshotQuery: |2
///             SELECT *
///             INTO [YourOutputAlias]
///             FROM [YourInputAlias]
/// variables:
///   example:
///     fn::invoke:
///       function: azure:streamanalytics:getJob
///       arguments:
///         name: example-job
///         resourceGroupName: ${exampleResourceGroup.name}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.StreamAnalytics` - 2020-03-01
///
/// ## Import
///
/// Stream Analytics can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:streamanalytics/referenceInputMssql:ReferenceInputMssql example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.StreamAnalytics/streamingJobs/job1/inputs/input1
/// ```
class ReferenceInputMssql extends pulumi.CustomResource {
  /// The MS SQL database name where the reference data exists.
  late final pulumi.Output<String> database;

  /// The query used to retrieve incremental changes in the reference data from the MS SQL database. Cannot be set when `refresh_type` is `Static`.
  late final pulumi.Output<String?> deltaSnapshotQuery;

  /// The query used to retrieve the reference data from the MS SQL database.
  late final pulumi.Output<String> fullSnapshotQuery;

  /// The name of the Reference Input MS SQL data. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// The password to connect to the MS SQL database.
  late final pulumi.Output<String> password;

  /// The frequency in `hh:mm:ss` with which the reference data should be retrieved from the MS SQL database e.g. `00:20:00` for every 20 minutes. Must be set when `refresh_type` is `RefreshPeriodicallyWithFull` or `RefreshPeriodicallyWithDelta`.
  late final pulumi.Output<String?> refreshIntervalDuration;

  /// Defines whether and how the reference data should be refreshed. Accepted values are `Static`, `RefreshPeriodicallyWithFull` and `RefreshPeriodicallyWithDelta`.
  late final pulumi.Output<String> refreshType;

  /// The name of the Resource Group where the Stream Analytics Job should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// The fully qualified domain name of the MS SQL server.
  late final pulumi.Output<String> server;

  /// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  late final pulumi.Output<String> streamAnalyticsJobName;

  /// The name of the table in the Azure SQL database.
  late final pulumi.Output<String?> table;

  /// The username to connect to the MS SQL database.
  late final pulumi.Output<String> username;

  /// Creates a new [ReferenceInputMssql].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReferenceInputMssql]. {@macro pulumi_streamanalytics_reference_input_mssql_reference_input_mssql_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReferenceInputMssql(
    String name, {
    ReferenceInputMssqlArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:streamanalytics/referenceInputMssql:ReferenceInputMssql',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    database = registerOutput<String>('database');
    deltaSnapshotQuery = registerOutput<String?>('deltaSnapshotQuery');
    fullSnapshotQuery = registerOutput<String>('fullSnapshotQuery');
    this.name = registerOutput<String>('name');
    password = registerOutput<String>('password');
    refreshIntervalDuration = registerOutput<String?>(
      'refreshIntervalDuration',
    );
    refreshType = registerOutput<String>('refreshType');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    server = registerOutput<String>('server');
    streamAnalyticsJobName = registerOutput<String>('streamAnalyticsJobName');
    table = registerOutput<String?>('table');
    username = registerOutput<String>('username');
  }

  /// Gets an existing [ReferenceInputMssql] resource's state with the given [name] and [id].
  static ReferenceInputMssql get(
    String name,
    pulumi.Input<String> id, {
    ReferenceInputMssqlState? state,
  }) {
    return ReferenceInputMssql._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ReferenceInputMssql._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:streamanalytics/referenceInputMssql:ReferenceInputMssql',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    database = registerOutput<String>('database');
    deltaSnapshotQuery = registerOutput<String?>('deltaSnapshotQuery');
    fullSnapshotQuery = registerOutput<String>('fullSnapshotQuery');
    this.name = registerOutput<String>('name');
    password = registerOutput<String>('password');
    refreshIntervalDuration = registerOutput<String?>(
      'refreshIntervalDuration',
    );
    refreshType = registerOutput<String>('refreshType');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    server = registerOutput<String>('server');
    streamAnalyticsJobName = registerOutput<String>('streamAnalyticsJobName');
    table = registerOutput<String?>('table');
    username = registerOutput<String>('username');
  }
}
