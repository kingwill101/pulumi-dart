import 'package:pulumi/pulumi.dart' as pulumi;
import 'output_mssql_args.dart';
import 'output_mssql_state.dart';

/// Manages a Stream Analytics Output to Microsoft SQL Server Database.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "rg-example",
///     location: "West Europe",
/// });
/// const example = azure.streamanalytics.getJobOutput({
///     name: "example-job",
///     resourceGroupName: exampleResourceGroup.name,
/// });
/// const exampleServer = new azure.mssql.Server("example", {
///     name: "example-server",
///     resourceGroupName: exampleResourceGroup.name,
///     location: exampleResourceGroup.location,
///     version: "12.0",
///     administratorLogin: "dbadmin",
///     administratorLoginPassword: "example-password",
/// });
/// const exampleDatabase = new azure.mssql.Database("example", {
///     name: "exampledb",
///     serverId: test.id,
/// });
/// const exampleOutputMssql = new azure.streamanalytics.OutputMssql("example", {
///     name: "example-output-sql",
///     streamAnalyticsJobName: example.apply(example => example.name),
///     resourceGroupName: example.apply(example => example.resourceGroupName),
///     server: exampleServer.fullyQualifiedDomainName,
///     user: exampleServer.administratorLogin,
///     password: exampleServer.administratorLoginPassword,
///     database: exampleDatabase.name,
///     table: "ExampleTable",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="rg-example",
///     location="West Europe")
/// example = azure.streamanalytics.get_job_output(name="example-job",
///     resource_group_name=example_resource_group.name)
/// example_server = azure.mssql.Server("example",
///     name="example-server",
///     resource_group_name=example_resource_group.name,
///     location=example_resource_group.location,
///     version="12.0",
///     administrator_login="dbadmin",
///     administrator_login_password="example-password")
/// example_database = azure.mssql.Database("example",
///     name="exampledb",
///     server_id=test["id"])
/// example_output_mssql = azure.streamanalytics.OutputMssql("example",
///     name="example-output-sql",
///     stream_analytics_job_name=example.name,
///     resource_group_name=example.resource_group_name,
///     server=example_server.fully_qualified_domain_name,
///     user=example_server.administrator_login,
///     password=example_server.administrator_login_password,
///     database=example_database.name,
///     table="ExampleTable")
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
///         Name = "rg-example",
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
///         Name = "example-server",
///         ResourceGroupName = exampleResourceGroup.Name,
///         Location = exampleResourceGroup.Location,
///         Version = "12.0",
///         AdministratorLogin = "dbadmin",
///         AdministratorLoginPassword = "example-password",
///     });
///
///     var exampleDatabase = new Azure.MSSql.Database("example", new()
///     {
///         Name = "exampledb",
///         ServerId = test.Id,
///     });
///
///     var exampleOutputMssql = new Azure.StreamAnalytics.OutputMssql("example", new()
///     {
///         Name = "example-output-sql",
///         StreamAnalyticsJobName = example.Apply(getJobResult => getJobResult.Name),
///         ResourceGroupName = example.Apply(getJobResult => getJobResult.ResourceGroupName),
///         Server = exampleServer.FullyQualifiedDomainName,
///         User = exampleServer.AdministratorLogin,
///         Password = exampleServer.AdministratorLoginPassword,
///         Database = exampleDatabase.Name,
///         Table = "ExampleTable",
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
/// 			Name:     pulumi.String("rg-example"),
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
/// 			Name:                       pulumi.String("example-server"),
/// 			ResourceGroupName:          exampleResourceGroup.Name,
/// 			Location:                   exampleResourceGroup.Location,
/// 			Version:                    pulumi.String("12.0"),
/// 			AdministratorLogin:         pulumi.String("dbadmin"),
/// 			AdministratorLoginPassword: pulumi.String("example-password"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDatabase, err := mssql.NewDatabase(ctx, "example", &mssql.DatabaseArgs{
/// 			Name:     pulumi.String("exampledb"),
/// 			ServerId: pulumi.Any(test.Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = streamanalytics.NewOutputMssql(ctx, "example", &streamanalytics.OutputMssqlArgs{
/// 			Name: pulumi.String("example-output-sql"),
/// 			StreamAnalyticsJobName: pulumi.String(example.ApplyT(func(example streamanalytics.GetJobResult) (*string, error) {
/// 				return &example.Name, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			ResourceGroupName: pulumi.String(example.ApplyT(func(example streamanalytics.GetJobResult) (*string, error) {
/// 				return &example.ResourceGroupName, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			Server:   exampleServer.FullyQualifiedDomainName,
/// 			User:     exampleServer.AdministratorLogin,
/// 			Password: exampleServer.AdministratorLoginPassword,
/// 			Database: exampleDatabase.Name,
/// 			Table:    pulumi.String("ExampleTable"),
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
/// import com.pulumi.azure.streamanalytics.OutputMssql;
/// import com.pulumi.azure.streamanalytics.OutputMssqlArgs;
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
///             .name("rg-example")
///             .location("West Europe")
///             .build());
///
///         final var example = StreamanalyticsFunctions.getJob(GetJobArgs.builder()
///             .name("example-job")
///             .resourceGroupName(exampleResourceGroup.name())
///             .build());
///
///         var exampleServer = new Server("exampleServer", ServerArgs.builder()
///             .name("example-server")
///             .resourceGroupName(exampleResourceGroup.name())
///             .location(exampleResourceGroup.location())
///             .version("12.0")
///             .administratorLogin("dbadmin")
///             .administratorLoginPassword("example-password")
///             .build());
///
///         var exampleDatabase = new Database("exampleDatabase", DatabaseArgs.builder()
///             .name("exampledb")
///             .serverId(test.id())
///             .build());
///
///         var exampleOutputMssql = new OutputMssql("exampleOutputMssql", OutputMssqlArgs.builder()
///             .name("example-output-sql")
///             .streamAnalyticsJobName(example.applyValue(_example -> _example.name()))
///             .resourceGroupName(example.applyValue(_example -> _example.resourceGroupName()))
///             .server(exampleServer.fullyQualifiedDomainName())
///             .user(exampleServer.administratorLogin())
///             .password(exampleServer.administratorLoginPassword())
///             .database(exampleDatabase.name())
///             .table("ExampleTable")
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
///       name: rg-example
///       location: West Europe
///   exampleServer:
///     type: azure:mssql:Server
///     name: example
///     properties:
///       name: example-server
///       resourceGroupName: ${exampleResourceGroup.name}
///       location: ${exampleResourceGroup.location}
///       version: '12.0'
///       administratorLogin: dbadmin
///       administratorLoginPassword: example-password
///   exampleDatabase:
///     type: azure:mssql:Database
///     name: example
///     properties:
///       name: exampledb
///       serverId: ${test.id}
///   exampleOutputMssql:
///     type: azure:streamanalytics:OutputMssql
///     name: example
///     properties:
///       name: example-output-sql
///       streamAnalyticsJobName: ${example.name}
///       resourceGroupName: ${example.resourceGroupName}
///       server: ${exampleServer.fullyQualifiedDomainName}
///       user: ${exampleServer.administratorLogin}
///       password: ${exampleServer.administratorLoginPassword}
///       database: ${exampleDatabase.name}
///       table: ExampleTable
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
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.StreamAnalytics` - 2021-10-01-preview
///
/// ## Import
///
/// Stream Analytics Outputs to Microsoft SQL Server Database can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:streamanalytics/outputMssql:OutputMssql example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.StreamAnalytics/streamingJobs/job1/outputs/output1
/// ```
class OutputMssql extends pulumi.CustomResource {
  /// The authentication mode for the Stream Output. Possible values are `Msi` and `ConnectionString`. Defaults to `ConnectionString`.
  late final pulumi.Output<String?> authenticationMode;
  /// The MS SQL database name where the reference table exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> database;
  /// The max batch count to write to the SQL Database. Defaults to `10000`. Possible values are between `1` and `1073741824`.
  late final pulumi.Output<double?> maxBatchCount;
  /// The max writer count for the SQL Database. Defaults to `1`. Possible values are `0` which bases the writer count on the query partition and `1` which corresponds to a single writer.
  late final pulumi.Output<double?> maxWriterCount;
  /// The name of the Stream Output. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Password used together with username, to login to the Microsoft SQL Server. Required if `authentication_mode` is `ConnectionString`.
  late final pulumi.Output<String?> password;
  /// The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The SQL server url. Changing this forces a new resource to be created.
  late final pulumi.Output<String> server;
  /// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  late final pulumi.Output<String> streamAnalyticsJobName;
  /// Table in the database that the output points to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> table;
  /// Username used to login to the Microsoft SQL Server. Changing this forces a new resource to be created. Required if `authentication_mode` is `ConnectionString`.
  late final pulumi.Output<String?> user;

  /// Creates a new [OutputMssql].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OutputMssql]. {@macro pulumi_streamanalytics_output_mssql_output_mssql_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OutputMssql(
    String name, {
    OutputMssqlArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:streamanalytics/outputMssql:OutputMssql',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authenticationMode = registerOutput<String?>('authenticationMode');
    this.database = registerOutput<String>('database');
    this.maxBatchCount = registerOutput<double?>('maxBatchCount');
    this.maxWriterCount = registerOutput<double?>('maxWriterCount');
    this.name = registerOutput<String>('name');
    this.password = registerOutput<String?>('password');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.server = registerOutput<String>('server');
    this.streamAnalyticsJobName = registerOutput<String>('streamAnalyticsJobName');
    this.table = registerOutput<String>('table');
    this.user = registerOutput<String?>('user');
  }

  /// Gets an existing [OutputMssql] resource's state with the given [name] and [id].
  static OutputMssql get(
    String name,
    pulumi.Input<String> id, {
    OutputMssqlState? state,
  }) {
    return OutputMssql._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  OutputMssql._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:streamanalytics/outputMssql:OutputMssql',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authenticationMode = registerOutput<String?>('authenticationMode');
    this.database = registerOutput<String>('database');
    this.maxBatchCount = registerOutput<double?>('maxBatchCount');
    this.maxWriterCount = registerOutput<double?>('maxWriterCount');
    this.name = registerOutput<String>('name');
    this.password = registerOutput<String?>('password');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.server = registerOutput<String>('server');
    this.streamAnalyticsJobName = registerOutput<String>('streamAnalyticsJobName');
    this.table = registerOutput<String>('table');
    this.user = registerOutput<String?>('user');
  }
}
