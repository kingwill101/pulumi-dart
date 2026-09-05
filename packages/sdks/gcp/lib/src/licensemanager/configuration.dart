import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_args.dart';
import 'configuration_state.dart';

/// Configuration resource for License Manager
///
///
///
/// ## Example Usage
///
/// ### Licensemanager Configuration Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// // Reference design doc: go/lima-terraform
/// const example_configuration = new gcp.licensemanager.Configuration("example-configuration", {
///     location: "us-central1",
///     configurationId: "example-configuration",
///     product: "Office2021ProfessionalPlus",
///     licenseCount: 10,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// # Reference design doc: go/lima-terraform
/// example_configuration = gcp.licensemanager.Configuration("example-configuration",
///     location="us-central1",
///     configuration_id="example-configuration",
///     product="Office2021ProfessionalPlus",
///     license_count=10)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Reference design doc: go/lima-terraform
///     var example_configuration = new Gcp.LicenseManager.Configuration("example-configuration", new()
///     {
///         Location = "us-central1",
///         ConfigurationId = "example-configuration",
///         Product = "Office2021ProfessionalPlus",
///         LicenseCount = 10,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/licensemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Reference design doc: go/lima-terraform
/// 		_, err := licensemanager.NewConfiguration(ctx, "example-configuration", &licensemanager.ConfigurationArgs{
/// 			Location:        pulumi.String("us-central1"),
/// 			ConfigurationId: pulumi.String("example-configuration"),
/// 			Product:         pulumi.String("Office2021ProfessionalPlus"),
/// 			LicenseCount:    pulumi.Int(10),
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
/// # Reference design doc: go/lima-terraform
/// resource "gcp_licensemanager_configuration" "example-configuration" {
///   location         = "us-central1"
///   configuration_id = "example-configuration"
///   product          = "Office2021ProfessionalPlus"
///   license_count    = 10
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.licensemanager.Configuration;
/// import com.pulumi.gcp.licensemanager.ConfigurationArgs;
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
///         // Reference design doc: go/lima-terraform
///         var example_configuration = new Configuration("example-configuration", ConfigurationArgs.builder()
///             .location("us-central1")
///             .configurationId("example-configuration")
///             .product("Office2021ProfessionalPlus")
///             .licenseCount(10)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Reference design doc: go/lima-terraform
///   example-configuration:
///     type: gcp:licensemanager:Configuration
///     properties:
///       location: us-central1
///       configurationId: example-configuration
///       product: Office2021ProfessionalPlus
///       licenseCount: 10
/// ```
///
///
/// ## Import
///
/// Configuration can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/configurations/{{configuration_id}}`
/// * `{{project}}/{{location}}/{{configuration_id}}`
/// * `{{location}}/{{configuration_id}}`
///
///
/// When using the `pulumi import` command, Configuration can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:licensemanager/configuration:Configuration default projects/{{project}}/locations/{{location}}/configurations/{{configuration_id}}
/// $ pulumi import gcp:licensemanager/configuration:Configuration default {{project}}/{{location}}/{{configuration_id}}
/// $ pulumi import gcp:licensemanager/configuration:Configuration default {{location}}/{{configuration_id}}
/// ```
class Configuration extends pulumi.CustomResource {
  /// Whether the configuration is active. We suggest you deactivate a configuration instead of deleting it, and allow License Manager to manage deletion of the configuration.
  late final pulumi.Output<bool?> active;
  /// Id of the object.
  late final pulumi.Output<String> configurationId;
  /// [Output only] Create time stamp
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Labels as key value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Number of units to bill for. When licensing a product that is billed per-user, this means number of users. When licensing a product that is billed per-pack (e.g. SQL Server), this means the number of packs.
  late final pulumi.Output<int> licenseCount;
  /// The region where the configuration should be created. This region must be the same where the licensed software will run.
  late final pulumi.Output<String> location;
  /// Identifier. name of resource
  late final pulumi.Output<String> name;
  /// Name of the product for which you are setting the license configuration. For supported products see https://docs.cloud.google.com/compute/docs/instances/windows/license-manager#supported-license-products. Available values include Office2021ProfessionalPlus
  late final pulumi.Output<String> product;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// State of the configuration.
  late final pulumi.Output<String> state;
  /// [Output only] Update time stamp
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Configuration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Configuration]. {@macro pulumi_licensemanager_configuration_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Configuration(
    String name, {
    ConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:licensemanager/configuration:Configuration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    active = registerOutput<bool?>('active');
    configurationId = registerOutput<String>('configurationId');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    licenseCount = registerOutput<int>('licenseCount');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    product = registerOutput<String>('product');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Configuration] resource's state with the given [name] and [id].
  static Configuration get(
    String name,
    pulumi.Input<String> id, {
    ConfigurationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Configuration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Configuration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:licensemanager/configuration:Configuration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    active = registerOutput<bool?>('active');
    configurationId = registerOutput<String>('configurationId');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    licenseCount = registerOutput<int>('licenseCount');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    product = registerOutput<String>('product');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    this.state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [Configuration] resource.
  Configuration.reference(String urn)
    : super(
        'gcp:licensemanager/configuration:Configuration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    active = registerOutput<bool?>('active');
    configurationId = registerOutput<String>('configurationId');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    licenseCount = registerOutput<int>('licenseCount');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    product = registerOutput<String>('product');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }
}
