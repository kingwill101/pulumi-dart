import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_monitor_group_args.dart';
import 'load_balancer_monitor_group_member.dart';
import 'load_balancer_monitor_group_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleLoadBalancerMonitorGroup = new cloudflare.LoadBalancerMonitorGroup("example_load_balancer_monitor_group", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     description: "Primary datacenter monitors",
///     members: [{
///         enabled: true,
///         monitorId: "monitor_id",
///         monitoringOnly: false,
///         mustBeHealthy: true,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_load_balancer_monitor_group = cloudflare.LoadBalancerMonitorGroup("example_load_balancer_monitor_group",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     description="Primary datacenter monitors",
///     members=[{
///         "enabled": True,
///         "monitor_id": "monitor_id",
///         "monitoring_only": False,
///         "must_be_healthy": True,
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
///     var exampleLoadBalancerMonitorGroup = new Cloudflare.LoadBalancerMonitorGroup("example_load_balancer_monitor_group", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Description = "Primary datacenter monitors",
///         Members = new[]
///         {
///             new Cloudflare.Inputs.LoadBalancerMonitorGroupMemberArgs
///             {
///                 Enabled = true,
///                 MonitorId = "monitor_id",
///                 MonitoringOnly = false,
///                 MustBeHealthy = true,
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
/// 		_, err := cloudflare.NewLoadBalancerMonitorGroup(ctx, "example_load_balancer_monitor_group", &cloudflare.LoadBalancerMonitorGroupArgs{
/// 			AccountId:   pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Description: pulumi.String("Primary datacenter monitors"),
/// 			Members: cloudflare.LoadBalancerMonitorGroupMemberArray{
/// 				&cloudflare.LoadBalancerMonitorGroupMemberArgs{
/// 					Enabled:        pulumi.Bool(true),
/// 					MonitorId:      pulumi.String("monitor_id"),
/// 					MonitoringOnly: pulumi.Bool(false),
/// 					MustBeHealthy:  pulumi.Bool(true),
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
/// resource "cloudflare_loadbalancermonitorgroup" "example_load_balancer_monitor_group" {
///   account_id  = "023e105f4ecef8ad9ca31a8372d0c353"
///   description = "Primary datacenter monitors"
///   members {
///     enabled         = true
///     monitor_id      = "monitor_id"
///     monitoring_only = false
///     must_be_healthy = true
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.LoadBalancerMonitorGroup;
/// import com.pulumi.cloudflare.LoadBalancerMonitorGroupArgs;
/// import com.pulumi.cloudflare.inputs.LoadBalancerMonitorGroupMemberArgs;
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
///         var exampleLoadBalancerMonitorGroup = new LoadBalancerMonitorGroup("exampleLoadBalancerMonitorGroup", LoadBalancerMonitorGroupArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .description("Primary datacenter monitors")
///             .members(LoadBalancerMonitorGroupMemberArgs.builder()
///                 .enabled(true)
///                 .monitorId("monitor_id")
///                 .monitoringOnly(false)
///                 .mustBeHealthy(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleLoadBalancerMonitorGroup:
///     type: cloudflare:LoadBalancerMonitorGroup
///     name: example_load_balancer_monitor_group
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       description: Primary datacenter monitors
///       members:
///         - enabled: true
///           monitorId: monitor_id
///           monitoringOnly: false
///           mustBeHealthy: true
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/loadBalancerMonitorGroup:LoadBalancerMonitorGroup example '<account_id>/<monitor_group_id>'
/// ```
class LoadBalancerMonitorGroup extends pulumi.CustomResource {
  /// Identifier.
  late final pulumi.Output<String> accountId;
  /// The timestamp of when the monitor group was created
  late final pulumi.Output<String> createdOn;
  /// A short description of the monitor group
  late final pulumi.Output<String> description;
  /// List of monitors in this group
  late final pulumi.Output<List<LoadBalancerMonitorGroupMember>> members;
  /// The timestamp of when the monitor group was last updated
  late final pulumi.Output<String> modifiedOn;

  /// Creates a new [LoadBalancerMonitorGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LoadBalancerMonitorGroup]. {@macro pulumi_index_load_balancer_monitor_group_load_balancer_monitor_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LoadBalancerMonitorGroup(
    String name, {
    LoadBalancerMonitorGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/loadBalancerMonitorGroup:LoadBalancerMonitorGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    createdOn = registerOutput<String>('createdOn');
    description = registerOutput<String>('description');
    members = registerOutput<List<LoadBalancerMonitorGroupMember>>('members', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LoadBalancerMonitorGroupMember>(guardedValue, (value) => LoadBalancerMonitorGroupMember.fromMap((value as Map).cast<String, dynamic>())); });
    modifiedOn = registerOutput<String>('modifiedOn');
  }

  /// Gets an existing [LoadBalancerMonitorGroup] resource's state with the given [name] and [id].
  static LoadBalancerMonitorGroup get(
    String name,
    pulumi.Input<String> id, {
    LoadBalancerMonitorGroupState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return LoadBalancerMonitorGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  LoadBalancerMonitorGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/loadBalancerMonitorGroup:LoadBalancerMonitorGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    createdOn = registerOutput<String>('createdOn');
    description = registerOutput<String>('description');
    members = registerOutput<List<LoadBalancerMonitorGroupMember>>('members', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LoadBalancerMonitorGroupMember>(guardedValue, (value) => LoadBalancerMonitorGroupMember.fromMap((value as Map).cast<String, dynamic>())); });
    modifiedOn = registerOutput<String>('modifiedOn');
  }

  /// Creates a typed reference to an existing [LoadBalancerMonitorGroup] resource.
  LoadBalancerMonitorGroup.reference(String urn)
    : super(
        'cloudflare:index/loadBalancerMonitorGroup:LoadBalancerMonitorGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    createdOn = registerOutput<String>('createdOn');
    description = registerOutput<String>('description');
    members = registerOutput<List<LoadBalancerMonitorGroupMember>>('members', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LoadBalancerMonitorGroupMember>(guardedValue, (value) => LoadBalancerMonitorGroupMember.fromMap((value as Map).cast<String, dynamic>())); });
    modifiedOn = registerOutput<String>('modifiedOn');
  }
}
