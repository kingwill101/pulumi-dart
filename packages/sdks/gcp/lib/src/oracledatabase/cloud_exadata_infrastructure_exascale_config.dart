import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_exadata_infrastructure_exascale_config_args.dart';
import 'cloud_exadata_infrastructure_exascale_config_state.dart';

/// A resource to configure Exascale storage on an Oracle Cloud Exadata Infrastructure.
///
/// &gt; **Note:** Oracle Database @ Google Cloud does not support deconfiguring Exascale storage on an Exadata Infrastructure.
/// Deleting this resource from Terraform state will only remove it from Terraform management; it will not delete or reset the Exascale configuration on the actual Exadata Infrastructure.
///
///
///
/// ## Example Usage
///
/// ### Oracledatabase Cloud Exadata Infrastructure Exascale Config Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const infra = new gcp.oracledatabase.CloudExadataInfrastructure("infra", {
///     cloudExadataInfrastructureId: "my-infra",
///     displayName: "my-infra displayname",
///     location: "us-east4",
///     project: "my-project",
///     properties: {
///         shape: "Exadata.X9M",
///         computeCount: 2,
///         storageCount: 3,
///     },
///     deletionProtection: true,
/// });
/// const myExascaleConfig = new gcp.oracledatabase.CloudExadataInfrastructureExascaleConfig("my_exascale_config", {
///     cloudExadataInfrastructure: infra.cloudExadataInfrastructureId,
///     location: "us-east4",
///     project: "my-project",
///     totalStorageSizeGb: 10240,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// infra = gcp.oracledatabase.CloudExadataInfrastructure("infra",
///     cloud_exadata_infrastructure_id="my-infra",
///     display_name="my-infra displayname",
///     location="us-east4",
///     project="my-project",
///     properties={
///         "shape": "Exadata.X9M",
///         "compute_count": 2,
///         "storage_count": 3,
///     },
///     deletion_protection=True)
/// my_exascale_config = gcp.oracledatabase.CloudExadataInfrastructureExascaleConfig("my_exascale_config",
///     cloud_exadata_infrastructure=infra.cloud_exadata_infrastructure_id,
///     location="us-east4",
///     project="my-project",
///     total_storage_size_gb=10240)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var infra = new Gcp.OracleDatabase.CloudExadataInfrastructure("infra", new()
///     {
///         CloudExadataInfrastructureId = "my-infra",
///         DisplayName = "my-infra displayname",
///         Location = "us-east4",
///         Project = "my-project",
///         Properties = new Gcp.OracleDatabase.Inputs.CloudExadataInfrastructurePropertiesArgs
///         {
///             Shape = "Exadata.X9M",
///             ComputeCount = 2,
///             StorageCount = 3,
///         },
///         DeletionProtection = true,
///     });
///
///     var myExascaleConfig = new Gcp.OracleDatabase.CloudExadataInfrastructureExascaleConfig("my_exascale_config", new()
///     {
///         CloudExadataInfrastructure = infra.CloudExadataInfrastructureId,
///         Location = "us-east4",
///         Project = "my-project",
///         TotalStorageSizeGb = 10240,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/oracledatabase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		infra, err := oracledatabase.NewCloudExadataInfrastructure(ctx, "infra", &oracledatabase.CloudExadataInfrastructureArgs{
/// 			CloudExadataInfrastructureId: pulumi.String("my-infra"),
/// 			DisplayName:                  pulumi.String("my-infra displayname"),
/// 			Location:                     pulumi.String("us-east4"),
/// 			Project:                      pulumi.String("my-project"),
/// 			Properties: &oracledatabase.CloudExadataInfrastructurePropertiesArgs{
/// 				Shape:        pulumi.String("Exadata.X9M"),
/// 				ComputeCount: pulumi.Int(2),
/// 				StorageCount: pulumi.Int(3),
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oracledatabase.NewCloudExadataInfrastructureExascaleConfig(ctx, "my_exascale_config", &oracledatabase.CloudExadataInfrastructureExascaleConfigArgs{
/// 			CloudExadataInfrastructure: infra.CloudExadataInfrastructureId,
/// 			Location:                   pulumi.String("us-east4"),
/// 			Project:                    pulumi.String("my-project"),
/// 			TotalStorageSizeGb:         pulumi.Int(10240),
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
/// resource "gcp_oracledatabase_cloudexadatainfrastructure" "infra" {
///   cloud_exadata_infrastructure_id = "my-infra"
///   display_name                    = "my-infra displayname"
///   location                        = "us-east4"
///   project                         = "my-project"
///   properties = {
///     shape         = "Exadata.X9M"
///     compute_count = "2"
///     storage_count = "3"
///   }
///   deletion_protection = "true"
/// }
/// resource "gcp_oracledatabase_cloudexadatainfrastructureexascaleconfig" "my_exascale_config" {
///   cloud_exadata_infrastructure = gcp_oracledatabase_cloudexadatainfrastructure.infra.cloud_exadata_infrastructure_id
///   location                     = "us-east4"
///   project                      = "my-project"
///   total_storage_size_gb        = 10240
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.oracledatabase.CloudExadataInfrastructure;
/// import com.pulumi.gcp.oracledatabase.CloudExadataInfrastructureArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.CloudExadataInfrastructurePropertiesArgs;
/// import com.pulumi.gcp.oracledatabase.CloudExadataInfrastructureExascaleConfig;
/// import com.pulumi.gcp.oracledatabase.CloudExadataInfrastructureExascaleConfigArgs;
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
///         var infra = new CloudExadataInfrastructure("infra", CloudExadataInfrastructureArgs.builder()
///             .cloudExadataInfrastructureId("my-infra")
///             .displayName("my-infra displayname")
///             .location("us-east4")
///             .project("my-project")
///             .properties(CloudExadataInfrastructurePropertiesArgs.builder()
///                 .shape("Exadata.X9M")
///                 .computeCount(2)
///                 .storageCount(3)
///                 .build())
///             .deletionProtection(true)
///             .build());
///
///         var myExascaleConfig = new CloudExadataInfrastructureExascaleConfig("myExascaleConfig", CloudExadataInfrastructureExascaleConfigArgs.builder()
///             .cloudExadataInfrastructure(infra.cloudExadataInfrastructureId())
///             .location("us-east4")
///             .project("my-project")
///             .totalStorageSizeGb(10240)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   infra:
///     type: gcp:oracledatabase:CloudExadataInfrastructure
///     properties:
///       cloudExadataInfrastructureId: my-infra
///       displayName: my-infra displayname
///       location: us-east4
///       project: my-project
///       properties:
///         shape: Exadata.X9M
///         computeCount: '2'
///         storageCount: '3'
///       deletionProtection: 'true'
///   myExascaleConfig:
///     type: gcp:oracledatabase:CloudExadataInfrastructureExascaleConfig
///     name: my_exascale_config
///     properties:
///       cloudExadataInfrastructure: ${infra.cloudExadataInfrastructureId}
///       location: us-east4
///       project: my-project
///       totalStorageSizeGb: 10240
/// ```
///
///
/// ## Import
///
/// CloudExadataInfrastructureExascaleConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/cloudExadataInfrastructures/{{cloud_exadata_infrastructure}}`
/// * `{{project}}/{{location}}/{{cloud_exadata_infrastructure}}`
/// * `{{location}}/{{cloud_exadata_infrastructure}}`
///
///
/// When using the `pulumi import` command, CloudExadataInfrastructureExascaleConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:oracledatabase/cloudExadataInfrastructureExascaleConfig:CloudExadataInfrastructureExascaleConfig default projects/{{project}}/locations/{{location}}/cloudExadataInfrastructures/{{cloud_exadata_infrastructure}}
/// $ pulumi import gcp:oracledatabase/cloudExadataInfrastructureExascaleConfig:CloudExadataInfrastructureExascaleConfig default {{project}}/{{location}}/{{cloud_exadata_infrastructure}}
/// $ pulumi import gcp:oracledatabase/cloudExadataInfrastructureExascaleConfig:CloudExadataInfrastructureExascaleConfig default {{location}}/{{cloud_exadata_infrastructure}}
/// ```
class CloudExadataInfrastructureExascaleConfig extends pulumi.CustomResource {
  /// A reference to CloudExadataInfrastructure resource
  late final pulumi.Output<String> cloudExadataInfrastructure;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// (Required)
  late final pulumi.Output<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The total storage to be allocated to Exascale in GBs.
  late final pulumi.Output<int> totalStorageSizeGb;

  /// Creates a new [CloudExadataInfrastructureExascaleConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CloudExadataInfrastructureExascaleConfig]. {@macro pulumi_oracledatabase_cloud_exadata_infrastructure_exascale_config_cloud_exadata_infrastructure_exascale_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CloudExadataInfrastructureExascaleConfig(
    String name, {
    CloudExadataInfrastructureExascaleConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:oracledatabase/cloudExadataInfrastructureExascaleConfig:CloudExadataInfrastructureExascaleConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    cloudExadataInfrastructure = registerOutput<String>('cloudExadataInfrastructure');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    location = registerOutput<String>('location');
    project = registerOutput<String>('project');
    totalStorageSizeGb = registerOutput<int>('totalStorageSizeGb');
  }

  /// Gets an existing [CloudExadataInfrastructureExascaleConfig] resource's state with the given [name] and [id].
  static CloudExadataInfrastructureExascaleConfig get(
    String name,
    pulumi.Input<String> id, {
    CloudExadataInfrastructureExascaleConfigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CloudExadataInfrastructureExascaleConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CloudExadataInfrastructureExascaleConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:oracledatabase/cloudExadataInfrastructureExascaleConfig:CloudExadataInfrastructureExascaleConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cloudExadataInfrastructure = registerOutput<String>('cloudExadataInfrastructure');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    location = registerOutput<String>('location');
    project = registerOutput<String>('project');
    totalStorageSizeGb = registerOutput<int>('totalStorageSizeGb');
  }

  /// Creates a typed reference to an existing [CloudExadataInfrastructureExascaleConfig] resource.
  CloudExadataInfrastructureExascaleConfig.reference(String urn)
    : super(
        'gcp:oracledatabase/cloudExadataInfrastructureExascaleConfig:CloudExadataInfrastructureExascaleConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    cloudExadataInfrastructure = registerOutput<String>('cloudExadataInfrastructure');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    location = registerOutput<String>('location');
    project = registerOutput<String>('project');
    totalStorageSizeGb = registerOutput<int>('totalStorageSizeGb');
  }
}
