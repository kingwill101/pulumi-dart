import 'package:pulumi/pulumi.dart' as pulumi;
import 'quota_args.dart';
import 'quota_state.dart';

/// Manages a V2 load balancer quota resource within OpenStack.
///
/// > **Note:** This usually requires admin privileges.
///
/// > **Note:** This resource has a no-op deletion so no actual actions will be done against the OpenStack
/// API in case of delete call.
///
/// > **Note:** This resource has attributes that depend on octavia minor versions.
/// Please ensure your Openstack cloud supports the required minor version.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const project1 = new openstack.identity.Project("project_1", {name: "project_1"});
/// const quota1 = new openstack.loadbalancer.Quota("quota_1", {
///     projectId: project1.id,
///     loadbalancer: 6,
///     listener: 7,
///     member: 8,
///     pool: 9,
///     healthMonitor: 10,
///     l7Policy: 11,
///     l7Rule: 12,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// project1 = openstack.identity.Project("project_1", name="project_1")
/// quota1 = openstack.loadbalancer.Quota("quota_1",
///     project_id=project1.id,
///     loadbalancer=6,
///     listener=7,
///     member=8,
///     pool=9,
///     health_monitor=10,
///     l7_policy=11,
///     l7_rule=12)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project1 = new OpenStack.Identity.Project("project_1", new()
///     {
///         Name = "project_1",
///     });
///
///     var quota1 = new OpenStack.LoadBalancer.Quota("quota_1", new()
///     {
///         ProjectId = project1.Id,
///         Loadbalancer = 6,
///         Listener = 7,
///         Member = 8,
///         Pool = 9,
///         HealthMonitor = 10,
///         L7Policy = 11,
///         L7Rule = 12,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/identity"
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/loadbalancer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project1, err := identity.NewProject(ctx, "project_1", &identity.ProjectArgs{
/// 			Name: pulumi.String("project_1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = loadbalancer.NewQuota(ctx, "quota_1", &loadbalancer.QuotaArgs{
/// 			ProjectId:     project1.ID(),
/// 			Loadbalancer:  pulumi.Int(6),
/// 			Listener:      pulumi.Int(7),
/// 			Member:        pulumi.Int(8),
/// 			Pool:          pulumi.Int(9),
/// 			HealthMonitor: pulumi.Int(10),
/// 			L7Policy:      pulumi.Int(11),
/// 			L7Rule:        pulumi.Int(12),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.openstack.identity.Project;
/// import com.pulumi.openstack.identity.ProjectArgs;
/// import com.pulumi.openstack.loadbalancer.Quota;
/// import com.pulumi.openstack.loadbalancer.QuotaArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var project1 = new Project("project1", ProjectArgs.builder()
///             .name("project_1")
///             .build());
///
///         var quota1 = new Quota("quota1", QuotaArgs.builder()
///             .projectId(project1.id())
///             .loadbalancer(6)
///             .listener(7)
///             .member(8)
///             .pool(9)
///             .healthMonitor(10)
///             .l7Policy(11)
///             .l7Rule(12)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   project1:
///     type: openstack:identity:Project
///     name: project_1
///     properties:
///       name: project_1
///   quota1:
///     type: openstack:loadbalancer:Quota
///     name: quota_1
///     properties:
///       projectId: ${project1.id}
///       loadbalancer: 6
///       listener: 7
///       member: 8
///       pool: 9
///       healthMonitor: 10
///       l7Policy: 11
///       l7Rule: 12
/// ```
///
///
/// ## Import
///
/// Quotas can be imported using the `project_id/region_name`, where region_name is the
/// one defined is the Openstack credentials that are in use. E.g.
///
/// ```sh
/// $ pulumi import openstack:loadbalancer/quota:Quota quota_1 2a0f2240-c5e6-41de-896d-e80d97428d6b/region_1
/// ```
class Quota extends pulumi.CustomResource {
  /// Quota value for health_monitors. Changing
  /// this updates the existing quota. Omitting it sets it to 0.
  late final pulumi.Output<int> healthMonitor;
  /// Quota value for l7_policies. Changing this
  /// updates the existing quota. Omitting it sets it to 0. Available in
  /// **Octavia minor version 2.19**.
  late final pulumi.Output<int> l7Policy;
  /// Quota value for l7_rules. Changing this
  /// updates the existing quota. Omitting it sets it to 0. Available in
  /// **Octavia minor version 2.19**.
  late final pulumi.Output<int> l7Rule;
  /// Quota value for listeners. Changing this updates
  /// the existing quota. Omitting it sets it to 0.
  late final pulumi.Output<int> listener;
  /// Quota value for loadbalancers. Changing this
  /// updates the existing quota. Omitting it sets it to 0.
  late final pulumi.Output<int> loadbalancer;
  /// Quota value for members. Changing this updates
  /// the existing quota. Omitting it sets it to 0.
  late final pulumi.Output<int> member;
  /// Quota value for pools. Changing this updates the
  /// the existing quota. Omitting it sets it to 0.
  late final pulumi.Output<int> pool;
  /// ID of the project to manage quotas. Changing this
  /// creates a new quota.
  late final pulumi.Output<String> projectId;
  /// Region in which to manage quotas. Changing this
  /// creates a new quota. If ommited, the region of the credentials is used.
  late final pulumi.Output<String> region;

  /// Creates a new [Quota].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Quota]. {@macro pulumi_loadbalancer_quota_quota_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Quota(
    String name, {
    QuotaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:loadbalancer/quota:Quota',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.healthMonitor = registerOutput<int>('healthMonitor');
    this.l7Policy = registerOutput<int>('l7Policy');
    this.l7Rule = registerOutput<int>('l7Rule');
    this.listener = registerOutput<int>('listener');
    this.loadbalancer = registerOutput<int>('loadbalancer');
    this.member = registerOutput<int>('member');
    this.pool = registerOutput<int>('pool');
    this.projectId = registerOutput<String>('projectId');
    this.region = registerOutput<String>('region');
  }

  /// Gets an existing [Quota] resource's state with the given [name] and [id].
  static Quota get(
    String name,
    pulumi.Input<String> id, {
    QuotaState? state,
  }) {
    return Quota._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Quota._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:loadbalancer/quota:Quota',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.healthMonitor = registerOutput<int>('healthMonitor');
    this.l7Policy = registerOutput<int>('l7Policy');
    this.l7Rule = registerOutput<int>('l7Rule');
    this.listener = registerOutput<int>('listener');
    this.loadbalancer = registerOutput<int>('loadbalancer');
    this.member = registerOutput<int>('member');
    this.pool = registerOutput<int>('pool');
    this.projectId = registerOutput<String>('projectId');
    this.region = registerOutput<String>('region');
  }
}
