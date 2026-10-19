import 'package:pulumi/pulumi.dart' as pulumi;
import 'regional_parameter_args.dart';
import 'regional_parameter_policy_member.dart';
import 'regional_parameter_state.dart';

/// A Regional Parameter is a configuration value stored in a specific region
/// through Parameter Manager. Regional parameters support labels, encryption
/// via Cloud KMS, and resource manager tags for fine-grained access control,
/// organization, and regional compliance.
///
///
/// To get more information about RegionalParameter, see:
///
/// * [API documentation](https://cloud.google.com/secret-manager/parameter-manager/docs/reference/rest/v1/projects.locations.parameters)
/// * How-to Guides
/// * [Work with parameter tags](https://docs.cloud.google.com/secret-manager/parameter-manager/docs/create-and-manage-tags)
///
/// ## Example Usage
///
/// ### Regional Parameter Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const regional_parameter_basic = new gcp.parametermanager.RegionalParameter("regional-parameter-basic", {
///     parameterId: "regional_parameter",
///     location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// regional_parameter_basic = gcp.parametermanager.RegionalParameter("regional-parameter-basic",
///     parameter_id="regional_parameter",
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
///     var regional_parameter_basic = new Gcp.ParameterManager.RegionalParameter("regional-parameter-basic", new()
///     {
///         ParameterId = "regional_parameter",
///         Location = "us-central1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/parametermanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := parametermanager.NewRegionalParameter(ctx, "regional-parameter-basic", &parametermanager.RegionalParameterArgs{
/// 			ParameterId: pulumi.String("regional_parameter"),
/// 			Location:    pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_parametermanager_regional_parameter" "regional-parameter-basic" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   parameter_id = "regional_parameter"
///   location     = "us-central1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.parametermanager.RegionalParameter;
/// import com.pulumi.gcp.parametermanager.RegionalParameterArgs;
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
///         var regional_parameter_basic = new RegionalParameter("regional-parameter-basic", RegionalParameterArgs.builder()
///             .parameterId("regional_parameter")
///             .location("us-central1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   regional-parameter-basic:
///     type: gcp:parametermanager:RegionalParameter
///     properties:
///       parameterId: regional_parameter
///       location: us-central1
/// ```
///
/// ### Regional Parameter With Format
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const regional_parameter_with_format = new gcp.parametermanager.RegionalParameter("regional-parameter-with-format", {
///     parameterId: "regional_parameter",
///     location: "us-central1",
///     format: "JSON",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// regional_parameter_with_format = gcp.parametermanager.RegionalParameter("regional-parameter-with-format",
///     parameter_id="regional_parameter",
///     location="us-central1",
///     format="JSON")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var regional_parameter_with_format = new Gcp.ParameterManager.RegionalParameter("regional-parameter-with-format", new()
///     {
///         ParameterId = "regional_parameter",
///         Location = "us-central1",
///         Format = "JSON",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/parametermanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := parametermanager.NewRegionalParameter(ctx, "regional-parameter-with-format", &parametermanager.RegionalParameterArgs{
/// 			ParameterId: pulumi.String("regional_parameter"),
/// 			Location:    pulumi.String("us-central1"),
/// 			Format:      pulumi.String("JSON"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_parametermanager_regional_parameter" "regional-parameter-with-format" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   parameter_id = "regional_parameter"
///   location     = "us-central1"
///   format       = "JSON"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.parametermanager.RegionalParameter;
/// import com.pulumi.gcp.parametermanager.RegionalParameterArgs;
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
///         var regional_parameter_with_format = new RegionalParameter("regional-parameter-with-format", RegionalParameterArgs.builder()
///             .parameterId("regional_parameter")
///             .location("us-central1")
///             .format("JSON")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   regional-parameter-with-format:
///     type: gcp:parametermanager:RegionalParameter
///     properties:
///       parameterId: regional_parameter
///       location: us-central1
///       format: JSON
/// ```
///
/// ### Regional Parameter With Labels
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const regional_parameter_with_labels = new gcp.parametermanager.RegionalParameter("regional-parameter-with-labels", {
///     parameterId: "regional_parameter",
///     location: "us-central1",
///     labels: {
///         key1: "val1",
///         key2: "val2",
///         key3: "val3",
///         key4: "val4",
///         key5: "val5",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// regional_parameter_with_labels = gcp.parametermanager.RegionalParameter("regional-parameter-with-labels",
///     parameter_id="regional_parameter",
///     location="us-central1",
///     labels={
///         "key1": "val1",
///         "key2": "val2",
///         "key3": "val3",
///         "key4": "val4",
///         "key5": "val5",
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
///     var regional_parameter_with_labels = new Gcp.ParameterManager.RegionalParameter("regional-parameter-with-labels", new()
///     {
///         ParameterId = "regional_parameter",
///         Location = "us-central1",
///         Labels =
///         {
///             { "key1", "val1" },
///             { "key2", "val2" },
///             { "key3", "val3" },
///             { "key4", "val4" },
///             { "key5", "val5" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/parametermanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := parametermanager.NewRegionalParameter(ctx, "regional-parameter-with-labels", &parametermanager.RegionalParameterArgs{
/// 			ParameterId: pulumi.String("regional_parameter"),
/// 			Location:    pulumi.String("us-central1"),
/// 			Labels: pulumi.StringMap{
/// 				"key1": pulumi.String("val1"),
/// 				"key2": pulumi.String("val2"),
/// 				"key3": pulumi.String("val3"),
/// 				"key4": pulumi.String("val4"),
/// 				"key5": pulumi.String("val5"),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_parametermanager_regional_parameter" "regional-parameter-with-labels" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   parameter_id = "regional_parameter"
///   location     = "us-central1"
///   labels = {
///     "key1" = "val1"
///     "key2" = "val2"
///     "key3" = "val3"
///     "key4" = "val4"
///     "key5" = "val5"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.parametermanager.RegionalParameter;
/// import com.pulumi.gcp.parametermanager.RegionalParameterArgs;
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
///         var regional_parameter_with_labels = new RegionalParameter("regional-parameter-with-labels", RegionalParameterArgs.builder()
///             .parameterId("regional_parameter")
///             .location("us-central1")
///             .labels(Map.ofEntries(
///                 Map.entry("key1", "val1"),
///                 Map.entry("key2", "val2"),
///                 Map.entry("key3", "val3"),
///                 Map.entry("key4", "val4"),
///                 Map.entry("key5", "val5")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   regional-parameter-with-labels:
///     type: gcp:parametermanager:RegionalParameter
///     properties:
///       parameterId: regional_parameter
///       location: us-central1
///       labels:
///         key1: val1
///         key2: val2
///         key3: val3
///         key4: val4
///         key5: val5
/// ```
///
/// ### Regional Parameter With Kms Key
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const regional_parameter_with_kms_key = new gcp.parametermanager.RegionalParameter("regional-parameter-with-kms-key", {
///     parameterId: "regional_parameter",
///     location: "us-central1",
///     kmsKey: "kms-key",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// regional_parameter_with_kms_key = gcp.parametermanager.RegionalParameter("regional-parameter-with-kms-key",
///     parameter_id="regional_parameter",
///     location="us-central1",
///     kms_key="kms-key")
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
///     var regional_parameter_with_kms_key = new Gcp.ParameterManager.RegionalParameter("regional-parameter-with-kms-key", new()
///     {
///         ParameterId = "regional_parameter",
///         Location = "us-central1",
///         KmsKey = "kms-key",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/parametermanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = parametermanager.NewRegionalParameter(ctx, "regional-parameter-with-kms-key", &parametermanager.RegionalParameterArgs{
/// 			ParameterId: pulumi.String("regional_parameter"),
/// 			Location:    pulumi.String("us-central1"),
/// 			KmsKey:      pulumi.String("kms-key"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_organizations_project" "project" {
/// }
///
/// resource "gcp_parametermanager_regional_parameter" "regional-parameter-with-kms-key" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   parameter_id = "regional_parameter"
///   location     = "us-central1"
///   kms_key      = "kms-key"
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
/// import com.pulumi.gcp.parametermanager.RegionalParameter;
/// import com.pulumi.gcp.parametermanager.RegionalParameterArgs;
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
///         var regional_parameter_with_kms_key = new RegionalParameter("regional-parameter-with-kms-key", RegionalParameterArgs.builder()
///             .parameterId("regional_parameter")
///             .location("us-central1")
///             .kmsKey("kms-key")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   regional-parameter-with-kms-key:
///     type: gcp:parametermanager:RegionalParameter
///     properties:
///       parameterId: regional_parameter
///       location: us-central1
///       kmsKey: kms-key
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Regional Parameter With Tags
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const regional_parameter_with_tags = new gcp.parametermanager.RegionalParameter("regional-parameter-with-tags", {
///     location: "us-central1",
///     parameterId: "regional_parameter",
///     tags: {
///         "tagKeys/123456": "tagValues/789012",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// regional_parameter_with_tags = gcp.parametermanager.RegionalParameter("regional-parameter-with-tags",
///     location="us-central1",
///     parameter_id="regional_parameter",
///     tags={
///         "tagKeys/123456": "tagValues/789012",
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
///     var regional_parameter_with_tags = new Gcp.ParameterManager.RegionalParameter("regional-parameter-with-tags", new()
///     {
///         Location = "us-central1",
///         ParameterId = "regional_parameter",
///         Tags =
///         {
///             { "tagKeys/123456", "tagValues/789012" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/parametermanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := parametermanager.NewRegionalParameter(ctx, "regional-parameter-with-tags", &parametermanager.RegionalParameterArgs{
/// 			Location:    pulumi.String("us-central1"),
/// 			ParameterId: pulumi.String("regional_parameter"),
/// 			Tags: pulumi.StringMap{
/// 				"tagKeys/123456": pulumi.String("tagValues/789012"),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_parametermanager_regional_parameter" "regional-parameter-with-tags" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   location     = "us-central1"
///   parameter_id = "regional_parameter"
///   tags = {
///     "tagKeys/123456" = "tagValues/789012"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.parametermanager.RegionalParameter;
/// import com.pulumi.gcp.parametermanager.RegionalParameterArgs;
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
///         var regional_parameter_with_tags = new RegionalParameter("regional-parameter-with-tags", RegionalParameterArgs.builder()
///             .location("us-central1")
///             .parameterId("regional_parameter")
///             .tags(Map.of("tagKeys/123456", "tagValues/789012"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   regional-parameter-with-tags:
///     type: gcp:parametermanager:RegionalParameter
///     properties:
///       location: us-central1
///       parameterId: regional_parameter
///       tags:
///         tagKeys/123456: tagValues/789012
/// ```
///
///
/// ## Import
///
/// RegionalParameter can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/parameters/{{parameter_id}}`
/// * `{{project}}/{{location}}/{{parameter_id}}`
/// * `{{location}}/{{parameter_id}}`
///
///
/// When using the `pulumi import` command, RegionalParameter can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:parametermanager/regionalParameter:RegionalParameter default projects/{{project}}/locations/{{location}}/parameters/{{parameter_id}}
/// $ pulumi import gcp:parametermanager/regionalParameter:RegionalParameter default {{project}}/{{location}}/{{parameter_id}}
/// $ pulumi import gcp:parametermanager/regionalParameter:RegionalParameter default {{location}}/{{parameter_id}}
/// ```
class RegionalParameter extends pulumi.CustomResource {
  /// The time at which the regional Parameter was created.
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
  /// The format type of the regional parameter.
  /// Default value is `UNFORMATTED`.
  /// Possible values are: `UNFORMATTED`, `YAML`, `JSON`.
  late final pulumi.Output<String?> format;
  /// The resource name of the Cloud KMS CryptoKey used to encrypt regional parameter version payload. Format
  /// `projects/{{project}}/locations/{{location}}/keyRings/{{key_ring}}/cryptoKeys/{{crypto_key}}`
  late final pulumi.Output<String?> kmsKey;
  /// The labels assigned to this regional Parameter.
  /// Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes,
  /// and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}][\p{Ll}\p{Lo}\p{N}_-]{0,62}
  /// Label values must be between 0 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes,
  /// and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}
  /// No more than 64 labels can be assigned to a given resource.
  /// An object containing a list of "key": value pairs. Example:
  /// { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location of the regional parameter. eg us-central1
  late final pulumi.Output<String> location;
  /// The resource name of the regional Parameter. Format:
  /// `projects/{{project}}/locations/{{location}}/parameters/{{parameter_id}}`
  late final pulumi.Output<String> name;
  /// This must be unique within the project.
  late final pulumi.Output<String> parameterId;
  /// An object containing a unique resource identity tied to the regional parameter.
  /// Structure is documented below.
  late final pulumi.Output<List<RegionalParameterPolicyMember>> policyMembers;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// A map of resource manager tags.
  /// Resource manager tag keys and values have the same definition as resource manager tags.
  /// Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/{tag_value_id}.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The time at which the regional Parameter was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [RegionalParameter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionalParameter]. {@macro pulumi_parametermanager_regional_parameter_regional_parameter_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionalParameter(
    String name, {
    RegionalParameterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:parametermanager/regionalParameter:RegionalParameter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.1.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    format = registerOutput<String?>('format');
    kmsKey = registerOutput<String?>('kmsKey');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    parameterId = registerOutput<String>('parameterId');
    policyMembers = registerOutput<List<RegionalParameterPolicyMember>>('policyMembers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegionalParameterPolicyMember>(guardedValue, (value) => RegionalParameterPolicyMember.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [RegionalParameter] resource's state with the given [name] and [id].
  static RegionalParameter get(
    String name,
    pulumi.Input<String> id, {
    RegionalParameterState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RegionalParameter._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RegionalParameter._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:parametermanager/regionalParameter:RegionalParameter',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    format = registerOutput<String?>('format');
    kmsKey = registerOutput<String?>('kmsKey');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    parameterId = registerOutput<String>('parameterId');
    policyMembers = registerOutput<List<RegionalParameterPolicyMember>>('policyMembers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegionalParameterPolicyMember>(guardedValue, (value) => RegionalParameterPolicyMember.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [RegionalParameter] resource.
  RegionalParameter.reference(String urn)
    : super(
        'gcp:parametermanager/regionalParameter:RegionalParameter',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    format = registerOutput<String?>('format');
    kmsKey = registerOutput<String?>('kmsKey');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    parameterId = registerOutput<String>('parameterId');
    policyMembers = registerOutput<List<RegionalParameterPolicyMember>>('policyMembers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegionalParameterPolicyMember>(guardedValue, (value) => RegionalParameterPolicyMember.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    updateTime = registerOutput<String>('updateTime');
  }
}
