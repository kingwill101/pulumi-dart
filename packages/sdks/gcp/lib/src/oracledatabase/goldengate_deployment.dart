import 'package:pulumi/pulumi.dart' as pulumi;
import 'goldengate_deployment_args.dart';
import 'goldengate_deployment_properties.dart';
import 'goldengate_deployment_state.dart';

/// This resource helps to create a GoldengateDeployment which enables running Oracle GoldenGate in Google Cloud.
///
///
///
/// ## Example Usage
///
/// ### Oracledatabase Goldengate Deployment Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const deployment = new gcp.oracledatabase.GoldengateDeployment("deployment", {
///     goldengateDeploymentId: "my-deployment",
///     displayName: "my-deployment display name",
///     location: "us-east4",
///     project: "my-project",
///     odbSubnet: "projects/my-project/locations/us-east4/odbNetworks/my-network/odbSubnets/my-subnet",
///     properties: {
///         deploymentType: "DATABASE_ORACLE",
///         oggData: {
///             adminUsername: "admin",
///             adminPassword: "123Abpassword!",
///             deployment: "deployment",
///         },
///     },
///     deletionPolicy: "PREVENT",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// deployment = gcp.oracledatabase.GoldengateDeployment("deployment",
///     goldengate_deployment_id="my-deployment",
///     display_name="my-deployment display name",
///     location="us-east4",
///     project="my-project",
///     odb_subnet="projects/my-project/locations/us-east4/odbNetworks/my-network/odbSubnets/my-subnet",
///     properties={
///         "deployment_type": "DATABASE_ORACLE",
///         "ogg_data": {
///             "admin_username": "admin",
///             "admin_password": "123Abpassword!",
///             "deployment": "deployment",
///         },
///     },
///     deletion_policy="PREVENT")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var deployment = new Gcp.OracleDatabase.GoldengateDeployment("deployment", new()
///     {
///         GoldengateDeploymentId = "my-deployment",
///         DisplayName = "my-deployment display name",
///         Location = "us-east4",
///         Project = "my-project",
///         OdbSubnet = "projects/my-project/locations/us-east4/odbNetworks/my-network/odbSubnets/my-subnet",
///         Properties = new Gcp.OracleDatabase.Inputs.GoldengateDeploymentPropertiesArgs
///         {
///             DeploymentType = "DATABASE_ORACLE",
///             OggData = new Gcp.OracleDatabase.Inputs.GoldengateDeploymentPropertiesOggDataArgs
///             {
///                 AdminUsername = "admin",
///                 AdminPassword = "123Abpassword!",
///                 Deployment = "deployment",
///             },
///         },
///         DeletionPolicy = "PREVENT",
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
/// 		_, err := oracledatabase.NewGoldengateDeployment(ctx, "deployment", &oracledatabase.GoldengateDeploymentArgs{
/// 			GoldengateDeploymentId: pulumi.String("my-deployment"),
/// 			DisplayName:            pulumi.String("my-deployment display name"),
/// 			Location:               pulumi.String("us-east4"),
/// 			Project:                pulumi.String("my-project"),
/// 			OdbSubnet:              pulumi.String("projects/my-project/locations/us-east4/odbNetworks/my-network/odbSubnets/my-subnet"),
/// 			Properties: &oracledatabase.GoldengateDeploymentPropertiesArgs{
/// 				DeploymentType: pulumi.String("DATABASE_ORACLE"),
/// 				OggData: &oracledatabase.GoldengateDeploymentPropertiesOggDataArgs{
/// 					AdminUsername: pulumi.String("admin"),
/// 					AdminPassword: pulumi.String("123Abpassword!"),
/// 					Deployment:    pulumi.String("deployment"),
/// 				},
/// 			},
/// 			DeletionPolicy: pulumi.String("PREVENT"),
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
/// resource "gcp_oracledatabase_goldengatedeployment" "deployment" {
///   goldengate_deployment_id = "my-deployment"
///   display_name             = "my-deployment display name"
///   location                 = "us-east4"
///   project                  = "my-project"
///   odb_subnet               = "projects/my-project/locations/us-east4/odbNetworks/my-network/odbSubnets/my-subnet"
///   properties = {
///     deployment_type = "DATABASE_ORACLE"
///     ogg_data = {
///       admin_username = "admin"
///       admin_password = "123Abpassword!"
///       deployment     = "deployment"
///     }
///   }
///   deletion_policy = "PREVENT"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.oracledatabase.GoldengateDeployment;
/// import com.pulumi.gcp.oracledatabase.GoldengateDeploymentArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.GoldengateDeploymentPropertiesArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.GoldengateDeploymentPropertiesOggDataArgs;
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
///         var deployment = new GoldengateDeployment("deployment", GoldengateDeploymentArgs.builder()
///             .goldengateDeploymentId("my-deployment")
///             .displayName("my-deployment display name")
///             .location("us-east4")
///             .project("my-project")
///             .odbSubnet("projects/my-project/locations/us-east4/odbNetworks/my-network/odbSubnets/my-subnet")
///             .properties(GoldengateDeploymentPropertiesArgs.builder()
///                 .deploymentType("DATABASE_ORACLE")
///                 .oggData(GoldengateDeploymentPropertiesOggDataArgs.builder()
///                     .adminUsername("admin")
///                     .adminPassword("123Abpassword!")
///                     .deployment("deployment")
///                     .build())
///                 .build())
///             .deletionPolicy("PREVENT")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   deployment:
///     type: gcp:oracledatabase:GoldengateDeployment
///     properties:
///       goldengateDeploymentId: my-deployment
///       displayName: my-deployment display name
///       location: us-east4
///       project: my-project
///       odbSubnet: projects/my-project/locations/us-east4/odbNetworks/my-network/odbSubnets/my-subnet
///       properties:
///         deploymentType: DATABASE_ORACLE
///         oggData:
///           adminUsername: admin
///           adminPassword: 123Abpassword!
///           deployment: deployment
///       deletionPolicy: PREVENT
/// ```
///
/// ### Oracledatabase Goldengate Deployment Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const deployment = new gcp.oracledatabase.GoldengateDeployment("deployment", {
///     goldengateDeploymentId: "my-deployment",
///     displayName: "my-deployment display name",
///     location: "us-east4",
///     project: "my-project",
///     odbSubnet: "projects/my-project/locations/us-east4/odbNetworks/my-network/odbSubnets/my-subnet",
///     odbNetwork: "projects/my-project/locations/us-east4/odbNetworks/my-network",
///     gcpOracleZone: "us-east4-b-r1",
///     labels: {
///         "label-one": "value-one",
///     },
///     properties: {
///         deploymentType: "DATABASE_ORACLE",
///         cpuCoreCount: 1,
///         isAutoScalingEnabled: false,
///         licenseModel: "LICENSE_INCLUDED",
///         environmentType: "PRODUCTION",
///         description: "This is a test deployment",
///         oggData: {
///             adminUsername: "admin",
///             adminPassword: "123Abpassword!",
///             deployment: "deployment",
///         },
///         maintenanceWindow: {
///             day: "MONDAY",
///             startHour: 23,
///         },
///         maintenanceConfig: {
///             isInterimReleaseAutoUpgradeEnabled: false,
///             interimReleaseUpgradePeriodDays: 0,
///             bundleReleaseUpgradePeriodDays: 1,
///             majorReleaseUpgradePeriodDays: 2,
///             securityPatchUpgradePeriodDays: 1,
///         },
///     },
///     deletionPolicy: "PREVENT",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// deployment = gcp.oracledatabase.GoldengateDeployment("deployment",
///     goldengate_deployment_id="my-deployment",
///     display_name="my-deployment display name",
///     location="us-east4",
///     project="my-project",
///     odb_subnet="projects/my-project/locations/us-east4/odbNetworks/my-network/odbSubnets/my-subnet",
///     odb_network="projects/my-project/locations/us-east4/odbNetworks/my-network",
///     gcp_oracle_zone="us-east4-b-r1",
///     labels={
///         "label-one": "value-one",
///     },
///     properties={
///         "deployment_type": "DATABASE_ORACLE",
///         "cpu_core_count": 1,
///         "is_auto_scaling_enabled": False,
///         "license_model": "LICENSE_INCLUDED",
///         "environment_type": "PRODUCTION",
///         "description": "This is a test deployment",
///         "ogg_data": {
///             "admin_username": "admin",
///             "admin_password": "123Abpassword!",
///             "deployment": "deployment",
///         },
///         "maintenance_window": {
///             "day": "MONDAY",
///             "start_hour": 23,
///         },
///         "maintenance_config": {
///             "is_interim_release_auto_upgrade_enabled": False,
///             "interim_release_upgrade_period_days": 0,
///             "bundle_release_upgrade_period_days": 1,
///             "major_release_upgrade_period_days": 2,
///             "security_patch_upgrade_period_days": 1,
///         },
///     },
///     deletion_policy="PREVENT")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var deployment = new Gcp.OracleDatabase.GoldengateDeployment("deployment", new()
///     {
///         GoldengateDeploymentId = "my-deployment",
///         DisplayName = "my-deployment display name",
///         Location = "us-east4",
///         Project = "my-project",
///         OdbSubnet = "projects/my-project/locations/us-east4/odbNetworks/my-network/odbSubnets/my-subnet",
///         OdbNetwork = "projects/my-project/locations/us-east4/odbNetworks/my-network",
///         GcpOracleZone = "us-east4-b-r1",
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///         Properties = new Gcp.OracleDatabase.Inputs.GoldengateDeploymentPropertiesArgs
///         {
///             DeploymentType = "DATABASE_ORACLE",
///             CpuCoreCount = 1,
///             IsAutoScalingEnabled = false,
///             LicenseModel = "LICENSE_INCLUDED",
///             EnvironmentType = "PRODUCTION",
///             Description = "This is a test deployment",
///             OggData = new Gcp.OracleDatabase.Inputs.GoldengateDeploymentPropertiesOggDataArgs
///             {
///                 AdminUsername = "admin",
///                 AdminPassword = "123Abpassword!",
///                 Deployment = "deployment",
///             },
///             MaintenanceWindow = new Gcp.OracleDatabase.Inputs.GoldengateDeploymentPropertiesMaintenanceWindowArgs
///             {
///                 Day = "MONDAY",
///                 StartHour = 23,
///             },
///             MaintenanceConfig = new Gcp.OracleDatabase.Inputs.GoldengateDeploymentPropertiesMaintenanceConfigArgs
///             {
///                 IsInterimReleaseAutoUpgradeEnabled = false,
///                 InterimReleaseUpgradePeriodDays = 0,
///                 BundleReleaseUpgradePeriodDays = 1,
///                 MajorReleaseUpgradePeriodDays = 2,
///                 SecurityPatchUpgradePeriodDays = 1,
///             },
///         },
///         DeletionPolicy = "PREVENT",
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
/// 		_, err := oracledatabase.NewGoldengateDeployment(ctx, "deployment", &oracledatabase.GoldengateDeploymentArgs{
/// 			GoldengateDeploymentId: pulumi.String("my-deployment"),
/// 			DisplayName:            pulumi.String("my-deployment display name"),
/// 			Location:               pulumi.String("us-east4"),
/// 			Project:                pulumi.String("my-project"),
/// 			OdbSubnet:              pulumi.String("projects/my-project/locations/us-east4/odbNetworks/my-network/odbSubnets/my-subnet"),
/// 			OdbNetwork:             pulumi.String("projects/my-project/locations/us-east4/odbNetworks/my-network"),
/// 			GcpOracleZone:          pulumi.String("us-east4-b-r1"),
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 			Properties: &oracledatabase.GoldengateDeploymentPropertiesArgs{
/// 				DeploymentType:       pulumi.String("DATABASE_ORACLE"),
/// 				CpuCoreCount:         pulumi.Int(1),
/// 				IsAutoScalingEnabled: pulumi.Bool(false),
/// 				LicenseModel:         pulumi.String("LICENSE_INCLUDED"),
/// 				EnvironmentType:      pulumi.String("PRODUCTION"),
/// 				Description:          pulumi.String("This is a test deployment"),
/// 				OggData: &oracledatabase.GoldengateDeploymentPropertiesOggDataArgs{
/// 					AdminUsername: pulumi.String("admin"),
/// 					AdminPassword: pulumi.String("123Abpassword!"),
/// 					Deployment:    pulumi.String("deployment"),
/// 				},
/// 				MaintenanceWindow: &oracledatabase.GoldengateDeploymentPropertiesMaintenanceWindowArgs{
/// 					Day:       pulumi.String("MONDAY"),
/// 					StartHour: pulumi.Int(23),
/// 				},
/// 				MaintenanceConfig: &oracledatabase.GoldengateDeploymentPropertiesMaintenanceConfigArgs{
/// 					IsInterimReleaseAutoUpgradeEnabled: pulumi.Bool(false),
/// 					InterimReleaseUpgradePeriodDays:    pulumi.Int(0),
/// 					BundleReleaseUpgradePeriodDays:     pulumi.Int(1),
/// 					MajorReleaseUpgradePeriodDays:      pulumi.Int(2),
/// 					SecurityPatchUpgradePeriodDays:     pulumi.Int(1),
/// 				},
/// 			},
/// 			DeletionPolicy: pulumi.String("PREVENT"),
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
/// resource "gcp_oracledatabase_goldengatedeployment" "deployment" {
///   goldengate_deployment_id = "my-deployment"
///   display_name             = "my-deployment display name"
///   location                 = "us-east4"
///   project                  = "my-project"
///   odb_subnet               = "projects/my-project/locations/us-east4/odbNetworks/my-network/odbSubnets/my-subnet"
///   odb_network              = "projects/my-project/locations/us-east4/odbNetworks/my-network"
///   gcp_oracle_zone          = "us-east4-b-r1"
///   labels = {
///     "label-one" = "value-one"
///   }
///   properties = {
///     deployment_type         = "DATABASE_ORACLE"
///     cpu_core_count          = 1
///     is_auto_scaling_enabled = false
///     license_model           = "LICENSE_INCLUDED"
///     environment_type        = "PRODUCTION"
///     description             = "This is a test deployment"
///     ogg_data = {
///       admin_username = "admin"
///       admin_password = "123Abpassword!"
///       deployment     = "deployment"
///     }
///     maintenance_window = {
///       day        = "MONDAY"
///       start_hour = 23
///     }
///     maintenance_config = {
///       is_interim_release_auto_upgrade_enabled = false
///       interim_release_upgrade_period_days     = 0
///       bundle_release_upgrade_period_days      = 1
///       major_release_upgrade_period_days       = 2
///       security_patch_upgrade_period_days      = 1
///     }
///   }
///   deletion_policy = "PREVENT"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.oracledatabase.GoldengateDeployment;
/// import com.pulumi.gcp.oracledatabase.GoldengateDeploymentArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.GoldengateDeploymentPropertiesArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.GoldengateDeploymentPropertiesOggDataArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.GoldengateDeploymentPropertiesMaintenanceWindowArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.GoldengateDeploymentPropertiesMaintenanceConfigArgs;
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
///         var deployment = new GoldengateDeployment("deployment", GoldengateDeploymentArgs.builder()
///             .goldengateDeploymentId("my-deployment")
///             .displayName("my-deployment display name")
///             .location("us-east4")
///             .project("my-project")
///             .odbSubnet("projects/my-project/locations/us-east4/odbNetworks/my-network/odbSubnets/my-subnet")
///             .odbNetwork("projects/my-project/locations/us-east4/odbNetworks/my-network")
///             .gcpOracleZone("us-east4-b-r1")
///             .labels(Map.of("label-one", "value-one"))
///             .properties(GoldengateDeploymentPropertiesArgs.builder()
///                 .deploymentType("DATABASE_ORACLE")
///                 .cpuCoreCount(1)
///                 .isAutoScalingEnabled(false)
///                 .licenseModel("LICENSE_INCLUDED")
///                 .environmentType("PRODUCTION")
///                 .description("This is a test deployment")
///                 .oggData(GoldengateDeploymentPropertiesOggDataArgs.builder()
///                     .adminUsername("admin")
///                     .adminPassword("123Abpassword!")
///                     .deployment("deployment")
///                     .build())
///                 .maintenanceWindow(GoldengateDeploymentPropertiesMaintenanceWindowArgs.builder()
///                     .day("MONDAY")
///                     .startHour(23)
///                     .build())
///                 .maintenanceConfig(GoldengateDeploymentPropertiesMaintenanceConfigArgs.builder()
///                     .isInterimReleaseAutoUpgradeEnabled(false)
///                     .interimReleaseUpgradePeriodDays(0)
///                     .bundleReleaseUpgradePeriodDays(1)
///                     .majorReleaseUpgradePeriodDays(2)
///                     .securityPatchUpgradePeriodDays(1)
///                     .build())
///                 .build())
///             .deletionPolicy("PREVENT")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   deployment:
///     type: gcp:oracledatabase:GoldengateDeployment
///     properties:
///       goldengateDeploymentId: my-deployment
///       displayName: my-deployment display name
///       location: us-east4
///       project: my-project
///       odbSubnet: projects/my-project/locations/us-east4/odbNetworks/my-network/odbSubnets/my-subnet
///       odbNetwork: projects/my-project/locations/us-east4/odbNetworks/my-network
///       gcpOracleZone: us-east4-b-r1
///       labels:
///         label-one: value-one
///       properties:
///         deploymentType: DATABASE_ORACLE
///         cpuCoreCount: 1
///         isAutoScalingEnabled: false
///         licenseModel: LICENSE_INCLUDED
///         environmentType: PRODUCTION
///         description: This is a test deployment
///         oggData:
///           adminUsername: admin
///           adminPassword: 123Abpassword!
///           deployment: deployment
///         maintenanceWindow:
///           day: MONDAY
///           startHour: 23
///         maintenanceConfig:
///           isInterimReleaseAutoUpgradeEnabled: false
///           interimReleaseUpgradePeriodDays: 0
///           bundleReleaseUpgradePeriodDays: 1
///           majorReleaseUpgradePeriodDays: 2
///           securityPatchUpgradePeriodDays: 1
///       deletionPolicy: PREVENT
/// ```
///
///
/// ## Import
///
/// GoldengateDeployment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/goldengateDeployments/{{goldengate_deployment_id}}`
/// * `{{project}}/{{location}}/{{goldengate_deployment_id}}`
/// * `{{location}}/{{goldengate_deployment_id}}`
///
///
/// When using the `pulumi import` command, GoldengateDeployment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:oracledatabase/goldengateDeployment:GoldengateDeployment default projects/{{project}}/locations/{{location}}/goldengateDeployments/{{goldengate_deployment_id}}
/// $ pulumi import gcp:oracledatabase/goldengateDeployment:GoldengateDeployment default {{project}}/{{location}}/{{goldengate_deployment_id}}
/// $ pulumi import gcp:oracledatabase/goldengateDeployment:GoldengateDeployment default {{location}}/{{goldengate_deployment_id}}
/// ```
class GoldengateDeployment extends pulumi.CustomResource {
  /// The date and time that the GoldengateDeployment was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to PREVENT.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The display name for the GoldengateDeployment.
  late final pulumi.Output<String> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The ID of the subscription entitlement associated with the
  /// GoldengateDeployment
  late final pulumi.Output<String> entitlementId;
  /// The GCP Oracle zone where Oracle GoldengateDeployment is hosted.
  /// Example: us-east4-b-r2.
  /// If not specified, the system will pick a zone based on availability.
  late final pulumi.Output<String> gcpOracleZone;
  /// The ID of the GoldengateDeployment to create. This value is
  /// restricted to (^a-z?$) and must be a maximum of
  /// 63 characters in length. The value must start with a letter and end with a
  /// letter or a number.
  late final pulumi.Output<String> goldengateDeploymentId;
  /// The labels or tags associated with the GoldengateDeployment.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// Identifier. The name of the GoldengateDeployment resource in the following format:
  /// projects/{project}/locations/{region}/goldengateDeployments/{goldengate_deployment}
  late final pulumi.Output<String> name;
  /// HTTPS link to OCI resources exposed to Customer via UI Interface.
  late final pulumi.Output<String> ociUrl;
  /// The name of the OdbNetwork associated with the GoldengateDeployment.
  late final pulumi.Output<String> odbNetwork;
  /// The name of the OdbSubnet associated with the GoldengateDeployment for IP
  /// allocation.
  late final pulumi.Output<String> odbSubnet;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Properties of GoldengateDeployment.
  /// Structure is documented below.
  late final pulumi.Output<GoldengateDeploymentProperties> properties;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Creates a new [GoldengateDeployment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GoldengateDeployment]. {@macro pulumi_oracledatabase_goldengate_deployment_goldengate_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GoldengateDeployment(
    String name, {
    GoldengateDeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:oracledatabase/goldengateDeployment:GoldengateDeployment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    entitlementId = registerOutput<String>('entitlementId');
    gcpOracleZone = registerOutput<String>('gcpOracleZone');
    goldengateDeploymentId = registerOutput<String>('goldengateDeploymentId');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    ociUrl = registerOutput<String>('ociUrl');
    odbNetwork = registerOutput<String>('odbNetwork');
    odbSubnet = registerOutput<String>('odbSubnet');
    project = registerOutput<String>('project');
    properties = registerOutput<GoldengateDeploymentProperties>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GoldengateDeploymentProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
  }

  /// Gets an existing [GoldengateDeployment] resource's state with the given [name] and [id].
  static GoldengateDeployment get(
    String name,
    pulumi.Input<String> id, {
    GoldengateDeploymentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return GoldengateDeployment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  GoldengateDeployment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:oracledatabase/goldengateDeployment:GoldengateDeployment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    entitlementId = registerOutput<String>('entitlementId');
    gcpOracleZone = registerOutput<String>('gcpOracleZone');
    goldengateDeploymentId = registerOutput<String>('goldengateDeploymentId');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    ociUrl = registerOutput<String>('ociUrl');
    odbNetwork = registerOutput<String>('odbNetwork');
    odbSubnet = registerOutput<String>('odbSubnet');
    project = registerOutput<String>('project');
    properties = registerOutput<GoldengateDeploymentProperties>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GoldengateDeploymentProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
  }

  /// Creates a typed reference to an existing [GoldengateDeployment] resource.
  GoldengateDeployment.reference(String urn)
    : super(
        'gcp:oracledatabase/goldengateDeployment:GoldengateDeployment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    entitlementId = registerOutput<String>('entitlementId');
    gcpOracleZone = registerOutput<String>('gcpOracleZone');
    goldengateDeploymentId = registerOutput<String>('goldengateDeploymentId');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    ociUrl = registerOutput<String>('ociUrl');
    odbNetwork = registerOutput<String>('odbNetwork');
    odbSubnet = registerOutput<String>('odbSubnet');
    project = registerOutput<String>('project');
    properties = registerOutput<GoldengateDeploymentProperties>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GoldengateDeploymentProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
  }
}
