import 'package:pulumi/pulumi.dart' as pulumi;
import 'transfer_agent_pool_args.dart';
import 'transfer_agent_pool_bandwidth_limit.dart';
import 'transfer_agent_pool_state.dart';

/// Represents an On-Premises Agent pool.
///
///
/// To get more information about AgentPool, see:
///
/// * [API documentation](https://cloud.google.com/storage-transfer/docs/reference/rest/v1/projects.agentPools)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/storage-transfer/docs/on-prem-agent-pools)
///
/// ## Example Usage
///
/// ### Agent Pool Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.storage.getTransferProjectServiceAccount({
///     project: "my-project-name",
/// });
/// const pubsubEditorRole = new gcp.projects.IAMMember("pubsub_editor_role", {
///     project: "my-project-name",
///     role: "roles/pubsub.editor",
///     member: _default.then(_default => `serviceAccount:${_default.email}`),
/// });
/// const example = new gcp.storage.TransferAgentPool("example", {
///     name: "agent-pool-example",
///     displayName: "Source A to destination Z",
///     bandwidthLimit: {
///         limitMbps: "120",
///     },
/// }, {
///     dependsOn: [pubsubEditorRole],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.storage.get_transfer_project_service_account(project="my-project-name")
/// pubsub_editor_role = gcp.projects.IAMMember("pubsub_editor_role",
///     project="my-project-name",
///     role="roles/pubsub.editor",
///     member=f"serviceAccount:{default.email}")
/// example = gcp.storage.TransferAgentPool("example",
///     name="agent-pool-example",
///     display_name="Source A to destination Z",
///     bandwidth_limit={
///         "limit_mbps": "120",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[pubsub_editor_role]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Gcp.Storage.GetTransferProjectServiceAccount.Invoke(new()
///     {
///         Project = "my-project-name",
///     });
///
///     var pubsubEditorRole = new Gcp.Projects.IAMMember("pubsub_editor_role", new()
///     {
///         Project = "my-project-name",
///         Role = "roles/pubsub.editor",
///         Member = @default.Apply(@default => $"serviceAccount:{@default.Apply(getTransferProjectServiceAccountResult => getTransferProjectServiceAccountResult.Email)}"),
///     });
///
///     var example = new Gcp.Storage.TransferAgentPool("example", new()
///     {
///         Name = "agent-pool-example",
///         DisplayName = "Source A to destination Z",
///         BandwidthLimit = new Gcp.Storage.Inputs.TransferAgentPoolBandwidthLimitArgs
///         {
///             LimitMbps = "120",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             pubsubEditorRole,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := storage.GetTransferProjectServiceAccount(ctx, &storage.GetTransferProjectServiceAccountArgs{
/// 			Project: pulumi.StringRef("my-project-name"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pubsubEditorRole, err := projects.NewIAMMember(ctx, "pubsub_editor_role", &projects.IAMMemberArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			Role:    pulumi.String("roles/pubsub.editor"),
/// 			Member:  pulumi.Sprintf("serviceAccount:%v", _default.Email),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewTransferAgentPool(ctx, "example", &storage.TransferAgentPoolArgs{
/// 			Name:        pulumi.String("agent-pool-example"),
/// 			DisplayName: pulumi.String("Source A to destination Z"),
/// 			BandwidthLimit: &storage.TransferAgentPoolBandwidthLimitArgs{
/// 				LimitMbps: pulumi.String("120"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			pubsubEditorRole,
/// 		}))
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
/// data "gcp_storage_gettransferprojectserviceaccount" "default" {
///   project = "my-project-name"
/// }
///
/// resource "gcp_projects_iammember" "pubsub_editor_role" {
///   project = "my-project-name"
///   role    = "roles/pubsub.editor"
///   member  ="serviceAccount:${data.gcp_storage_gettransferprojectserviceaccount.default.email}"
/// }
/// resource "gcp_storage_transferagentpool" "example" {
///   depends_on   = [gcp_projects_iammember.pubsub_editor_role]
///   name         = "agent-pool-example"
///   display_name = "Source A to destination Z"
///   bandwidth_limit = {
///     limit_mbps = "120"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.StorageFunctions;
/// import com.pulumi.gcp.storage.inputs.GetTransferProjectServiceAccountArgs;
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
/// import com.pulumi.gcp.storage.TransferAgentPool;
/// import com.pulumi.gcp.storage.TransferAgentPoolArgs;
/// import com.pulumi.gcp.storage.inputs.TransferAgentPoolBandwidthLimitArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var default = StorageFunctions.getTransferProjectServiceAccount(GetTransferProjectServiceAccountArgs.builder()
///             .project("my-project-name")
///             .build());
///
///         var pubsubEditorRole = new IAMMember("pubsubEditorRole", IAMMemberArgs.builder()
///             .project("my-project-name")
///             .role("roles/pubsub.editor")
///             .member(String.format("serviceAccount:%s", default_.email()))
///             .build());
///
///         var example = new TransferAgentPool("example", TransferAgentPoolArgs.builder()
///             .name("agent-pool-example")
///             .displayName("Source A to destination Z")
///             .bandwidthLimit(TransferAgentPoolBandwidthLimitArgs.builder()
///                 .limitMbps("120")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(pubsubEditorRole)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   pubsubEditorRole:
///     type: gcp:projects:IAMMember
///     name: pubsub_editor_role
///     properties:
///       project: my-project-name
///       role: roles/pubsub.editor
///       member: serviceAccount:${default.email}
///   example:
///     type: gcp:storage:TransferAgentPool
///     properties:
///       name: agent-pool-example
///       displayName: Source A to destination Z
///       bandwidthLimit:
///         limitMbps: '120'
///     options:
///       dependsOn:
///         - ${pubsubEditorRole}
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:storage:getTransferProjectServiceAccount
///       arguments:
///         project: my-project-name
/// ```
///
///
/// ## Import
///
/// AgentPool can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/agentPools/{{name}}`
/// * `{{project}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, AgentPool can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:storage/transferAgentPool:TransferAgentPool default projects/{{project}}/agentPools/{{name}}
/// $ pulumi import gcp:storage/transferAgentPool:TransferAgentPool default {{project}}/{{name}}
/// $ pulumi import gcp:storage/transferAgentPool:TransferAgentPool default {{name}}
/// ```
class TransferAgentPool extends pulumi.CustomResource {
  /// Specifies the bandwidth limit details. If this field is unspecified, the default value is set as 'No Limit'.
  /// Structure is documented below.
  late final pulumi.Output<TransferAgentPoolBandwidthLimit?> bandwidthLimit;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Specifies the client-specified AgentPool description.
  late final pulumi.Output<String?> displayName;
  /// The ID of the agent pool to create.
  /// The agentPoolId must meet the following requirements:
  /// * Length of 128 characters or less.
  /// * Not start with the string goog.
  /// * Start with a lowercase ASCII character, followed by:
  /// * Zero or more: lowercase Latin alphabet characters, numerals, hyphens (-), periods (.), underscores (_), or tildes (~).
  /// * One or more numerals or lowercase ASCII characters.
  /// As expressed by the regular expression: ^(?!goog)a-z?$.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Specifies the state of the AgentPool.
  late final pulumi.Output<String> state;

  /// Creates a new [TransferAgentPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TransferAgentPool]. {@macro pulumi_storage_transfer_agent_pool_transfer_agent_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TransferAgentPool(
    String name, {
    TransferAgentPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:storage/transferAgentPool:TransferAgentPool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    bandwidthLimit = registerOutput<TransferAgentPoolBandwidthLimit?>('bandwidthLimit', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TransferAgentPoolBandwidthLimit.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    state = registerOutput<String>('state');
  }

  /// Gets an existing [TransferAgentPool] resource's state with the given [name] and [id].
  static TransferAgentPool get(
    String name,
    pulumi.Input<String> id, {
    TransferAgentPoolState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return TransferAgentPool._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  TransferAgentPool._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:storage/transferAgentPool:TransferAgentPool',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bandwidthLimit = registerOutput<TransferAgentPoolBandwidthLimit?>('bandwidthLimit', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TransferAgentPoolBandwidthLimit.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
  }

  /// Creates a typed reference to an existing [TransferAgentPool] resource.
  TransferAgentPool.reference(String urn)
    : super(
        'gcp:storage/transferAgentPool:TransferAgentPool',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    bandwidthLimit = registerOutput<TransferAgentPoolBandwidthLimit?>('bandwidthLimit', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TransferAgentPoolBandwidthLimit.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    state = registerOutput<String>('state');
  }
}
