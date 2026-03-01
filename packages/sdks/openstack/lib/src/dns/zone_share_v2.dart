import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_share_v2_args.dart';
import 'zone_share_v2_state.dart';

/// Manages the sharing of a DNS zone in the OpenStack DNS Service.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const example = new openstack.dns.ZoneShareV2("example", {
///     zoneId: "00000000-0000-0000-0000-000000000000",
///     targetProjectId: "11111111-1111-1111-1111-111111111111",
///     projectId: "22222222-2222-2222-2222-222222222222",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// example = openstack.dns.ZoneShareV2("example",
///     zone_id="00000000-0000-0000-0000-000000000000",
///     target_project_id="11111111-1111-1111-1111-111111111111",
///     project_id="22222222-2222-2222-2222-222222222222")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new OpenStack.Dns.ZoneShareV2("example", new()
///     {
///         ZoneId = "00000000-0000-0000-0000-000000000000",
///         TargetProjectId = "11111111-1111-1111-1111-111111111111",
///         ProjectId = "22222222-2222-2222-2222-222222222222",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dns.NewZoneShareV2(ctx, "example", &dns.ZoneShareV2Args{
/// 			ZoneId:          pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			TargetProjectId: pulumi.String("11111111-1111-1111-1111-111111111111"),
/// 			ProjectId:       pulumi.String("22222222-2222-2222-2222-222222222222"),
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
/// import com.pulumi.openstack.dns.ZoneShareV2;
/// import com.pulumi.openstack.dns.ZoneShareV2Args;
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
///         var example = new ZoneShareV2("example", ZoneShareV2Args.builder()
///             .zoneId("00000000-0000-0000-0000-000000000000")
///             .targetProjectId("11111111-1111-1111-1111-111111111111")
///             .projectId("22222222-2222-2222-2222-222222222222")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: openstack:dns:ZoneShareV2
///     properties:
///       zoneId: 00000000-0000-0000-0000-000000000000
///       targetProjectId: 11111111-1111-1111-1111-111111111111
///       projectId: 22222222-2222-2222-2222-222222222222
/// ```
///
///
/// ## Import
///
/// DNS zone share can be imported by specifying the zone ID with share ID and optional project ID:
///
/// bash
///
/// ```sh
/// $ pulumi import openstack:dns/zoneShareV2:ZoneShareV2 share_1 60cbdc69-64f9-49ee-b294-352e71e22827/0e1dae51-aee2-4b44-962f-885bb69f3a5c
/// ```
///
/// ```sh
/// $ pulumi import openstack:dns/zoneShareV2:ZoneShareV2 share_1 60cbdc69-64f9-49ee-b294-352e71e22827/0e1dae51-aee2-4b44-962f-885bb69f3a5c/eb92139f6c054a878852ac9e8cbe612a
/// ```
class ZoneShareV2 extends pulumi.CustomResource {
  /// The ID of the project DNS zone is created for, sets
  /// `X-Auth-Sudo-Tenant-ID` header (requires an assigned user role in target
  /// project).
  late final pulumi.Output<String> projectId;
  /// The region in which to obtain the V2 DNS client. If
  /// omitted, the `region` argument of the provider is used. Changing this creates
  /// a new DNS zone share.
  late final pulumi.Output<String> region;
  /// The ID of the target project with which the
  /// DNS zone will be shared.
  late final pulumi.Output<String> targetProjectId;
  /// The ID of the DNS zone to be shared.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [ZoneShareV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZoneShareV2]. {@macro pulumi_dns_zone_share_v2_zone_share_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZoneShareV2(
    String name, {
    ZoneShareV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:dns/zoneShareV2:ZoneShareV2',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.projectId = registerOutput<String>('projectId');
    this.region = registerOutput<String>('region');
    this.targetProjectId = registerOutput<String>('targetProjectId');
    this.zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [ZoneShareV2] resource's state with the given [name] and [id].
  static ZoneShareV2 get(
    String name,
    pulumi.Input<String> id, {
    ZoneShareV2State? state,
  }) {
    return ZoneShareV2._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ZoneShareV2._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:dns/zoneShareV2:ZoneShareV2',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.projectId = registerOutput<String>('projectId');
    this.region = registerOutput<String>('region');
    this.targetProjectId = registerOutput<String>('targetProjectId');
    this.zoneId = registerOutput<String>('zoneId');
  }
}
