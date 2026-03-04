import 'package:pulumi/pulumi.dart' as pulumi;
import 'flavor_v2_args.dart';
import 'flavor_v2_state.dart';

/// Manages a V2 load balancer flavor resource within OpenStack.
///
/// &gt; **Note:** This usually requires admin privileges.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const fp1 = new openstack.loadbalancer.FlavorprofileV2("fp_1", {
///     name: "test",
///     providerName: "amphora",
///     flavorData: JSON.stringify({
///         loadbalancer_topology: "ACTIVE_STANDBY",
///     }),
/// });
/// const flavor1 = new openstack.loadbalancer.FlavorV2("flavor_1", {
///     name: "test",
///     description: "This is a test flavor",
///     flavorProfileId: fp1.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_openstack as openstack
///
/// fp1 = openstack.loadbalancer.FlavorprofileV2("fp_1",
///     name="test",
///     provider_name="amphora",
///     flavor_data=json.dumps({
///         "loadbalancer_topology": "ACTIVE_STANDBY",
///     }))
/// flavor1 = openstack.loadbalancer.FlavorV2("flavor_1",
///     name="test",
///     description="This is a test flavor",
///     flavor_profile_id=fp1.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fp1 = new OpenStack.LoadBalancer.FlavorprofileV2("fp_1", new()
///     {
///         Name = "test",
///         ProviderName = "amphora",
///         FlavorData = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["loadbalancer_topology"] = "ACTIVE_STANDBY",
///         }),
///     });
///
///     var flavor1 = new OpenStack.LoadBalancer.FlavorV2("flavor_1", new()
///     {
///         Name = "test",
///         Description = "This is a test flavor",
///         FlavorProfileId = fp1.Id,
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
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/loadbalancer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"loadbalancer_topology": "ACTIVE_STANDBY",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		fp1, err := loadbalancer.NewFlavorprofileV2(ctx, "fp_1", &loadbalancer.FlavorprofileV2Args{
/// 			Name:         pulumi.String("test"),
/// 			ProviderName: pulumi.String("amphora"),
/// 			FlavorData:   pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = loadbalancer.NewFlavorV2(ctx, "flavor_1", &loadbalancer.FlavorV2Args{
/// 			Name:            pulumi.String("test"),
/// 			Description:     pulumi.String("This is a test flavor"),
/// 			FlavorProfileId: fp1.ID(),
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
/// import com.pulumi.openstack.loadbalancer.FlavorprofileV2;
/// import com.pulumi.openstack.loadbalancer.FlavorprofileV2Args;
/// import com.pulumi.openstack.loadbalancer.FlavorV2;
/// import com.pulumi.openstack.loadbalancer.FlavorV2Args;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var fp1 = new FlavorprofileV2("fp1", FlavorprofileV2Args.builder()
///             .name("test")
///             .providerName("amphora")
///             .flavorData(serializeJson(
///                 jsonObject(
///                     jsonProperty("loadbalancer_topology", "ACTIVE_STANDBY")
///                 )))
///             .build());
///
///         var flavor1 = new FlavorV2("flavor1", FlavorV2Args.builder()
///             .name("test")
///             .description("This is a test flavor")
///             .flavorProfileId(fp1.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   fp1:
///     type: openstack:loadbalancer:FlavorprofileV2
///     name: fp_1
///     properties:
///       name: test
///       providerName: amphora
///       flavorData:
///         fn::toJSON:
///           loadbalancer_topology: ACTIVE_STANDBY
///   flavor1:
///     type: openstack:loadbalancer:FlavorV2
///     name: flavor_1
///     properties:
///       name: test
///       description: This is a test flavor
///       flavorProfileId: ${fp1.id}
/// ```
///
///
/// ## Import
///
/// flavors can be imported using their `id`. Example:
///
/// ```sh
/// $ pulumi import openstack:loadbalancer/flavorV2:FlavorV2 flavor_1 2a0f2240-c5e6-41de-896d-e80d97428d6b
/// ```
class FlavorV2 extends pulumi.CustomResource {
  /// The description of the flavor. Changing this
  /// updates the existing flavor.
  late final pulumi.Output<String?> description;

  /// Whether the flavor is enabled or not. Defaults to `true`.
  /// Changing this updates the existing flavor.
  late final pulumi.Output<bool> enabled;

  /// The flavor_profile_id that the flavor
  /// will use. Changing this creates a new flavor.
  late final pulumi.Output<String> flavorProfileId;

  /// Name of the flavor. Changing this updates the existing
  /// flavor.
  late final pulumi.Output<String> name;

  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create an LB member. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// LB flavor.
  late final pulumi.Output<String> region;

  /// Creates a new [FlavorV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FlavorV2]. {@macro pulumi_loadbalancer_flavor_v2_flavor_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FlavorV2(
    String name, {
    FlavorV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:loadbalancer/flavorV2:FlavorV2',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool>('enabled');
    flavorProfileId = registerOutput<String>('flavorProfileId');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [FlavorV2] resource's state with the given [name] and [id].
  static FlavorV2 get(
    String name,
    pulumi.Input<String> id, {
    FlavorV2State? state,
  }) {
    return FlavorV2._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FlavorV2._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:loadbalancer/flavorV2:FlavorV2',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool>('enabled');
    flavorProfileId = registerOutput<String>('flavorProfileId');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
  }
}
