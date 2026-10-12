import 'package:pulumi/pulumi.dart' as pulumi;
import 'ftp_server_args.dart';
import 'ftp_server_external_config.dart';
import 'ftp_server_internal_config.dart';
import 'ftp_server_state.dart';

/// An SFTP Server resource supporting internal and external connectivity configurations.
///
///
///
/// ## Example Usage
///
/// ### Storage Ftp Server Internal
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const internalServer = new gcp.storage.FtpServer("internal_server", {
///     location: "us-west1",
///     serverId: "sftp-int",
///     displayName: "My SFTP Server",
///     accessType: "INTERNAL",
///     internalConfig: {
///         consumerAcceptLists: [{
///             project: project.then(project => `projects/${project.projectId}`),
///             connectionLimit: 10,
///         }],
///         consumerRejectLists: [
///             {
///                 project: project.then(project => `projects/${project.number}`),
///             },
///             {
///                 project: "projects/920946329098",
///             },
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// internal_server = gcp.storage.FtpServer("internal_server",
///     location="us-west1",
///     server_id="sftp-int",
///     display_name="My SFTP Server",
///     access_type="INTERNAL",
///     internal_config={
///         "consumer_accept_lists": [{
///             "project": f"projects/{project.project_id}",
///             "connection_limit": 10,
///         }],
///         "consumer_reject_lists": [
///             {
///                 "project": f"projects/{project.number}",
///             },
///             {
///                 "project": "projects/920946329098",
///             },
///         ],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var internalServer = new Gcp.Storage.FtpServer("internal_server", new()
///     {
///         Location = "us-west1",
///         ServerId = "sftp-int",
///         DisplayName = "My SFTP Server",
///         AccessType = "INTERNAL",
///         InternalConfig = new Gcp.Storage.Inputs.FtpServerInternalConfigArgs
///         {
///             ConsumerAcceptLists = new[]
///             {
///                 new Gcp.Storage.Inputs.FtpServerInternalConfigConsumerAcceptListArgs
///                 {
///                     Project = $"projects/{project.Apply(getProjectResult => getProjectResult.ProjectId)}",
///                     ConnectionLimit = 10,
///                 },
///             },
///             ConsumerRejectLists = new[]
///             {
///                 new Gcp.Storage.Inputs.FtpServerInternalConfigConsumerRejectListArgs
///                 {
///                     Project = $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}",
///                 },
///                 new Gcp.Storage.Inputs.FtpServerInternalConfigConsumerRejectListArgs
///                 {
///                     Project = "projects/920946329098",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewFtpServer(ctx, "internal_server", &storage.FtpServerArgs{
/// 			Location:    pulumi.String("us-west1"),
/// 			ServerId:    pulumi.String("sftp-int"),
/// 			DisplayName: pulumi.String("My SFTP Server"),
/// 			AccessType:  pulumi.String("INTERNAL"),
/// 			InternalConfig: &storage.FtpServerInternalConfigArgs{
/// 				ConsumerAcceptLists: storage.FtpServerInternalConfigConsumerAcceptListArray{
/// 					&storage.FtpServerInternalConfigConsumerAcceptListArgs{
/// 						Project:         pulumi.Sprintf("projects/%v", project.ProjectId),
/// 						ConnectionLimit: pulumi.Int(10),
/// 					},
/// 				},
/// 				ConsumerRejectLists: storage.FtpServerInternalConfigConsumerRejectListArray{
/// 					&storage.FtpServerInternalConfigConsumerRejectListArgs{
/// 						Project: pulumi.Sprintf("projects/%v", project.Number),
/// 					},
/// 					&storage.FtpServerInternalConfigConsumerRejectListArgs{
/// 						Project: pulumi.String("projects/920946329098"),
/// 					},
/// 				},
/// 			},
/// 		})
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_storage_ftpserver" "internal_server" {
///   location     = "us-west1"
///   server_id    = "sftp-int"
///   display_name = "My SFTP Server"
///   access_type  = "INTERNAL"
///   internal_config = {
///     consumer_accept_lists = [{
///       "project"         ="projects/${data.gcp_organizations_getproject.project.project_id}"
///       "connectionLimit" = 10
///     }]
///     consumer_reject_lists = [{
///       "project" ="projects/${data.gcp_organizations_getproject.project.number}"
///       }, {
///       "project" = "projects/920946329098"
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.storage.FtpServer;
/// import com.pulumi.gcp.storage.FtpServerArgs;
/// import com.pulumi.gcp.storage.inputs.FtpServerInternalConfigArgs;
/// import com.pulumi.gcp.storage.inputs.FtpServerInternalConfigConsumerAcceptListArgs;
/// import com.pulumi.gcp.storage.inputs.FtpServerInternalConfigConsumerRejectListArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var internalServer = new FtpServer("internalServer", FtpServerArgs.builder()
///             .location("us-west1")
///             .serverId("sftp-int")
///             .displayName("My SFTP Server")
///             .accessType("INTERNAL")
///             .internalConfig(FtpServerInternalConfigArgs.builder()
///                 .consumerAcceptLists(FtpServerInternalConfigConsumerAcceptListArgs.builder()
///                     .project(String.format("projects/%s", project.projectId()))
///                     .connectionLimit(10)
///                     .build())
///                 .consumerRejectLists(
///                     FtpServerInternalConfigConsumerRejectListArgs.builder()
///                         .project(String.format("projects/%s", project.number()))
///                         .build(),
///                     FtpServerInternalConfigConsumerRejectListArgs.builder()
///                         .project("projects/920946329098")
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   internalServer:
///     type: gcp:storage:FtpServer
///     name: internal_server
///     properties:
///       location: us-west1
///       serverId: sftp-int
///       displayName: My SFTP Server
///       accessType: INTERNAL
///       internalConfig:
///         consumerAcceptLists:
///           - project: projects/${project.projectId}
///             connectionLimit: 10
///         consumerRejectLists:
///           - project: projects/${project.number}
///           - project: projects/920946329098
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Storage Ftp Server External
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const externalServer = new gcp.storage.FtpServer("external_server", {
///     location: "us-west1",
///     serverId: "sftp-ext",
///     displayName: "My SFTP Server",
///     accessType: "EXTERNAL",
///     externalConfig: {
///         allowedCidrBlocks: [
///             "192.168.1.0/24",
///             "10.0.0.0/8",
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// external_server = gcp.storage.FtpServer("external_server",
///     location="us-west1",
///     server_id="sftp-ext",
///     display_name="My SFTP Server",
///     access_type="EXTERNAL",
///     external_config={
///         "allowed_cidr_blocks": [
///             "192.168.1.0/24",
///             "10.0.0.0/8",
///         ],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var externalServer = new Gcp.Storage.FtpServer("external_server", new()
///     {
///         Location = "us-west1",
///         ServerId = "sftp-ext",
///         DisplayName = "My SFTP Server",
///         AccessType = "EXTERNAL",
///         ExternalConfig = new Gcp.Storage.Inputs.FtpServerExternalConfigArgs
///         {
///             AllowedCidrBlocks = new[]
///             {
///                 "192.168.1.0/24",
///                 "10.0.0.0/8",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewFtpServer(ctx, "external_server", &storage.FtpServerArgs{
/// 			Location:    pulumi.String("us-west1"),
/// 			ServerId:    pulumi.String("sftp-ext"),
/// 			DisplayName: pulumi.String("My SFTP Server"),
/// 			AccessType:  pulumi.String("EXTERNAL"),
/// 			ExternalConfig: &storage.FtpServerExternalConfigArgs{
/// 				AllowedCidrBlocks: pulumi.StringArray{
/// 					pulumi.String("192.168.1.0/24"),
/// 					pulumi.String("10.0.0.0/8"),
/// 				},
/// 			},
/// 		})
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_storage_ftpserver" "external_server" {
///   location     = "us-west1"
///   server_id    = "sftp-ext"
///   display_name = "My SFTP Server"
///   access_type  = "EXTERNAL"
///   external_config = {
///     allowed_cidr_blocks = ["192.168.1.0/24", "10.0.0.0/8"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.FtpServer;
/// import com.pulumi.gcp.storage.FtpServerArgs;
/// import com.pulumi.gcp.storage.inputs.FtpServerExternalConfigArgs;
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
///         var externalServer = new FtpServer("externalServer", FtpServerArgs.builder()
///             .location("us-west1")
///             .serverId("sftp-ext")
///             .displayName("My SFTP Server")
///             .accessType("EXTERNAL")
///             .externalConfig(FtpServerExternalConfigArgs.builder()
///                 .allowedCidrBlocks(
///                     "192.168.1.0/24",
///                     "10.0.0.0/8")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   externalServer:
///     type: gcp:storage:FtpServer
///     name: external_server
///     properties:
///       location: us-west1
///       serverId: sftp-ext
///       displayName: My SFTP Server
///       accessType: EXTERNAL
///       externalConfig:
///         allowedCidrBlocks:
///           - 192.168.1.0/24
///           - 10.0.0.0/8
/// ```
///
///
/// ## Import
///
/// Server can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/servers/{{server_id}}`
/// * `{{project}}/{{location}}/{{server_id}}`
/// * `{{location}}/{{server_id}}`
///
///
/// When using the `pulumi import` command, Server can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:storage/ftpServer:FtpServer default projects/{{project}}/locations/{{location}}/servers/{{server_id}}
/// $ pulumi import gcp:storage/ftpServer:FtpServer default {{project}}/{{location}}/{{server_id}}
/// $ pulumi import gcp:storage/ftpServer:FtpServer default {{location}}/{{server_id}}
/// ```
class FtpServer extends pulumi.CustomResource {
  /// The access type for this SFTP server. Possible values: INTERNAL, EXTERNAL
  /// Possible values are: `INTERNAL`, `EXTERNAL`.
  late final pulumi.Output<String> accessType;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A display name for the server.
  late final pulumi.Output<String?> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Configuration for external access type SFTP servers.
  /// Structure is documented below.
  late final pulumi.Output<FtpServerExternalConfig?> externalConfig;
  /// Configuration for internal access type SFTP servers.
  /// Structure is documented below.
  late final pulumi.Output<FtpServerInternalConfig?> internalConfig;
  /// A set of key/value label pairs to assign to the Storage FTP Server.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location (region) of the Storage FTP Server.
  late final pulumi.Output<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// A unique ID for the server. Must start with a lowercase letter, and end with a lowercase letter or number. Can contain lowercase letters, numbers, and hyphens. Maximum 30 characters.
  late final pulumi.Output<String> serverId;
  /// The email address of the service agent associated with the SFTP server.
  late final pulumi.Output<String> serviceAgent;
  /// The operational lifecycle state of the SFTP server.
  late final pulumi.Output<String> state;

  /// Creates a new [FtpServer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FtpServer]. {@macro pulumi_storage_ftp_server_ftp_server_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FtpServer(
    String name, {
    FtpServerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:storage/ftpServer:FtpServer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.1.0').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    accessType = registerOutput<String>('accessType');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    externalConfig = registerOutput<FtpServerExternalConfig?>('externalConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FtpServerExternalConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    internalConfig = registerOutput<FtpServerInternalConfig?>('internalConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FtpServerInternalConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    serverId = registerOutput<String>('serverId');
    serviceAgent = registerOutput<String>('serviceAgent');
    state = registerOutput<String>('state');
  }

  /// Gets an existing [FtpServer] resource's state with the given [name] and [id].
  static FtpServer get(
    String name,
    pulumi.Input<String> id, {
    FtpServerState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return FtpServer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  FtpServer._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:storage/ftpServer:FtpServer',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessType = registerOutput<String>('accessType');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    externalConfig = registerOutput<FtpServerExternalConfig?>('externalConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FtpServerExternalConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    internalConfig = registerOutput<FtpServerInternalConfig?>('internalConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FtpServerInternalConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    serverId = registerOutput<String>('serverId');
    serviceAgent = registerOutput<String>('serviceAgent');
    this.state = registerOutput<String>('state');
  }

  /// Creates a typed reference to an existing [FtpServer] resource.
  FtpServer.reference(String urn)
    : super(
        'gcp:storage/ftpServer:FtpServer',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    accessType = registerOutput<String>('accessType');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    externalConfig = registerOutput<FtpServerExternalConfig?>('externalConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FtpServerExternalConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    internalConfig = registerOutput<FtpServerInternalConfig?>('internalConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FtpServerInternalConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    serverId = registerOutput<String>('serverId');
    serviceAgent = registerOutput<String>('serviceAgent');
    state = registerOutput<String>('state');
  }
}
