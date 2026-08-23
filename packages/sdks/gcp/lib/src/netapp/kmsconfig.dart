import 'package:pulumi/pulumi.dart' as pulumi;
import 'kmsconfig_args.dart';
import 'kmsconfig_state.dart';

/// NetApp Volumes always encrypts your data at rest using volume-specific keys.
///
/// A CMEK policy (customer-managed encryption key) warps such volume-specific keys in a key stored in Cloud Key Management Service (KMS).
///
///
/// To get more information about kmsconfig, see:
///
/// * [API documentation](https://cloud.google.com/netapp/volumes/docs/reference/rest/v1/projects.locations.kmsConfigs)
/// * How-to Guides
/// * [Documentation](https://cloud.google.com/netapp/volumes/docs/configure-and-use/cmek/cmek-overview)
///
/// ## Example Usage
///
/// ### Kms Config Create
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const kmsConfig = new gcp.netapp.Kmsconfig("kmsConfig", {
///     name: "kms-test",
///     description: "this is a test description",
///     cryptoKeyName: "crypto-name",
///     location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// kms_config = gcp.netapp.Kmsconfig("kmsConfig",
///     name="kms-test",
///     description="this is a test description",
///     crypto_key_name="crypto-name",
///     location="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var kmsConfig = new Gcp.Netapp.Kmsconfig("kmsConfig", new()
///     {
///         Name = "kms-test",
///         Description = "this is a test description",
///         CryptoKeyName = "crypto-name",
///         Location = "us-central1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/netapp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := netapp.NewKmsconfig(ctx, "kmsConfig", &netapp.KmsconfigArgs{
/// 			Name:          pulumi.String("kms-test"),
/// 			Description:   pulumi.String("this is a test description"),
/// 			CryptoKeyName: pulumi.String("crypto-name"),
/// 			Location:      pulumi.String("us-central1"),
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
/// resource "gcp_netapp_kmsconfig" "kmsConfig" {
///   name            = "kms-test"
///   description     = "this is a test description"
///   crypto_key_name = "crypto-name"
///   location        = "us-central1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.netapp.Kmsconfig;
/// import com.pulumi.gcp.netapp.KmsconfigArgs;
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
///         var kmsConfig = new Kmsconfig("kmsConfig", KmsconfigArgs.builder()
///             .name("kms-test")
///             .description("this is a test description")
///             .cryptoKeyName("crypto-name")
///             .location("us-central1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   kmsConfig:
///     type: gcp:netapp:Kmsconfig
///     properties:
///       name: kms-test
///       description: this is a test description
///       cryptoKeyName: crypto-name
///       location: us-central1
/// ```
///
///
/// ## Import
///
/// kmsconfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/kmsConfigs/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, kmsconfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:netapp/kmsconfig:Kmsconfig default projects/{{project}}/locations/{{location}}/kmsConfigs/{{name}}
/// $ pulumi import gcp:netapp/kmsconfig:Kmsconfig default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:netapp/kmsconfig:Kmsconfig default {{location}}/{{name}}
/// ```
class Kmsconfig extends pulumi.CustomResource {
  /// Resource name of the KMS key to use. Only regional keys are supported. Format: `projects/{{project}}/locations/{{location}}/keyRings/{{key_ring}}/cryptoKeys/{{key}}`.
  late final pulumi.Output<String> cryptoKeyName;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Description for the CMEK policy.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Access to the key needs to be granted. The instructions contain gcloud commands to run to grant access.
  /// To make the policy work, a CMEK policy check is required, which verifies key access.
  late final pulumi.Output<String> instructions;
  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Name of the policy location. CMEK policies apply to the whole region.
  late final pulumi.Output<String> location;
  /// Name of the CMEK policy.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The Service account which needs to have access to the  provided KMS key.
  late final pulumi.Output<String> serviceAccount;

  /// Creates a new [Kmsconfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Kmsconfig]. {@macro pulumi_netapp_kmsconfig_kmsconfig_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Kmsconfig(
    String name, {
    KmsconfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:netapp/kmsconfig:Kmsconfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cryptoKeyName = registerOutput<String>('cryptoKeyName');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    instructions = registerOutput<String>('instructions');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    serviceAccount = registerOutput<String>('serviceAccount');
  }

  /// Gets an existing [Kmsconfig] resource's state with the given [name] and [id].
  static Kmsconfig get(
    String name,
    pulumi.Input<String> id, {
    KmsconfigState? state,
  }) {
    return Kmsconfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Kmsconfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:netapp/kmsconfig:Kmsconfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cryptoKeyName = registerOutput<String>('cryptoKeyName');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    instructions = registerOutput<String>('instructions');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    serviceAccount = registerOutput<String>('serviceAccount');
  }
}
