import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_policy_args.dart';

/// An access policy is used to grant users and applications access to the environment. Roles are assigned to service principals in Azure Active Directory. These roles define the actions the principal can perform through the Time Series Insights data plane APIs.
///
/// Uses Azure REST API version 2020-05-15. In version 2.x of the Azure Native provider, it used API version 2020-05-15.
///
/// Other available API versions: 2021-03-31-preview, 2021-06-30-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native timeseriesinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### AccessPoliciesCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var accessPolicy = new AzureNative.TimeSeriesInsights.AccessPolicy("accessPolicy", new()
///     {
///         AccessPolicyName = "ap1",
///         Description = "some description",
///         EnvironmentName = "env1",
///         PrincipalObjectId = "aGuid",
///         ResourceGroupName = "rg1",
///         Roles = new[]
///         {
///             AzureNative.TimeSeriesInsights.AccessPolicyRole.Reader,
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	timeseriesinsights "github.com/pulumi/pulumi-azure-native-sdk/timeseriesinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := timeseriesinsights.NewAccessPolicy(ctx, "accessPolicy", &timeseriesinsights.AccessPolicyArgs{
/// 			AccessPolicyName:  pulumi.String("ap1"),
/// 			Description:       pulumi.String("some description"),
/// 			EnvironmentName:   pulumi.String("env1"),
/// 			PrincipalObjectId: pulumi.String("aGuid"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Roles: pulumi.StringArray{
/// 				pulumi.String(timeseriesinsights.AccessPolicyRoleReader),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_timeseriesinsights_accesspolicy" "accessPolicy" {
///   access_policy_name  = "ap1"
///   description         = "some description"
///   environment_name    = "env1"
///   principal_object_id = "aGuid"
///   resource_group_name = "rg1"
///   roles               = ["Reader"]
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.timeseriesinsights.AccessPolicy;
/// import com.pulumi.azurenative.timeseriesinsights.AccessPolicyArgs;
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
///         var accessPolicy = new AccessPolicy("accessPolicy", AccessPolicyArgs.builder()
///             .accessPolicyName("ap1")
///             .description("some description")
///             .environmentName("env1")
///             .principalObjectId("aGuid")
///             .resourceGroupName("rg1")
///             .roles("Reader")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const accessPolicy = new azure_native.timeseriesinsights.AccessPolicy("accessPolicy", {
///     accessPolicyName: "ap1",
///     description: "some description",
///     environmentName: "env1",
///     principalObjectId: "aGuid",
///     resourceGroupName: "rg1",
///     roles: [azure_native.timeseriesinsights.AccessPolicyRole.Reader],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// access_policy = azure_native.timeseriesinsights.AccessPolicy("accessPolicy",
///     access_policy_name="ap1",
///     description="some description",
///     environment_name="env1",
///     principal_object_id="aGuid",
///     resource_group_name="rg1",
///     roles=[azure_native.timeseriesinsights.AccessPolicyRole.READER])
///
/// ```
///
/// ```yaml
/// resources:
///   accessPolicy:
///     type: azure-native:timeseriesinsights:AccessPolicy
///     properties:
///       accessPolicyName: ap1
///       description: some description
///       environmentName: env1
///       principalObjectId: aGuid
///       resourceGroupName: rg1
///       roles:
///         - Reader
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:timeseriesinsights:AccessPolicy ap1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.TimeSeriesInsights/environments/{environmentName}/accessPolicies/{accessPolicyName}
/// ```
class AccessPolicy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// An description of the access policy.
  late final pulumi.Output<String?> description;
  /// Resource name
  late final pulumi.Output<String> name;
  /// The objectId of the principal in Azure Active Directory.
  late final pulumi.Output<String?> principalObjectId;
  /// The list of roles the principal is assigned on the environment.
  late final pulumi.Output<List<String>?> roles;
  /// Resource type
  late final pulumi.Output<String> type;

  /// Creates a new [AccessPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessPolicy]. {@macro pulumi_timeseriesinsights_access_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessPolicy(
    String name, {
    AccessPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:timeseriesinsights:AccessPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    principalObjectId = registerOutput<String?>('principalObjectId');
    roles = registerOutput<List<String>?>('roles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [AccessPolicy] resource.
  AccessPolicy.reference(String urn)
    : super(
        'azure-native:timeseriesinsights:AccessPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    principalObjectId = registerOutput<String?>('principalObjectId');
    roles = registerOutput<List<String>?>('roles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    type = registerOutput<String>('type');
  }
}
