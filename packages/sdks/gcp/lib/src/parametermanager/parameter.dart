import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_args.dart';
import 'parameter_policy_member.dart';
import 'parameter_state.dart';

/// A Parameter resource is a logical parameter.
///
///
/// To get more information about Parameter, see:
///
/// * [API documentation](https://cloud.google.com/secret-manager/parameter-manager/docs/reference/rest/v1/projects.locations.parameters)
///
/// ## Example Usage
///
/// ### Parameter Config Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const parameter_basic = new gcp.parametermanager.Parameter("parameter-basic", {parameterId: "parameter"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// parameter_basic = gcp.parametermanager.Parameter("parameter-basic", parameter_id="parameter")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var parameter_basic = new Gcp.ParameterManager.Parameter("parameter-basic", new()
///     {
///         ParameterId = "parameter",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/parametermanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := parametermanager.NewParameter(ctx, "parameter-basic", &parametermanager.ParameterArgs{
/// 			ParameterId: pulumi.String("parameter"),
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
/// resource "gcp_parametermanager_parameter" "parameter-basic" {
///   parameter_id = "parameter"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.parametermanager.Parameter;
/// import com.pulumi.gcp.parametermanager.ParameterArgs;
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
///         var parameter_basic = new Parameter("parameter-basic", ParameterArgs.builder()
///             .parameterId("parameter")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   parameter-basic:
///     type: gcp:parametermanager:Parameter
///     properties:
///       parameterId: parameter
/// ```
///
/// ### Parameter With Format
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const parameter_with_format = new gcp.parametermanager.Parameter("parameter-with-format", {
///     parameterId: "parameter",
///     format: "JSON",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// parameter_with_format = gcp.parametermanager.Parameter("parameter-with-format",
///     parameter_id="parameter",
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
///     var parameter_with_format = new Gcp.ParameterManager.Parameter("parameter-with-format", new()
///     {
///         ParameterId = "parameter",
///         Format = "JSON",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/parametermanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := parametermanager.NewParameter(ctx, "parameter-with-format", &parametermanager.ParameterArgs{
/// 			ParameterId: pulumi.String("parameter"),
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
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_parametermanager_parameter" "parameter-with-format" {
///   parameter_id = "parameter"
///   format       = "JSON"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.parametermanager.Parameter;
/// import com.pulumi.gcp.parametermanager.ParameterArgs;
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
///         var parameter_with_format = new Parameter("parameter-with-format", ParameterArgs.builder()
///             .parameterId("parameter")
///             .format("JSON")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   parameter-with-format:
///     type: gcp:parametermanager:Parameter
///     properties:
///       parameterId: parameter
///       format: JSON
/// ```
///
/// ### Parameter With Labels
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const parameter_with_labels = new gcp.parametermanager.Parameter("parameter-with-labels", {
///     parameterId: "parameter",
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
/// parameter_with_labels = gcp.parametermanager.Parameter("parameter-with-labels",
///     parameter_id="parameter",
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
///     var parameter_with_labels = new Gcp.ParameterManager.Parameter("parameter-with-labels", new()
///     {
///         ParameterId = "parameter",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/parametermanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := parametermanager.NewParameter(ctx, "parameter-with-labels", &parametermanager.ParameterArgs{
/// 			ParameterId: pulumi.String("parameter"),
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
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_parametermanager_parameter" "parameter-with-labels" {
///   parameter_id = "parameter"
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
/// import com.pulumi.gcp.parametermanager.Parameter;
/// import com.pulumi.gcp.parametermanager.ParameterArgs;
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
///         var parameter_with_labels = new Parameter("parameter-with-labels", ParameterArgs.builder()
///             .parameterId("parameter")
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
///   parameter-with-labels:
///     type: gcp:parametermanager:Parameter
///     properties:
///       parameterId: parameter
///       labels:
///         key1: val1
///         key2: val2
///         key3: val3
///         key4: val4
///         key5: val5
/// ```
///
/// ### Parameter With Kms Key
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const parameter_with_kms_key = new gcp.parametermanager.Parameter("parameter-with-kms-key", {
///     parameterId: "parameter",
///     kmsKey: "kms-key",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// parameter_with_kms_key = gcp.parametermanager.Parameter("parameter-with-kms-key",
///     parameter_id="parameter",
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
///     var parameter_with_kms_key = new Gcp.ParameterManager.Parameter("parameter-with-kms-key", new()
///     {
///         ParameterId = "parameter",
///         KmsKey = "kms-key",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/parametermanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = parametermanager.NewParameter(ctx, "parameter-with-kms-key", &parametermanager.ParameterArgs{
/// 			ParameterId: pulumi.String("parameter"),
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
/// resource "gcp_parametermanager_parameter" "parameter-with-kms-key" {
///   parameter_id = "parameter"
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
/// import com.pulumi.gcp.parametermanager.Parameter;
/// import com.pulumi.gcp.parametermanager.ParameterArgs;
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
///         var parameter_with_kms_key = new Parameter("parameter-with-kms-key", ParameterArgs.builder()
///             .parameterId("parameter")
///             .kmsKey("kms-key")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   parameter-with-kms-key:
///     type: gcp:parametermanager:Parameter
///     properties:
///       parameterId: parameter
///       kmsKey: kms-key
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Parameter can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/parameters/{{parameter_id}}`
/// * `{{project}}/{{parameter_id}}`
/// * `{{parameter_id}}`
///
///
/// When using the `pulumi import` command, Parameter can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:parametermanager/parameter:Parameter default projects/{{project}}/locations/global/parameters/{{parameter_id}}
/// $ pulumi import gcp:parametermanager/parameter:Parameter default {{project}}/{{parameter_id}}
/// $ pulumi import gcp:parametermanager/parameter:Parameter default {{parameter_id}}
/// ```
class Parameter extends pulumi.CustomResource {
  /// The time at which the Parameter was created.
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
  /// The format type of the parameter resource.
  /// Default value is `UNFORMATTED`.
  /// Possible values are: `UNFORMATTED`, `YAML`, `JSON`.
  late final pulumi.Output<String?> format;
  /// The resource name of the Cloud KMS CryptoKey used to encrypt parameter version payload. Format
  /// `projects/{{project}}/locations/global/keyRings/{{key_ring}}/cryptoKeys/{{crypto_key}}`
  late final pulumi.Output<String?> kmsKey;
  /// The labels assigned to this Parameter.
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
  /// The resource name of the Parameter. Format:
  /// `projects/{{project}}/locations/global/parameters/{{parameter_id}}`
  late final pulumi.Output<String> name;
  /// This must be unique within the project.
  late final pulumi.Output<String> parameterId;
  /// Policy member strings of a Google Cloud resource.
  /// Structure is documented below.
  late final pulumi.Output<List<ParameterPolicyMember>> policyMembers;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The time at which the Parameter was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Parameter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Parameter]. {@macro pulumi_parametermanager_parameter_parameter_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Parameter(
    String name, {
    ParameterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:parametermanager/parameter:Parameter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    format = registerOutput<String?>('format');
    kmsKey = registerOutput<String?>('kmsKey');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    parameterId = registerOutput<String>('parameterId');
    policyMembers = registerOutput<List<ParameterPolicyMember>>('policyMembers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ParameterPolicyMember>(guardedValue, (value) => ParameterPolicyMember.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Parameter] resource's state with the given [name] and [id].
  static Parameter get(
    String name,
    pulumi.Input<String> id, {
    ParameterState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Parameter._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Parameter._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:parametermanager/parameter:Parameter',
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
    this.name = registerOutput<String>('name');
    parameterId = registerOutput<String>('parameterId');
    policyMembers = registerOutput<List<ParameterPolicyMember>>('policyMembers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ParameterPolicyMember>(guardedValue, (value) => ParameterPolicyMember.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [Parameter] resource.
  Parameter.reference(String urn)
    : super(
        'gcp:parametermanager/parameter:Parameter',
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
    this.name = registerOutput<String>('name');
    parameterId = registerOutput<String>('parameterId');
    policyMembers = registerOutput<List<ParameterPolicyMember>>('policyMembers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ParameterPolicyMember>(guardedValue, (value) => ParameterPolicyMember.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    updateTime = registerOutput<String>('updateTime');
  }
}
