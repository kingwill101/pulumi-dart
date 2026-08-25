import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_args.dart';
import 'deployment_state.dart';
import 'deployment_terraform_blueprint.dart';

/// A group of Google Cloud resources described by a Terraform blueprint.
///
///
/// To get more information about Deployment, see:
///
/// * [API documentation](https://cloud.google.com/infrastructure-manager/docs/reference/rest/v1/projects.locations.deployments)
///
/// ## Example Usage
///
/// ### Config Deployment Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.configdeployment.Deployment("default", {
///     name: "my-deployment",
///     location: "us-central1",
///     serviceAccount: "projects/<no value>/serviceAccounts/my-service-account@my-project.iam.gserviceaccount.com",
///     terraformBlueprint: {
///         gitSource: {
///             repo: "https://github.com/terraform-google-modules/terraform-google-network",
///             directory: "modules/vpc",
///             ref: "main",
///         },
///         inputValues: [
///             {
///                 variableName: "project_id",
///                 inputValue: "<no value>",
///             },
///             {
///                 variableName: "network_name",
///                 inputValue: "my-network",
///             },
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.configdeployment.Deployment("default",
///     name="my-deployment",
///     location="us-central1",
///     service_account="projects/<no value>/serviceAccounts/my-service-account@my-project.iam.gserviceaccount.com",
///     terraform_blueprint={
///         "git_source": {
///             "repo": "https://github.com/terraform-google-modules/terraform-google-network",
///             "directory": "modules/vpc",
///             "ref": "main",
///         },
///         "input_values": [
///             {
///                 "variable_name": "project_id",
///                 "input_value": "<no value>",
///             },
///             {
///                 "variable_name": "network_name",
///                 "input_value": "my-network",
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
///     var @default = new Gcp.ConfigDeployment.Deployment("default", new()
///     {
///         Name = "my-deployment",
///         Location = "us-central1",
///         ServiceAccount = "projects/<no value>/serviceAccounts/my-service-account@my-project.iam.gserviceaccount.com",
///         TerraformBlueprint = new Gcp.ConfigDeployment.Inputs.DeploymentTerraformBlueprintArgs
///         {
///             GitSource = new Gcp.ConfigDeployment.Inputs.DeploymentTerraformBlueprintGitSourceArgs
///             {
///                 Repo = "https://github.com/terraform-google-modules/terraform-google-network",
///                 Directory = "modules/vpc",
///                 Ref = "main",
///             },
///             InputValues = new[]
///             {
///                 new Gcp.ConfigDeployment.Inputs.DeploymentTerraformBlueprintInputValueArgs
///                 {
///                     VariableName = "project_id",
///                     InputValue = "<no value>",
///                 },
///                 new Gcp.ConfigDeployment.Inputs.DeploymentTerraformBlueprintInputValueArgs
///                 {
///                     VariableName = "network_name",
///                     InputValue = "my-network",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/configdeployment"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := configdeployment.NewDeployment(ctx, "default", &configdeployment.DeploymentArgs{
/// 			Name:           pulumi.String("my-deployment"),
/// 			Location:       pulumi.String("us-central1"),
/// 			ServiceAccount: pulumi.String("projects/<no value>/serviceAccounts/my-service-account@my-project.iam.gserviceaccount.com"),
/// 			TerraformBlueprint: &configdeployment.DeploymentTerraformBlueprintArgs{
/// 				GitSource: &configdeployment.DeploymentTerraformBlueprintGitSourceArgs{
/// 					Repo:      pulumi.String("https://github.com/terraform-google-modules/terraform-google-network"),
/// 					Directory: pulumi.String("modules/vpc"),
/// 					Ref:       pulumi.String("main"),
/// 				},
/// 				InputValues: configdeployment.DeploymentTerraformBlueprintInputValueArray{
/// 					&configdeployment.DeploymentTerraformBlueprintInputValueArgs{
/// 						VariableName: pulumi.String("project_id"),
/// 						InputValue:   pulumi.String("<no value>"),
/// 					},
/// 					&configdeployment.DeploymentTerraformBlueprintInputValueArgs{
/// 						VariableName: pulumi.String("network_name"),
/// 						InputValue:   pulumi.String("my-network"),
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
/// resource "gcp_configdeployment_deployment" "default" {
///   name            = "my-deployment"
///   location        = "us-central1"
///   service_account = "projects/<no value>/serviceAccounts/my-service-account@my-project.iam.gserviceaccount.com"
///   terraform_blueprint = {
///     git_source = {
///       repo      = "https://github.com/terraform-google-modules/terraform-google-network"
///       directory = "modules/vpc"
///       ref       = "main"
///     }
///     input_values = [{
///       "variableName" = "project_id"
///       "inputValue"   = "<no value>"
///       }, {
///       "variableName" = "network_name"
///       "inputValue"   = "my-network"
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
/// import com.pulumi.gcp.configdeployment.Deployment;
/// import com.pulumi.gcp.configdeployment.DeploymentArgs;
/// import com.pulumi.gcp.configdeployment.inputs.DeploymentTerraformBlueprintArgs;
/// import com.pulumi.gcp.configdeployment.inputs.DeploymentTerraformBlueprintGitSourceArgs;
/// import com.pulumi.gcp.configdeployment.inputs.DeploymentTerraformBlueprintInputValueArgs;
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
///         var default_ = new Deployment("default", DeploymentArgs.builder()
///             .name("my-deployment")
///             .location("us-central1")
///             .serviceAccount("projects/<no value>/serviceAccounts/my-service-account@my-project.iam.gserviceaccount.com")
///             .terraformBlueprint(DeploymentTerraformBlueprintArgs.builder()
///                 .gitSource(DeploymentTerraformBlueprintGitSourceArgs.builder()
///                     .repo("https://github.com/terraform-google-modules/terraform-google-network")
///                     .directory("modules/vpc")
///                     .ref("main")
///                     .build())
///                 .inputValues(
///                     DeploymentTerraformBlueprintInputValueArgs.builder()
///                         .variableName("project_id")
///                         .inputValue("<no value>")
///                         .build(),
///                     DeploymentTerraformBlueprintInputValueArgs.builder()
///                         .variableName("network_name")
///                         .inputValue("my-network")
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:configdeployment:Deployment
///     properties:
///       name: my-deployment
///       location: us-central1
///       serviceAccount: projects/<no value>/serviceAccounts/my-service-account@my-project.iam.gserviceaccount.com
///       terraformBlueprint:
///         gitSource:
///           repo: https://github.com/terraform-google-modules/terraform-google-network
///           directory: modules/vpc
///           ref: main
///         inputValues:
///           - variableName: project_id
///             inputValue: <no value>
///           - variableName: network_name
///             inputValue: my-network
/// ```
///
///
/// ## Import
///
/// Deployment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/deployments/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, Deployment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:configdeployment/deployment:Deployment default projects/{{project}}/locations/{{location}}/deployments/{{name}}
/// $ pulumi import gcp:configdeployment/deployment:Deployment default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:configdeployment/deployment:Deployment default {{location}}/{{name}}
/// ```
class DeploymentType extends pulumi.CustomResource {
  /// Optional. Arbitrary key-value metadata storage.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;
  /// Location for Cloud Build logs and artifacts.
  late final pulumi.Output<String?> artifactsGcsBucket;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// If true, deletes the deployment and its nested resources.
  late final pulumi.Output<bool?> forceDestroy;
  /// If true, attempts to automatically import resources on 409 conflict.
  late final pulumi.Output<bool?> importExistingResources;
  /// Optional. User-defined metadata for the deployment.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Output only. Revision name most recently applied.
  late final pulumi.Output<String> latestRevision;
  /// The location for the resource
  late final pulumi.Output<String> location;
  /// The user-specified ID of the deployment.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Controls quota checks.
  /// Possible values are: `ENABLED`, `ENFORCED`.
  late final pulumi.Output<String?> quotaValidation;
  /// Required. User-specified Service Account (SA) credentials to be used when actuating resources.
  late final pulumi.Output<String> serviceAccount;
  /// Output only. Current state of the deployment.
  late final pulumi.Output<String> state;
  /// A bundle of HCL files in a GCS bucket or Git repo.
  /// Structure is documented below.
  late final pulumi.Output<DeploymentTerraformBlueprint> terraformBlueprint;
  /// Optional constraint on the Terraform version.
  late final pulumi.Output<String?> tfVersionConstraint;
  /// Custom Cloud Build worker pool resource name.
  late final pulumi.Output<String?> workerPool;

  /// Creates a new [DeploymentType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeploymentType]. {@macro pulumi_configdeployment_deployment_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeploymentType(
    String name, {
    DeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:configdeployment/deployment:Deployment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    artifactsGcsBucket = registerOutput<String?>('artifactsGcsBucket');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    forceDestroy = registerOutput<bool?>('forceDestroy');
    importExistingResources = registerOutput<bool?>('importExistingResources');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    latestRevision = registerOutput<String>('latestRevision');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    quotaValidation = registerOutput<String?>('quotaValidation');
    serviceAccount = registerOutput<String>('serviceAccount');
    state = registerOutput<String>('state');
    terraformBlueprint = registerOutput<DeploymentTerraformBlueprint>('terraformBlueprint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeploymentTerraformBlueprint.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tfVersionConstraint = registerOutput<String?>('tfVersionConstraint');
    workerPool = registerOutput<String?>('workerPool');
  }

  /// Gets an existing [DeploymentType] resource's state with the given [name] and [id].
  static DeploymentType get(
    String name,
    pulumi.Input<String> id, {
    DeploymentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DeploymentType._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DeploymentType._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:configdeployment/deployment:Deployment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    artifactsGcsBucket = registerOutput<String?>('artifactsGcsBucket');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    forceDestroy = registerOutput<bool?>('forceDestroy');
    importExistingResources = registerOutput<bool?>('importExistingResources');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    latestRevision = registerOutput<String>('latestRevision');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    quotaValidation = registerOutput<String?>('quotaValidation');
    serviceAccount = registerOutput<String>('serviceAccount');
    this.state = registerOutput<String>('state');
    terraformBlueprint = registerOutput<DeploymentTerraformBlueprint>('terraformBlueprint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeploymentTerraformBlueprint.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tfVersionConstraint = registerOutput<String?>('tfVersionConstraint');
    workerPool = registerOutput<String?>('workerPool');
  }

  /// Creates a typed reference to an existing [DeploymentType] resource.
  DeploymentType.reference(String urn)
    : super(
        'gcp:configdeployment/deployment:Deployment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    artifactsGcsBucket = registerOutput<String?>('artifactsGcsBucket');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    forceDestroy = registerOutput<bool?>('forceDestroy');
    importExistingResources = registerOutput<bool?>('importExistingResources');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    latestRevision = registerOutput<String>('latestRevision');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    quotaValidation = registerOutput<String?>('quotaValidation');
    serviceAccount = registerOutput<String>('serviceAccount');
    state = registerOutput<String>('state');
    terraformBlueprint = registerOutput<DeploymentTerraformBlueprint>('terraformBlueprint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeploymentTerraformBlueprint.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tfVersionConstraint = registerOutput<String?>('tfVersionConstraint');
    workerPool = registerOutput<String?>('workerPool');
  }
}
