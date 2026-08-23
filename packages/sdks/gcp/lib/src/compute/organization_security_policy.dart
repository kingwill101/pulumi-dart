import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_security_policy_advanced_options_config.dart';
import 'organization_security_policy_args.dart';
import 'organization_security_policy_state.dart';

/// Organization security policies are used to control incoming/outgoing traffic.
///
///
/// To get more information about OrganizationSecurityPolicy, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/organizationSecurityPolicies)
/// * How-to Guides
/// * [Creating a firewall policy](https://cloud.google.com/vpc/docs/using-firewall-policies#create-policy)
///
/// ## Example Usage
///
/// ### Organization Security Policy Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = new gcp.compute.OrganizationSecurityPolicy("policy", {
///     shortName: "my-short-name",
///     parent: "organizations/123456789",
///     type: "CLOUD_ARMOR",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.OrganizationSecurityPolicy("policy",
///     short_name="my-short-name",
///     parent="organizations/123456789",
///     type="CLOUD_ARMOR")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = new Gcp.Compute.OrganizationSecurityPolicy("policy", new()
///     {
///         ShortName = "my-short-name",
///         Parent = "organizations/123456789",
///         Type = "CLOUD_ARMOR",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewOrganizationSecurityPolicy(ctx, "policy", &compute.OrganizationSecurityPolicyArgs{
/// 			ShortName: pulumi.String("my-short-name"),
/// 			Parent:    pulumi.String("organizations/123456789"),
/// 			Type:      pulumi.String("CLOUD_ARMOR"),
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
/// resource "gcp_compute_organizationsecuritypolicy" "policy" {
///   short_name = "my-short-name"
///   parent     = "organizations/123456789"
///   type       = "CLOUD_ARMOR"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.OrganizationSecurityPolicy;
/// import com.pulumi.gcp.compute.OrganizationSecurityPolicyArgs;
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
///         var policy = new OrganizationSecurityPolicy("policy", OrganizationSecurityPolicyArgs.builder()
///             .shortName("my-short-name")
///             .parent("organizations/123456789")
///             .type("CLOUD_ARMOR")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:compute:OrganizationSecurityPolicy
///     properties:
///       shortName: my-short-name
///       parent: organizations/123456789
///       type: CLOUD_ARMOR
/// ```
///
/// ### Organization Security Policy With Advanced Options
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = new gcp.compute.OrganizationSecurityPolicy("policy", {
///     shortName: "security-policy",
///     parent: "organizations/123456789",
///     type: "CLOUD_ARMOR",
///     advancedOptionsConfig: {
///         jsonParsing: "STANDARD_WITH_GRAPHQL",
///         logLevel: "VERBOSE",
///         jsonCustomConfig: {
///             contentTypes: ["application/vnd.api+json"],
///         },
///         userIpRequestHeaders: ["X-Forwarded-For"],
///         requestBodyInspectionSize: "64KB",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.OrganizationSecurityPolicy("policy",
///     short_name="security-policy",
///     parent="organizations/123456789",
///     type="CLOUD_ARMOR",
///     advanced_options_config={
///         "json_parsing": "STANDARD_WITH_GRAPHQL",
///         "log_level": "VERBOSE",
///         "json_custom_config": {
///             "content_types": ["application/vnd.api+json"],
///         },
///         "user_ip_request_headers": ["X-Forwarded-For"],
///         "request_body_inspection_size": "64KB",
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
///     var policy = new Gcp.Compute.OrganizationSecurityPolicy("policy", new()
///     {
///         ShortName = "security-policy",
///         Parent = "organizations/123456789",
///         Type = "CLOUD_ARMOR",
///         AdvancedOptionsConfig = new Gcp.Compute.Inputs.OrganizationSecurityPolicyAdvancedOptionsConfigArgs
///         {
///             JsonParsing = "STANDARD_WITH_GRAPHQL",
///             LogLevel = "VERBOSE",
///             JsonCustomConfig = new Gcp.Compute.Inputs.OrganizationSecurityPolicyAdvancedOptionsConfigJsonCustomConfigArgs
///             {
///                 ContentTypes = new[]
///                 {
///                     "application/vnd.api+json",
///                 },
///             },
///             UserIpRequestHeaders = new[]
///             {
///                 "X-Forwarded-For",
///             },
///             RequestBodyInspectionSize = "64KB",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewOrganizationSecurityPolicy(ctx, "policy", &compute.OrganizationSecurityPolicyArgs{
/// 			ShortName: pulumi.String("security-policy"),
/// 			Parent:    pulumi.String("organizations/123456789"),
/// 			Type:      pulumi.String("CLOUD_ARMOR"),
/// 			AdvancedOptionsConfig: &compute.OrganizationSecurityPolicyAdvancedOptionsConfigArgs{
/// 				JsonParsing: pulumi.String("STANDARD_WITH_GRAPHQL"),
/// 				LogLevel:    pulumi.String("VERBOSE"),
/// 				JsonCustomConfig: &compute.OrganizationSecurityPolicyAdvancedOptionsConfigJsonCustomConfigArgs{
/// 					ContentTypes: pulumi.StringArray{
/// 						pulumi.String("application/vnd.api+json"),
/// 					},
/// 				},
/// 				UserIpRequestHeaders: pulumi.StringArray{
/// 					pulumi.String("X-Forwarded-For"),
/// 				},
/// 				RequestBodyInspectionSize: pulumi.String("64KB"),
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
/// resource "gcp_compute_organizationsecuritypolicy" "policy" {
///   short_name = "security-policy"
///   parent     = "organizations/123456789"
///   type       = "CLOUD_ARMOR"
///   advanced_options_config = {
///     json_parsing = "STANDARD_WITH_GRAPHQL"
///     log_level    = "VERBOSE"
///     json_custom_config = {
///       content_types = ["application/vnd.api+json"]
///     }
///     user_ip_request_headers      = ["X-Forwarded-For"]
///     request_body_inspection_size = "64KB"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.OrganizationSecurityPolicy;
/// import com.pulumi.gcp.compute.OrganizationSecurityPolicyArgs;
/// import com.pulumi.gcp.compute.inputs.OrganizationSecurityPolicyAdvancedOptionsConfigArgs;
/// import com.pulumi.gcp.compute.inputs.OrganizationSecurityPolicyAdvancedOptionsConfigJsonCustomConfigArgs;
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
///         var policy = new OrganizationSecurityPolicy("policy", OrganizationSecurityPolicyArgs.builder()
///             .shortName("security-policy")
///             .parent("organizations/123456789")
///             .type("CLOUD_ARMOR")
///             .advancedOptionsConfig(OrganizationSecurityPolicyAdvancedOptionsConfigArgs.builder()
///                 .jsonParsing("STANDARD_WITH_GRAPHQL")
///                 .logLevel("VERBOSE")
///                 .jsonCustomConfig(OrganizationSecurityPolicyAdvancedOptionsConfigJsonCustomConfigArgs.builder()
///                     .contentTypes("application/vnd.api+json")
///                     .build())
///                 .userIpRequestHeaders("X-Forwarded-For")
///                 .requestBodyInspectionSize("64KB")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:compute:OrganizationSecurityPolicy
///     properties:
///       shortName: security-policy
///       parent: organizations/123456789
///       type: CLOUD_ARMOR
///       advancedOptionsConfig:
///         jsonParsing: STANDARD_WITH_GRAPHQL
///         logLevel: VERBOSE
///         jsonCustomConfig:
///           contentTypes:
///             - application/vnd.api+json
///         userIpRequestHeaders:
///           - X-Forwarded-For
///         requestBodyInspectionSize: 64KB
/// ```
///
///
/// ## Import
///
/// OrganizationSecurityPolicy can be imported using any of these accepted formats:
///
/// * `locations/global/securityPolicies/{{policy_id}}`
/// * `{{policy_id}}`
///
///
/// When using the `pulumi import` command, OrganizationSecurityPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/organizationSecurityPolicy:OrganizationSecurityPolicy default locations/global/securityPolicies/{{policy_id}}
/// $ pulumi import gcp:compute/organizationSecurityPolicy:OrganizationSecurityPolicy default {{policy_id}}
/// ```
class OrganizationSecurityPolicy extends pulumi.CustomResource {
  /// Additional options for this security policy.
  /// Structure is documented below.
  late final pulumi.Output<OrganizationSecurityPolicyAdvancedOptionsConfig?> advancedOptionsConfig;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A textual description for the organization security policy.
  late final pulumi.Output<String?> description;
  /// User-provided name of the organization security policy. The name should be unique in the organization in which the security policy is created. This should only be used when SecurityPolicyType is FIREWALL.
  late final pulumi.Output<String?> displayName;
  /// Fingerprint of this resource. This field is used internally during
  /// updates of this resource.
  late final pulumi.Output<String> fingerprint;
  /// The parent of this OrganizationSecurityPolicy in the Cloud Resource Hierarchy.
  /// Format: organizations/{organization_id} or folders/{folder_id}
  late final pulumi.Output<String> parent;
  /// The unique identifier for the resource. This identifier is defined by the server.
  late final pulumi.Output<String> policyId;
  /// User-provided name of the organization security policy. The name should be unique in the organization in which the security policy is created. This should only be used when SecurityPolicyType is CLOUD_ARMOR.
  late final pulumi.Output<String?> shortName;
  /// The type indicates the intended use of the security policy. This field can be set only at resource creation time.
  /// **NOTE** : 'FIREWALL' type is deprecated and will be removed in a future major release. Please use 'google_compute_firewall_policy' instead."
  /// Possible values are: `FIREWALL`, `CLOUD_ARMOR`, `CLOUD_ARMOR_EDGE`, `CLOUD_ARMOR_INTERNAL_SERVICE`, `CLOUD_ARMOR_NETWORK`.
  late final pulumi.Output<String> type;

  /// Creates a new [OrganizationSecurityPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationSecurityPolicy]. {@macro pulumi_compute_organization_security_policy_organization_security_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationSecurityPolicy(
    String name, {
    OrganizationSecurityPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/organizationSecurityPolicy:OrganizationSecurityPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    advancedOptionsConfig = registerOutput<OrganizationSecurityPolicyAdvancedOptionsConfig?>('advancedOptionsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrganizationSecurityPolicyAdvancedOptionsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    fingerprint = registerOutput<String>('fingerprint');
    parent = registerOutput<String>('parent');
    policyId = registerOutput<String>('policyId');
    shortName = registerOutput<String?>('shortName');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [OrganizationSecurityPolicy] resource's state with the given [name] and [id].
  static OrganizationSecurityPolicy get(
    String name,
    pulumi.Input<String> id, {
    OrganizationSecurityPolicyState? state,
  }) {
    return OrganizationSecurityPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  OrganizationSecurityPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/organizationSecurityPolicy:OrganizationSecurityPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    advancedOptionsConfig = registerOutput<OrganizationSecurityPolicyAdvancedOptionsConfig?>('advancedOptionsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrganizationSecurityPolicyAdvancedOptionsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    fingerprint = registerOutput<String>('fingerprint');
    parent = registerOutput<String>('parent');
    policyId = registerOutput<String>('policyId');
    shortName = registerOutput<String?>('shortName');
    type = registerOutput<String>('type');
  }
}
