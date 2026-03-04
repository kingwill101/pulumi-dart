import 'package:pulumi/pulumi.dart' as pulumi;
import 'lb_flavorprofile_v2_args.dart';
import 'lb_flavorprofile_v2_state.dart';

/// Manages a V2 load balancer flavorprofile resource within OpenStack.
///
/// &gt; **Note:** This usually requires admin privileges.
///
/// ## Example Usage
///
/// ### Using jsonencode
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const flavorprofile1 = new openstack.loadbalancer.FlavorprofileV2("flavorprofile_1", {
///     name: "amphora-single-profile",
///     providerName: "amphora",
///     flavorData: JSON.stringify({
///         loadbalancer_topology: "SINGLE",
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_openstack as openstack
///
/// flavorprofile1 = openstack.loadbalancer.FlavorprofileV2("flavorprofile_1",
///     name="amphora-single-profile",
///     provider_name="amphora",
///     flavor_data=json.dumps({
///         "loadbalancer_topology": "SINGLE",
///     }))
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
///     var flavorprofile1 = new OpenStack.LoadBalancer.FlavorprofileV2("flavorprofile_1", new()
///     {
///         Name = "amphora-single-profile",
///         ProviderName = "amphora",
///         FlavorData = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["loadbalancer_topology"] = "SINGLE",
///         }),
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
/// 			"loadbalancer_topology": "SINGLE",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = loadbalancer.NewFlavorprofileV2(ctx, "flavorprofile_1", &loadbalancer.FlavorprofileV2Args{
/// 			Name:         pulumi.String("amphora-single-profile"),
/// 			ProviderName: pulumi.String("amphora"),
/// 			FlavorData:   pulumi.String(json0),
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
///         var flavorprofile1 = new FlavorprofileV2("flavorprofile1", FlavorprofileV2Args.builder()
///             .name("amphora-single-profile")
///             .providerName("amphora")
///             .flavorData(serializeJson(
///                 jsonObject(
///                     jsonProperty("loadbalancer_topology", "SINGLE")
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   flavorprofile1:
///     type: openstack:loadbalancer:FlavorprofileV2
///     name: flavorprofile_1
///     properties:
///       name: amphora-single-profile
///       providerName: amphora
///       flavorData:
///         fn::toJSON:
///           loadbalancer_topology: SINGLE
/// ```
///
///
/// ### Using plain string
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const flavorprofile1 = new openstack.loadbalancer.FlavorprofileV2("flavorprofile_1", {
///     name: "amphora-single-profile",
///     providerName: "amphora",
///     flavorData: "{\"loadbalancer_topology\": \"SINGLE\"}",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// flavorprofile1 = openstack.loadbalancer.FlavorprofileV2("flavorprofile_1",
///     name="amphora-single-profile",
///     provider_name="amphora",
///     flavor_data="{\"loadbalancer_topology\": \"SINGLE\"}")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var flavorprofile1 = new OpenStack.LoadBalancer.FlavorprofileV2("flavorprofile_1", new()
///     {
///         Name = "amphora-single-profile",
///         ProviderName = "amphora",
///         FlavorData = "{\"loadbalancer_topology\": \"SINGLE\"}",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/loadbalancer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := loadbalancer.NewFlavorprofileV2(ctx, "flavorprofile_1", &loadbalancer.FlavorprofileV2Args{
/// 			Name:         pulumi.String("amphora-single-profile"),
/// 			ProviderName: pulumi.String("amphora"),
/// 			FlavorData:   pulumi.String("{\"loadbalancer_topology\": \"SINGLE\"}"),
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
///         var flavorprofile1 = new FlavorprofileV2("flavorprofile1", FlavorprofileV2Args.builder()
///             .name("amphora-single-profile")
///             .providerName("amphora")
///             .flavorData("{\"loadbalancer_topology\": \"SINGLE\"}")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   flavorprofile1:
///     type: openstack:loadbalancer:FlavorprofileV2
///     name: flavorprofile_1
///     properties:
///       name: amphora-single-profile
///       providerName: amphora
///       flavorData: '{"loadbalancer_topology": "SINGLE"}'
/// ```
///
///
/// ## Import
///
/// flavorprofiles can be imported using their `id`. Example:
///
/// ```sh
/// $ pulumi import openstack:index/lbFlavorprofileV2:LbFlavorprofileV2 flavorprofile_1 2a0f2240-c5e6-41de-896d-e80d97428d6b
/// ```
class LbFlavorprofileV2 extends pulumi.CustomResource {
  /// String that passes the flavor_data for the flavorprofile.
  /// The data that are allowed depend on the `provider_name` that is passed. jsonencode
  /// can be used for readability as shown in the example above.
  /// Changing this updates the existing flavorprofile.
  late final pulumi.Output<String> flavorData;

  /// Name of the flavorprofile. Changing this updates the existing
  /// flavorprofile.
  late final pulumi.Output<String> name;

  /// The provider_name that the flavor_profile will use.
  /// Changing this updates the existing flavorprofile.
  late final pulumi.Output<String> providerName;

  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create an LB member. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// LB flavorprofile.
  late final pulumi.Output<String> region;

  /// Creates a new [LbFlavorprofileV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LbFlavorprofileV2]. {@macro pulumi_index_lb_flavorprofile_v2_lb_flavorprofile_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LbFlavorprofileV2(
    String name, {
    LbFlavorprofileV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:index/lbFlavorprofileV2:LbFlavorprofileV2',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    flavorData = registerOutput<String>('flavorData');
    this.name = registerOutput<String>('name');
    providerName = registerOutput<String>('providerName');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [LbFlavorprofileV2] resource's state with the given [name] and [id].
  static LbFlavorprofileV2 get(
    String name,
    pulumi.Input<String> id, {
    LbFlavorprofileV2State? state,
  }) {
    return LbFlavorprofileV2._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LbFlavorprofileV2._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:index/lbFlavorprofileV2:LbFlavorprofileV2',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    flavorData = registerOutput<String>('flavorData');
    this.name = registerOutput<String>('name');
    providerName = registerOutput<String>('providerName');
    region = registerOutput<String>('region');
  }
}
