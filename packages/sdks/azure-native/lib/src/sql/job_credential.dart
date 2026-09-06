import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_credential_args.dart';

/// A stored credential that can be used by a job to connect to target databases.
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2017-03-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview, 2025-01-01, 2025-02-01-preview, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a credential
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var jobCredential = new AzureNative.Sql.JobCredential("jobCredential", new()
///     {
///         CredentialName = "cred1",
///         JobAgentName = "agent1",
///         Password = "<password>",
///         ResourceGroupName = "group1",
///         ServerName = "server1",
///         Username = "myuser",
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
/// 		_, err := sql.NewJobCredential(ctx, "jobCredential", &sql.JobCredentialArgs{
/// 			CredentialName:    pulumi.String("cred1"),
/// 			JobAgentName:      pulumi.String("agent1"),
/// 			Password:          pulumi.String("<password>"),
/// 			ResourceGroupName: pulumi.String("group1"),
/// 			ServerName:        pulumi.String("server1"),
/// 			Username:          pulumi.String("myuser"),
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
/// resource "azure-native_sql_jobcredential" "jobCredential" {
///   credential_name     = "cred1"
///   job_agent_name      = "agent1"
///   password            = "<password>"
///   resource_group_name = "group1"
///   server_name         = "server1"
///   username            = "myuser"
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
/// import com.pulumi.azurenative.sql.JobCredential;
/// import com.pulumi.azurenative.sql.JobCredentialArgs;
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
///         var jobCredential = new JobCredential("jobCredential", JobCredentialArgs.builder()
///             .credentialName("cred1")
///             .jobAgentName("agent1")
///             .password("<password>")
///             .resourceGroupName("group1")
///             .serverName("server1")
///             .username("myuser")
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
/// const jobCredential = new azure_native.sql.JobCredential("jobCredential", {
///     credentialName: "cred1",
///     jobAgentName: "agent1",
///     password: "<password>",
///     resourceGroupName: "group1",
///     serverName: "server1",
///     username: "myuser",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// job_credential = azure_native.sql.JobCredential("jobCredential",
///     credential_name="cred1",
///     job_agent_name="agent1",
///     password="<password>",
///     resource_group_name="group1",
///     server_name="server1",
///     username="myuser")
///
/// ```
///
/// ```yaml
/// resources:
///   jobCredential:
///     type: azure-native:sql:JobCredential
///     properties:
///       credentialName: cred1
///       jobAgentName: agent1
///       password: <password>
///       resourceGroupName: group1
///       serverName: server1
///       username: myuser
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
/// $ pulumi import azure-native:sql:JobCredential cred1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/jobAgents/{jobAgentName}/credentials/{credentialName}
/// ```
class JobCredential extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Resource type.
  late final pulumi.Output<String> type;
  /// The credential user name.
  late final pulumi.Output<String> username;

  /// Creates a new [JobCredential].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [JobCredential]. {@macro pulumi_sql_job_credential_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  JobCredential(
    String name, {
    JobCredentialArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:sql:JobCredential',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
    username = registerOutput<String>('username');
  }

  /// Creates a typed reference to an existing [JobCredential] resource.
  JobCredential.reference(String urn)
    : super(
        'azure-native:sql:JobCredential',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
    username = registerOutput<String>('username');
  }
}
