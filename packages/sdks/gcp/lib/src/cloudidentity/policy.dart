import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_args.dart';
import 'policy_policy_query.dart';
import 'policy_setting.dart';
import 'policy_state.dart';

/// A Cloud Identity Policy binds a Setting to a PolicyQuery for a Google Workspace / Cloud Identity customer.
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// To get more information about Policy, see:
///
/// * [API documentation](https://cloud.google.com/identity/docs/reference/rest/v1beta1/policies)
/// * How-to Guides
/// * [Policy API overview](https://docs.cloud.google.com/identity/docs/concepts/overview-policies)
///
/// &gt; **Note:** This is available only in beta
/// ## Example Usage
///
/// ### Cloudidentity Policy Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.cloudidentity.Policy("primary", {
///     customer: "customers/C01234567",
///     policyQuery: {
///         orgUnit: "orgUnits/03abcxyz",
///         group: "groups/0123456789",
///         query: "true",
///     },
///     setting: {
///         type: "something.googleapis.com/SettingType",
///         valueJson: JSON.stringify({
///             enabled: true,
///         }),
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// primary = gcp.cloudidentity.Policy("primary",
///     customer="customers/C01234567",
///     policy_query={
///         "org_unit": "orgUnits/03abcxyz",
///         "group": "groups/0123456789",
///         "query": "true",
///     },
///     setting={
///         "type": "something.googleapis.com/SettingType",
///         "value_json": json.dumps({
///             "enabled": True,
///         }),
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Gcp.CloudIdentity.Policy("primary", new()
///     {
///         Customer = "customers/C01234567",
///         PolicyQuery = new Gcp.CloudIdentity.Inputs.PolicyPolicyQueryArgs
///         {
///             OrgUnit = "orgUnits/03abcxyz",
///             Group = "groups/0123456789",
///             Query = "true",
///         },
///         Setting = new Gcp.CloudIdentity.Inputs.PolicySettingArgs
///         {
///             Type = "something.googleapis.com/SettingType",
///             ValueJson = JsonSerializer.Serialize(new Dictionary<string, object?>
///             {
///                 ["enabled"] = true,
///             }),
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudidentity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]bool{
/// 			"enabled": true,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = cloudidentity.NewPolicy(ctx, "primary", &cloudidentity.PolicyArgs{
/// 			Customer: pulumi.String("customers/C01234567"),
/// 			PolicyQuery: &cloudidentity.PolicyPolicyQueryArgs{
/// 				OrgUnit: pulumi.String("orgUnits/03abcxyz"),
/// 				Group:   pulumi.String("groups/0123456789"),
/// 				Query:   pulumi.String("true"),
/// 			},
/// 			Setting: &cloudidentity.PolicySettingArgs{
/// 				Type:      pulumi.String("something.googleapis.com/SettingType"),
/// 				ValueJson: pulumi.String(json0),
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
/// resource "gcp_cloudidentity_policy" "primary" {
///   customer = "customers/C01234567"
///   policy_query = {
///     org_unit = "orgUnits/03abcxyz"
///     group    = "groups/0123456789"
///     query    = "true"
///   }
///   setting = {
///     type = "something.googleapis.com/SettingType"
///     value_json = jsonencode({
///       "enabled" = true
///     })
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudidentity.Policy;
/// import com.pulumi.gcp.cloudidentity.PolicyArgs;
/// import com.pulumi.gcp.cloudidentity.inputs.PolicyPolicyQueryArgs;
/// import com.pulumi.gcp.cloudidentity.inputs.PolicySettingArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var primary = new Policy("primary", PolicyArgs.builder()
///             .customer("customers/C01234567")
///             .policyQuery(PolicyPolicyQueryArgs.builder()
///                 .orgUnit("orgUnits/03abcxyz")
///                 .group("groups/0123456789")
///                 .query("true")
///                 .build())
///             .setting(PolicySettingArgs.builder()
///                 .type("something.googleapis.com/SettingType")
///                 .valueJson(serializeJson(
///                     jsonObject(
///                         jsonProperty("enabled", true)
///                     )))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:cloudidentity:Policy
///     properties:
///       customer: customers/C01234567
///       policyQuery:
///         orgUnit: orgUnits/03abcxyz
///         group: groups/0123456789
///         query: 'true'
///       setting:
///         type: something.googleapis.com/SettingType
///         valueJson:
///           fn::toJSON:
///             enabled: true
/// ```
///
///
/// ## Import
///
/// Policy can be imported using any of these accepted formats:
///
/// * `policies/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, Policy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudidentity/policy:Policy default policies/{{name}}
/// $ pulumi import gcp:cloudidentity/policy:Policy default {{name}}
/// ```
class Policy extends pulumi.CustomResource {
  /// The customer that the Policy belongs to. Format: `customers/{customer_id}`.
  late final pulumi.Output<String> customer;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The resource name of the Policy. Format: `policies/{policy_id}`.
  late final pulumi.Output<String> name;
  /// The PolicyQuery the Setting applies to.
  /// Structure is documented below.
  late final pulumi.Output<PolicyPolicyQuery> policyQuery;
  /// The Setting configured by this Policy.
  /// Structure is documented below.
  late final pulumi.Output<PolicySetting> setting;

  /// Creates a new [Policy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Policy]. {@macro pulumi_cloudidentity_policy_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Policy(
    String name, {
    PolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudidentity/policy:Policy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    customer = registerOutput<String>('customer');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    this.name = registerOutput<String>('name');
    policyQuery = registerOutput<PolicyPolicyQuery>('policyQuery', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicyPolicyQuery.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    setting = registerOutput<PolicySetting>('setting', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicySetting.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Policy] resource's state with the given [name] and [id].
  static Policy get(
    String name,
    pulumi.Input<String> id, {
    PolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Policy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Policy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudidentity/policy:Policy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    customer = registerOutput<String>('customer');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    this.name = registerOutput<String>('name');
    policyQuery = registerOutput<PolicyPolicyQuery>('policyQuery', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicyPolicyQuery.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    setting = registerOutput<PolicySetting>('setting', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicySetting.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [Policy] resource.
  Policy.reference(String urn)
    : super(
        'gcp:cloudidentity/policy:Policy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    customer = registerOutput<String>('customer');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    this.name = registerOutput<String>('name');
    policyQuery = registerOutput<PolicyPolicyQuery>('policyQuery', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicyPolicyQuery.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    setting = registerOutput<PolicySetting>('setting', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicySetting.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
