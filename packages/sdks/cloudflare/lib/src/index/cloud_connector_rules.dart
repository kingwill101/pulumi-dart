import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_connector_rules_args.dart';
import 'cloud_connector_rules_rule.dart';
import 'cloud_connector_rules_state.dart';

/// Accepted Permissions
///
/// - `Cloud Connector Read`
/// - `Cloud Connector Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleCloudConnectorRules = new cloudflare.CloudConnectorRules("example_cloud_connector_rules", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     rules: [{
///         id: "95c365e17e1b46599cd99e5b231fac4e",
///         description: "Rule description",
///         enabled: true,
///         expression: "http.cookie eq \"a=b\"",
///         parameters: {
///             host: "examplebucket.s3.eu-north-1.amazonaws.com",
///         },
///         cloudConnectorRulesProvider: "aws_s3",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_cloud_connector_rules = cloudflare.CloudConnectorRules("example_cloud_connector_rules",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     rules=[{
///         "id": "95c365e17e1b46599cd99e5b231fac4e",
///         "description": "Rule description",
///         "enabled": True,
///         "expression": "http.cookie eq \"a=b\"",
///         "parameters": {
///             "host": "examplebucket.s3.eu-north-1.amazonaws.com",
///         },
///         "cloud_connector_rules_provider": "aws_s3",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleCloudConnectorRules = new Cloudflare.CloudConnectorRules("example_cloud_connector_rules", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Rules = new[]
///         {
///             new Cloudflare.Inputs.CloudConnectorRulesRuleArgs
///             {
///                 Id = "95c365e17e1b46599cd99e5b231fac4e",
///                 Description = "Rule description",
///                 Enabled = true,
///                 Expression = "http.cookie eq \"a=b\"",
///                 Parameters = new Cloudflare.Inputs.CloudConnectorRulesRuleParametersArgs
///                 {
///                     Host = "examplebucket.s3.eu-north-1.amazonaws.com",
///                 },
///                 CloudConnectorRulesProvider = "aws_s3",
///             },
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
/// 		_, err := cloudflare.NewCloudConnectorRules(ctx, "example_cloud_connector_rules", &cloudflare.CloudConnectorRulesArgs{
/// 			ZoneId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Rules: cloudflare.CloudConnectorRulesRuleArray{
/// 				&cloudflare.CloudConnectorRulesRuleArgs{
/// 					Id:          pulumi.String("95c365e17e1b46599cd99e5b231fac4e"),
/// 					Description: pulumi.String("Rule description"),
/// 					Enabled:     pulumi.Bool(true),
/// 					Expression:  pulumi.String("http.cookie eq \"a=b\""),
/// 					Parameters: &cloudflare.CloudConnectorRulesRuleParametersArgs{
/// 						Host: pulumi.String("examplebucket.s3.eu-north-1.amazonaws.com"),
/// 					},
/// 					CloudConnectorRulesProvider: "aws_s3",
/// 				},
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
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_cloudconnectorrules" "example_cloud_connector_rules" {
///   zone_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   rules {
///     id          = "95c365e17e1b46599cd99e5b231fac4e"
///     description = "Rule description"
///     enabled     = true
///     expression  = "http.cookie eq \"a=b\""
///     parameters = {
///       host = "examplebucket.s3.eu-north-1.amazonaws.com"
///     }
///     cloud_connector_rules_provider = "aws_s3"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.CloudConnectorRules;
/// import com.pulumi.cloudflare.CloudConnectorRulesArgs;
/// import com.pulumi.cloudflare.inputs.CloudConnectorRulesRuleArgs;
/// import com.pulumi.cloudflare.inputs.CloudConnectorRulesRuleParametersArgs;
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
///         var exampleCloudConnectorRules = new CloudConnectorRules("exampleCloudConnectorRules", CloudConnectorRulesArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .rules(CloudConnectorRulesRuleArgs.builder()
///                 .id("95c365e17e1b46599cd99e5b231fac4e")
///                 .description("Rule description")
///                 .enabled(true)
///                 .expression("http.cookie eq \"a=b\"")
///                 .parameters(CloudConnectorRulesRuleParametersArgs.builder()
///                     .host("examplebucket.s3.eu-north-1.amazonaws.com")
///                     .build())
///                 .cloudConnectorRulesProvider("aws_s3")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleCloudConnectorRules:
///     type: cloudflare:CloudConnectorRules
///     name: example_cloud_connector_rules
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       rules:
///         - id: 95c365e17e1b46599cd99e5b231fac4e
///           description: Rule description
///           enabled: true
///           expression: http.cookie eq "a=b"
///           parameters:
///             host: examplebucket.s3.eu-north-1.amazonaws.com
///           cloudConnectorRulesProvider: aws_s3
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/cloudConnectorRules:CloudConnectorRules example '<zone_id>'
/// ```
class CloudConnectorRules extends pulumi.CustomResource {
  late final pulumi.Output<List<CloudConnectorRulesRule>?> rules;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [CloudConnectorRules].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CloudConnectorRules]. {@macro pulumi_index_cloud_connector_rules_cloud_connector_rules_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CloudConnectorRules(
    String name, {
    CloudConnectorRulesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/cloudConnectorRules:CloudConnectorRules',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    rules = registerOutput<List<CloudConnectorRulesRule>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CloudConnectorRulesRule>(guardedValue, (value) => CloudConnectorRulesRule.fromMap((value as Map).cast<String, dynamic>())); });
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [CloudConnectorRules] resource's state with the given [name] and [id].
  static CloudConnectorRules get(
    String name,
    pulumi.Input<String> id, {
    CloudConnectorRulesState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CloudConnectorRules._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CloudConnectorRules._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/cloudConnectorRules:CloudConnectorRules',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    rules = registerOutput<List<CloudConnectorRulesRule>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CloudConnectorRulesRule>(guardedValue, (value) => CloudConnectorRulesRule.fromMap((value as Map).cast<String, dynamic>())); });
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [CloudConnectorRules] resource.
  CloudConnectorRules.reference(String urn)
    : super(
        'cloudflare:index/cloudConnectorRules:CloudConnectorRules',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    rules = registerOutput<List<CloudConnectorRulesRule>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CloudConnectorRulesRule>(guardedValue, (value) => CloudConnectorRulesRule.fromMap((value as Map).cast<String, dynamic>())); });
    zoneId = registerOutput<String>('zoneId');
  }
}
