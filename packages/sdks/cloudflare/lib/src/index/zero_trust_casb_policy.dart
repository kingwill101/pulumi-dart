import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_casb_policy_actions.dart';
import 'zero_trust_casb_policy_args.dart';
import 'zero_trust_casb_policy_state.dart';

/// Accepted Permissions
///
/// - `Zero Trust Read`
/// - `Zero Trust Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustCasbPolicy = new cloudflare.ZeroTrustCasbPolicy("example_zero_trust_casb_policy", {
///     accountId: "46148281d8a93d002ef242d8b0d5f9f6",
///     actions: {
///         remediationTypes: [{
///             remediationTypeId: "5a7d9e2f-1b3c-4d5e-8f6a-7b8c9d0e1f2a",
///         }],
///         webhookConfigs: [{
///             webhookConfigId: "3f7b8c9d-6e5a-4f3b-9c2d-1e0a8b7c6d5e",
///         }],
///     },
///     appliesToAllIntegrations: false,
///     displayName: "Auto-remediate public files",
///     enabled: true,
///     findingTypeId: "5a7d9e2f-1b3c-4d5e-8f6a-7b8c9d0e1f2a",
///     description: "Automatically remove public access from files when detected",
///     integrationIds: ["497f6eca-6276-4993-bfeb-53cbbbba6f08"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_casb_policy = cloudflare.ZeroTrustCasbPolicy("example_zero_trust_casb_policy",
///     account_id="46148281d8a93d002ef242d8b0d5f9f6",
///     actions={
///         "remediation_types": [{
///             "remediation_type_id": "5a7d9e2f-1b3c-4d5e-8f6a-7b8c9d0e1f2a",
///         }],
///         "webhook_configs": [{
///             "webhook_config_id": "3f7b8c9d-6e5a-4f3b-9c2d-1e0a8b7c6d5e",
///         }],
///     },
///     applies_to_all_integrations=False,
///     display_name="Auto-remediate public files",
///     enabled=True,
///     finding_type_id="5a7d9e2f-1b3c-4d5e-8f6a-7b8c9d0e1f2a",
///     description="Automatically remove public access from files when detected",
///     integration_ids=["497f6eca-6276-4993-bfeb-53cbbbba6f08"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustCasbPolicy = new Cloudflare.ZeroTrustCasbPolicy("example_zero_trust_casb_policy", new()
///     {
///         AccountId = "46148281d8a93d002ef242d8b0d5f9f6",
///         Actions = new Cloudflare.Inputs.ZeroTrustCasbPolicyActionsArgs
///         {
///             RemediationTypes = new[]
///             {
///                 new Cloudflare.Inputs.ZeroTrustCasbPolicyActionsRemediationTypeArgs
///                 {
///                     RemediationTypeId = "5a7d9e2f-1b3c-4d5e-8f6a-7b8c9d0e1f2a",
///                 },
///             },
///             WebhookConfigs = new[]
///             {
///                 new Cloudflare.Inputs.ZeroTrustCasbPolicyActionsWebhookConfigArgs
///                 {
///                     WebhookConfigId = "3f7b8c9d-6e5a-4f3b-9c2d-1e0a8b7c6d5e",
///                 },
///             },
///         },
///         AppliesToAllIntegrations = false,
///         DisplayName = "Auto-remediate public files",
///         Enabled = true,
///         FindingTypeId = "5a7d9e2f-1b3c-4d5e-8f6a-7b8c9d0e1f2a",
///         Description = "Automatically remove public access from files when detected",
///         IntegrationIds = new[]
///         {
///             "497f6eca-6276-4993-bfeb-53cbbbba6f08",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-cloudflare/sdk/v6/go/cloudflare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudflare.NewZeroTrustCasbPolicy(ctx, "example_zero_trust_casb_policy", &cloudflare.ZeroTrustCasbPolicyArgs{
/// 			AccountId: pulumi.String("46148281d8a93d002ef242d8b0d5f9f6"),
/// 			Actions: &cloudflare.ZeroTrustCasbPolicyActionsArgs{
/// 				RemediationTypes: cloudflare.ZeroTrustCasbPolicyActionsRemediationTypeArray{
/// 					&cloudflare.ZeroTrustCasbPolicyActionsRemediationTypeArgs{
/// 						RemediationTypeId: pulumi.String("5a7d9e2f-1b3c-4d5e-8f6a-7b8c9d0e1f2a"),
/// 					},
/// 				},
/// 				WebhookConfigs: cloudflare.ZeroTrustCasbPolicyActionsWebhookConfigArray{
/// 					&cloudflare.ZeroTrustCasbPolicyActionsWebhookConfigArgs{
/// 						WebhookConfigId: pulumi.String("3f7b8c9d-6e5a-4f3b-9c2d-1e0a8b7c6d5e"),
/// 					},
/// 				},
/// 			},
/// 			AppliesToAllIntegrations: pulumi.Bool(false),
/// 			DisplayName:              pulumi.String("Auto-remediate public files"),
/// 			Enabled:                  pulumi.Bool(true),
/// 			FindingTypeId:            pulumi.String("5a7d9e2f-1b3c-4d5e-8f6a-7b8c9d0e1f2a"),
/// 			Description:              pulumi.String("Automatically remove public access from files when detected"),
/// 			IntegrationIds: pulumi.StringArray{
/// 				pulumi.String("497f6eca-6276-4993-bfeb-53cbbbba6f08"),
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
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_zero_trust_casb_policy" "example_zero_trust_casb_policy" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   account_id = "46148281d8a93d002ef242d8b0d5f9f6"
///   actions = {
///     remediation_types = [{
///       remediation_type_id = "5a7d9e2f-1b3c-4d5e-8f6a-7b8c9d0e1f2a"
///     }]
///     webhook_configs = [{
///       webhook_config_id = "3f7b8c9d-6e5a-4f3b-9c2d-1e0a8b7c6d5e"
///     }]
///   }
///   applies_to_all_integrations = false
///   display_name                = "Auto-remediate public files"
///   enabled                     = true
///   finding_type_id             = "5a7d9e2f-1b3c-4d5e-8f6a-7b8c9d0e1f2a"
///   description                 = "Automatically remove public access from files when detected"
///   integration_ids             = ["497f6eca-6276-4993-bfeb-53cbbbba6f08"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustCasbPolicy;
/// import com.pulumi.cloudflare.ZeroTrustCasbPolicyArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustCasbPolicyActionsArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustCasbPolicyActionsRemediationTypeArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustCasbPolicyActionsWebhookConfigArgs;
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
///         var exampleZeroTrustCasbPolicy = new ZeroTrustCasbPolicy("exampleZeroTrustCasbPolicy", ZeroTrustCasbPolicyArgs.builder()
///             .accountId("46148281d8a93d002ef242d8b0d5f9f6")
///             .actions(ZeroTrustCasbPolicyActionsArgs.builder()
///                 .remediationTypes(ZeroTrustCasbPolicyActionsRemediationTypeArgs.builder()
///                     .remediationTypeId("5a7d9e2f-1b3c-4d5e-8f6a-7b8c9d0e1f2a")
///                     .build())
///                 .webhookConfigs(ZeroTrustCasbPolicyActionsWebhookConfigArgs.builder()
///                     .webhookConfigId("3f7b8c9d-6e5a-4f3b-9c2d-1e0a8b7c6d5e")
///                     .build())
///                 .build())
///             .appliesToAllIntegrations(false)
///             .displayName("Auto-remediate public files")
///             .enabled(true)
///             .findingTypeId("5a7d9e2f-1b3c-4d5e-8f6a-7b8c9d0e1f2a")
///             .description("Automatically remove public access from files when detected")
///             .integrationIds("497f6eca-6276-4993-bfeb-53cbbbba6f08")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustCasbPolicy:
///     type: cloudflare:ZeroTrustCasbPolicy
///     name: example_zero_trust_casb_policy
///     properties:
///       accountId: 46148281d8a93d002ef242d8b0d5f9f6
///       actions:
///         remediationTypes:
///           - remediationTypeId: 5a7d9e2f-1b3c-4d5e-8f6a-7b8c9d0e1f2a
///         webhookConfigs:
///           - webhookConfigId: 3f7b8c9d-6e5a-4f3b-9c2d-1e0a8b7c6d5e
///       appliesToAllIntegrations: false
///       displayName: Auto-remediate public files
///       enabled: true
///       findingTypeId: 5a7d9e2f-1b3c-4d5e-8f6a-7b8c9d0e1f2a
///       description: Automatically remove public access from files when detected
///       integrationIds:
///         - 497f6eca-6276-4993-bfeb-53cbbbba6f08
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustCasbPolicy:ZeroTrustCasbPolicy example '<account_id>/<policy_id>'
/// ```
class ZeroTrustCasbPolicy extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  /// Actions to execute when this policy is triggered, grouped by action type.
  /// A policy must contain at least one action across all groups and may include
  /// at most one remediation.
  late final pulumi.Output<ZeroTrustCasbPolicyActions> actions;
  /// When true, the policy applies to all integrations for the account. When false, integrationIds must be provided.
  late final pulumi.Output<bool> appliesToAllIntegrations;
  /// Timestamp when the policy was created.
  late final pulumi.Output<String> createdAt;
  /// Optional description of what this policy does.
  late final pulumi.Output<String> description;
  /// Timestamp when the policy was disabled. Omitted from the response when the policy
  /// is enabled.
  late final pulumi.Output<String> disabledAt;
  /// Display name for the policy configuration.
  late final pulumi.Output<String> displayName;
  /// Boolean specifying if the policy is enabled or disabled.
  late final pulumi.Output<bool> enabled;
  /// The finding type this policy is associated with. All remediation actions must match this finding type.
  late final pulumi.Output<String> findingTypeId;
  /// The integrations this policy applies to. Required when applies*to*all_integrations is false.
  late final pulumi.Output<List<String>> integrationIds;
  /// Timestamp of the most recent successful policy invocation. Omitted
  /// from the response when the policy has never been successfully
  /// triggered. Only populated on GET responses; absent on responses from
  /// create/update endpoints.
  late final pulumi.Output<String> lastTriggeredAt;
  /// Timestamp when the policy was last updated.
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [ZeroTrustCasbPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustCasbPolicy]. {@macro pulumi_index_zero_trust_casb_policy_zero_trust_casb_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustCasbPolicy(
    String name, {
    ZeroTrustCasbPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustCasbPolicy:ZeroTrustCasbPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.23.1').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    actions = registerOutput<ZeroTrustCasbPolicyActions>('actions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustCasbPolicyActions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    appliesToAllIntegrations = registerOutput<bool>('appliesToAllIntegrations');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String>('description');
    disabledAt = registerOutput<String>('disabledAt');
    displayName = registerOutput<String>('displayName');
    enabled = registerOutput<bool>('enabled');
    findingTypeId = registerOutput<String>('findingTypeId');
    integrationIds = registerOutput<List<String>>('integrationIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    lastTriggeredAt = registerOutput<String>('lastTriggeredAt');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [ZeroTrustCasbPolicy] resource's state with the given [name] and [id].
  static ZeroTrustCasbPolicy get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustCasbPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustCasbPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustCasbPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustCasbPolicy:ZeroTrustCasbPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    actions = registerOutput<ZeroTrustCasbPolicyActions>('actions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustCasbPolicyActions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    appliesToAllIntegrations = registerOutput<bool>('appliesToAllIntegrations');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String>('description');
    disabledAt = registerOutput<String>('disabledAt');
    displayName = registerOutput<String>('displayName');
    enabled = registerOutput<bool>('enabled');
    findingTypeId = registerOutput<String>('findingTypeId');
    integrationIds = registerOutput<List<String>>('integrationIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    lastTriggeredAt = registerOutput<String>('lastTriggeredAt');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Creates a typed reference to an existing [ZeroTrustCasbPolicy] resource.
  ZeroTrustCasbPolicy.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustCasbPolicy:ZeroTrustCasbPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    actions = registerOutput<ZeroTrustCasbPolicyActions>('actions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustCasbPolicyActions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    appliesToAllIntegrations = registerOutput<bool>('appliesToAllIntegrations');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String>('description');
    disabledAt = registerOutput<String>('disabledAt');
    displayName = registerOutput<String>('displayName');
    enabled = registerOutput<bool>('enabled');
    findingTypeId = registerOutput<String>('findingTypeId');
    integrationIds = registerOutput<List<String>>('integrationIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    lastTriggeredAt = registerOutput<String>('lastTriggeredAt');
    updatedAt = registerOutput<String>('updatedAt');
  }
}
