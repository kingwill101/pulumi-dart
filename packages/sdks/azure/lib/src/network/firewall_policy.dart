import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_args.dart';
import 'firewall_policy_dns.dart';
import 'firewall_policy_explicit_proxy.dart';
import 'firewall_policy_identity.dart';
import 'firewall_policy_insights.dart';
import 'firewall_policy_intrusion_detection.dart';
import 'firewall_policy_state.dart';
import 'firewall_policy_threat_intelligence_allowlist.dart';
import 'firewall_policy_tls_certificate.dart';

/// Manages a Firewall Policy.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleFirewallPolicy = new azure.network.FirewallPolicy("example", {
///     name: "example-policy",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_firewall_policy = azure.network.FirewallPolicy("example",
///     name="example-policy",
///     resource_group_name=example.name,
///     location=example.location)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleFirewallPolicy = new Azure.Network.FirewallPolicy("example", new()
///     {
///         Name = "example-policy",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewFirewallPolicy(ctx, "example", &network.FirewallPolicyArgs{
/// 			Name:              pulumi.String("example-policy"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
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
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_network_firewallpolicy" "example" {
///   name                = "example-policy"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.network.FirewallPolicy;
/// import com.pulumi.azure.network.FirewallPolicyArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleFirewallPolicy = new FirewallPolicy("exampleFirewallPolicy", FirewallPolicyArgs.builder()
///             .name("example-policy")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleFirewallPolicy:
///     type: azure:network:FirewallPolicy
///     name: example
///     properties:
///       name: example-policy
///       resourceGroupName: ${example.name}
///       location: ${example.location}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
///
/// ## Import
///
/// Firewall Policies can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/firewallPolicy:FirewallPolicy example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/firewallPolicies/policy1
/// ```
class FirewallPolicy extends pulumi.CustomResource {
  /// Whether enable auto learn private ip range.
  late final pulumi.Output<bool?> autoLearnPrivateRangesEnabled;
  /// The ID of the base Firewall Policy.
  late final pulumi.Output<String?> basePolicyId;
  /// A list of reference to child Firewall Policies of this Firewall Policy.
  late final pulumi.Output<List<String>> childPolicies;
  /// A `dns` block as defined below.
  late final pulumi.Output<FirewallPolicyDns?> dns;
  /// A `explicitProxy` block as defined below.
  late final pulumi.Output<FirewallPolicyExplicitProxy?> explicitProxy;
  /// A list of references to Azure Firewalls that this Firewall Policy is associated with.
  late final pulumi.Output<List<String>> firewalls;
  /// An `identity` block as defined below.
  late final pulumi.Output<FirewallPolicyIdentity?> identity;
  /// An `insights` block as defined below.
  late final pulumi.Output<FirewallPolicyInsights?> insights;
  /// A `intrusionDetection` block as defined below.
  late final pulumi.Output<FirewallPolicyIntrusionDetection?> intrusionDetection;
  /// The Azure Region where the Firewall Policy should exist. Changing this forces a new Firewall Policy to be created.
  late final pulumi.Output<String> location;
  /// The name which should be used for this Firewall Policy. Changing this forces a new Firewall Policy to be created.
  late final pulumi.Output<String> name;
  /// A list of private IP ranges to which traffic will not be SNAT.
  late final pulumi.Output<List<String>?> privateIpRanges;
  /// The name of the Resource Group where the Firewall Policy should exist. Changing this forces a new Firewall Policy to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A list of references to Firewall Policy Rule Collection Groups that belongs to this Firewall Policy.
  late final pulumi.Output<List<String>> ruleCollectionGroups;
  /// The SKU Tier of the Firewall Policy. Possible values are `Standard`, `Premium` and `Basic`. Defaults to `Standard`. Changing this forces a new Firewall Policy to be created.
  late final pulumi.Output<String?> sku;
  /// Whether SQL Redirect traffic filtering is allowed. Enabling this flag requires no rule using ports between `11000`-`11999`.
  late final pulumi.Output<bool?> sqlRedirectAllowed;
  /// A mapping of tags which should be assigned to the Firewall Policy.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A `threatIntelligenceAllowlist` block as defined below.
  late final pulumi.Output<FirewallPolicyThreatIntelligenceAllowlist?> threatIntelligenceAllowlist;
  /// The operation mode for Threat Intelligence. Possible values are `Alert`, `Deny` and `Off`. Defaults to `Alert`.
  late final pulumi.Output<String?> threatIntelligenceMode;
  /// A `tlsCertificate` block as defined below.
  late final pulumi.Output<FirewallPolicyTlsCertificate?> tlsCertificate;

  /// Creates a new [FirewallPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FirewallPolicy]. {@macro pulumi_network_firewall_policy_firewall_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FirewallPolicy(
    String name, {
    FirewallPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/firewallPolicy:FirewallPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoLearnPrivateRangesEnabled = registerOutput<bool?>('autoLearnPrivateRangesEnabled');
    basePolicyId = registerOutput<String?>('basePolicyId');
    childPolicies = registerOutput<List<String>>('childPolicies');
    dns = registerOutput<FirewallPolicyDns?>('dns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirewallPolicyDns.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    explicitProxy = registerOutput<FirewallPolicyExplicitProxy?>('explicitProxy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirewallPolicyExplicitProxy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    firewalls = registerOutput<List<String>>('firewalls');
    identity = registerOutput<FirewallPolicyIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirewallPolicyIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    insights = registerOutput<FirewallPolicyInsights?>('insights', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirewallPolicyInsights.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    intrusionDetection = registerOutput<FirewallPolicyIntrusionDetection?>('intrusionDetection', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirewallPolicyIntrusionDetection.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    privateIpRanges = registerOutput<List<String>?>('privateIpRanges');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    ruleCollectionGroups = registerOutput<List<String>>('ruleCollectionGroups');
    sku = registerOutput<String?>('sku');
    sqlRedirectAllowed = registerOutput<bool?>('sqlRedirectAllowed');
    tags = registerOutput<Map<String, String>?>('tags');
    threatIntelligenceAllowlist = registerOutput<FirewallPolicyThreatIntelligenceAllowlist?>('threatIntelligenceAllowlist', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirewallPolicyThreatIntelligenceAllowlist.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    threatIntelligenceMode = registerOutput<String?>('threatIntelligenceMode');
    tlsCertificate = registerOutput<FirewallPolicyTlsCertificate?>('tlsCertificate', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirewallPolicyTlsCertificate.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [FirewallPolicy] resource's state with the given [name] and [id].
  static FirewallPolicy get(
    String name,
    pulumi.Input<String> id, {
    FirewallPolicyState? state,
  }) {
    return FirewallPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FirewallPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/firewallPolicy:FirewallPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoLearnPrivateRangesEnabled = registerOutput<bool?>('autoLearnPrivateRangesEnabled');
    basePolicyId = registerOutput<String?>('basePolicyId');
    childPolicies = registerOutput<List<String>>('childPolicies');
    dns = registerOutput<FirewallPolicyDns?>('dns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirewallPolicyDns.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    explicitProxy = registerOutput<FirewallPolicyExplicitProxy?>('explicitProxy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirewallPolicyExplicitProxy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    firewalls = registerOutput<List<String>>('firewalls');
    identity = registerOutput<FirewallPolicyIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirewallPolicyIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    insights = registerOutput<FirewallPolicyInsights?>('insights', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirewallPolicyInsights.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    intrusionDetection = registerOutput<FirewallPolicyIntrusionDetection?>('intrusionDetection', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirewallPolicyIntrusionDetection.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    privateIpRanges = registerOutput<List<String>?>('privateIpRanges');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    ruleCollectionGroups = registerOutput<List<String>>('ruleCollectionGroups');
    sku = registerOutput<String?>('sku');
    sqlRedirectAllowed = registerOutput<bool?>('sqlRedirectAllowed');
    tags = registerOutput<Map<String, String>?>('tags');
    threatIntelligenceAllowlist = registerOutput<FirewallPolicyThreatIntelligenceAllowlist?>('threatIntelligenceAllowlist', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirewallPolicyThreatIntelligenceAllowlist.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    threatIntelligenceMode = registerOutput<String?>('threatIntelligenceMode');
    tlsCertificate = registerOutput<FirewallPolicyTlsCertificate?>('tlsCertificate', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirewallPolicyTlsCertificate.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
