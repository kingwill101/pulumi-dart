import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_args.dart';
import 'workspace_settings.dart';
import 'workspace_state.dart';

/// A Data Mapper workspace is used to configure Data Mapper access, permissions and data sources for mapping clinical patient data to the FHIR standard.
///
///
/// To get more information about Workspace, see:
///
/// * [API documentation](https://cloud.google.com/healthcare-api/healthcare-data-engine/docs/reference/rest/v1/projects.locations.datasets.dataMapperWorkspaces)
/// * How-to Guides
/// * [Create and manage Data Mapper workspaces ](https://cloud.google.com/healthcare-api/healthcare-data-engine/docs/manage-workspaces)
///
/// ## Example Usage
///
/// ### Healthcare Workspace Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataset = new gcp.healthcare.Dataset("dataset", {
///     name: "example-dataset",
///     location: "us-central1",
/// });
/// const _default = new gcp.healthcare.Workspace("default", {
///     name: "example-dm-workspace",
///     dataset: dataset.id,
///     settings: {
///         dataProjectIds: ["example-data-source-project-id"],
///     },
///     labels: {
///         label1: "labelvalue1",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dataset = gcp.healthcare.Dataset("dataset",
///     name="example-dataset",
///     location="us-central1")
/// default = gcp.healthcare.Workspace("default",
///     name="example-dm-workspace",
///     dataset=dataset.id,
///     settings={
///         "data_project_ids": ["example-data-source-project-id"],
///     },
///     labels={
///         "label1": "labelvalue1",
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
///     var dataset = new Gcp.Healthcare.Dataset("dataset", new()
///     {
///         Name = "example-dataset",
///         Location = "us-central1",
///     });
///
///     var @default = new Gcp.Healthcare.Workspace("default", new()
///     {
///         Name = "example-dm-workspace",
///         Dataset = dataset.Id,
///         Settings = new Gcp.Healthcare.Inputs.WorkspaceSettingsArgs
///         {
///             DataProjectIds = new[]
///             {
///                 "example-data-source-project-id",
///             },
///         },
///         Labels =
///         {
///             { "label1", "labelvalue1" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/healthcare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		dataset, err := healthcare.NewDataset(ctx, "dataset", &healthcare.DatasetArgs{
/// 			Name:     pulumi.String("example-dataset"),
/// 			Location: pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = healthcare.NewWorkspace(ctx, "default", &healthcare.WorkspaceArgs{
/// 			Name:    pulumi.String("example-dm-workspace"),
/// 			Dataset: dataset.ID().ToIDOutput().ToStringOutput(),
/// 			Settings: &healthcare.WorkspaceSettingsArgs{
/// 				DataProjectIds: pulumi.StringArray{
/// 					pulumi.String("example-data-source-project-id"),
/// 				},
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"label1": pulumi.String("labelvalue1"),
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
/// resource "gcp_healthcare_workspace" "default" {
///   name    = "example-dm-workspace"
///   dataset = gcp_healthcare_dataset.dataset.id
///   settings = {
///     data_project_ids = ["example-data-source-project-id"]
///   }
///   labels = {
///     "label1" = "labelvalue1"
///   }
/// }
/// resource "gcp_healthcare_dataset" "dataset" {
///   name     = "example-dataset"
///   location = "us-central1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.healthcare.Dataset;
/// import com.pulumi.gcp.healthcare.DatasetArgs;
/// import com.pulumi.gcp.healthcare.Workspace;
/// import com.pulumi.gcp.healthcare.WorkspaceArgs;
/// import com.pulumi.gcp.healthcare.inputs.WorkspaceSettingsArgs;
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
///         var dataset = new Dataset("dataset", DatasetArgs.builder()
///             .name("example-dataset")
///             .location("us-central1")
///             .build());
///
///         var default_ = new Workspace("default", WorkspaceArgs.builder()
///             .name("example-dm-workspace")
///             .dataset(dataset.id())
///             .settings(WorkspaceSettingsArgs.builder()
///                 .dataProjectIds("example-data-source-project-id")
///                 .build())
///             .labels(Map.of("label1", "labelvalue1"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:healthcare:Workspace
///     properties:
///       name: example-dm-workspace
///       dataset: ${dataset.id}
///       settings:
///         dataProjectIds:
///           - example-data-source-project-id
///       labels:
///         label1: labelvalue1
///   dataset:
///     type: gcp:healthcare:Dataset
///     properties:
///       name: example-dataset
///       location: us-central1
/// ```
///
///
/// ## Import
///
/// Workspace can be imported using any of these accepted formats:
///
/// * `{{dataset}}/dataMapperWorkspaces/{{name}}`
///
///
/// When using the `pulumi import` command, Workspace can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:healthcare/workspace:Workspace default {{dataset}}/dataMapperWorkspaces/{{name}}
/// ```
class Workspace extends pulumi.CustomResource {
  /// Identifies the dataset addressed by this request. Must be in the format
  /// 'projects/{project}/locations/{location}/datasets/{dataset}'
  late final pulumi.Output<String> dataset;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The user labels. An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The name of the workspace, in the format 'projects/{projectId}/locations/{location}/datasets/{datasetId}/dataMapperWorkspaces/{workspaceId}'
  late final pulumi.Output<String> name;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Settings associated with this workspace.
  /// Structure is documented below.
  late final pulumi.Output<WorkspaceSettings> settings;

  /// Creates a new [Workspace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Workspace]. {@macro pulumi_healthcare_workspace_workspace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Workspace(
    String name, {
    WorkspaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:healthcare/workspace:Workspace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    dataset = registerOutput<String>('dataset');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    settings = registerOutput<WorkspaceSettings>('settings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkspaceSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Workspace] resource's state with the given [name] and [id].
  static Workspace get(
    String name,
    pulumi.Input<String> id, {
    WorkspaceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Workspace._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Workspace._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:healthcare/workspace:Workspace',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dataset = registerOutput<String>('dataset');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    settings = registerOutput<WorkspaceSettings>('settings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkspaceSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [Workspace] resource.
  Workspace.reference(String urn)
    : super(
        'gcp:healthcare/workspace:Workspace',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    dataset = registerOutput<String>('dataset');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    settings = registerOutput<WorkspaceSettings>('settings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkspaceSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
