import 'package:pulumi/pulumi.dart' as pulumi;
import 'registered_limit_v3_args.dart';
import 'registered_limit_v3_state.dart';

/// Manages a V3 Registered Limit resource within OpenStack Keystone.
///
/// &gt; **Note:** You _must_ have admin privileges in your OpenStack cloud to use
/// this resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const glance = openstack.identity.getService({
///     name: "glance",
/// });
/// const limit1 = new openstack.identity.RegisteredLimitV3("limit_1", {
///     serviceId: glance.then(glance => glance.id),
///     resourceName: "image_count_total",
///     defaultLimit: 10,
///     description: "foo",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// glance = openstack.identity.get_service(name="glance")
/// limit1 = openstack.identity.RegisteredLimitV3("limit_1",
///     service_id=glance.id,
///     resource_name_="image_count_total",
///     default_limit=10,
///     description="foo")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var glance = OpenStack.Identity.GetService.Invoke(new()
///     {
///         Name = "glance",
///     });
///
///     var limit1 = new OpenStack.Identity.RegisteredLimitV3("limit_1", new()
///     {
///         ServiceId = glance.Apply(getServiceResult => getServiceResult.Id),
///         ResourceName = "image_count_total",
///         DefaultLimit = 10,
///         Description = "foo",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/identity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		glance, err := identity.GetService(ctx, &identity.GetServiceArgs{
/// 			Name: pulumi.StringRef("glance"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = identity.NewRegisteredLimitV3(ctx, "limit_1", &identity.RegisteredLimitV3Args{
/// 			ServiceId:    pulumi.String(glance.Id),
/// 			ResourceName: pulumi.String("image_count_total"),
/// 			DefaultLimit: pulumi.Int(10),
/// 			Description:  pulumi.String("foo"),
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
/// import com.pulumi.openstack.identity.IdentityFunctions;
/// import com.pulumi.openstack.identity.inputs.GetServiceArgs;
/// import com.pulumi.openstack.identity.RegisteredLimitV3;
/// import com.pulumi.openstack.identity.RegisteredLimitV3Args;
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
///         final var glance = IdentityFunctions.getService(GetServiceArgs.builder()
///             .name("glance")
///             .build());
///
///         var limit1 = new RegisteredLimitV3("limit1", RegisteredLimitV3Args.builder()
///             .serviceId(glance.id())
///             .resourceName("image_count_total")
///             .defaultLimit(10)
///             .description("foo")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   limit1:
///     type: openstack:identity:RegisteredLimitV3
///     name: limit_1
///     properties:
///       serviceId: ${glance.id}
///       resourceName: image_count_total
///       defaultLimit: 10
///       description: foo
/// variables:
///   glance:
///     fn::invoke:
///       function: openstack:identity:getService
///       arguments:
///         name: glance
/// ```
///
///
/// ## Import
///
/// Registered Limits can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import openstack:identity/registeredLimitV3:RegisteredLimitV3 limit_1 89c60255-9bd6-460c-822a-e2b959ede9d2
/// ```
class RegisteredLimitV3 extends pulumi.CustomResource {
  /// Integer for the actual limit.
  late final pulumi.Output<int> defaultLimit;
  /// Description of the limit
  late final pulumi.Output<String?> description;
  /// The region in which to obtain the V3 Keystone client.
  /// If omitted, the `region` argument of the provider is used. Changing this
  /// creates a new registered limit.
  late final pulumi.Output<String> region;
  /// The resource that the limit applies to. On
  /// updates, either service_id, resource_name or region_id must be different than
  /// existing value otherwise it will raise 409.
  late final pulumi.Output<String> resourceName;
  /// The service the limit applies to. On updates,
  /// either service_id, resource_name or region_id must be different than existing
  /// value otherwise it will raise 409.
  late final pulumi.Output<String> serviceId;

  /// Creates a new [RegisteredLimitV3].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegisteredLimitV3]. {@macro pulumi_identity_registered_limit_v3_registered_limit_v3_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegisteredLimitV3(
    String name, {
    RegisteredLimitV3Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:identity/registeredLimitV3:RegisteredLimitV3',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    defaultLimit = registerOutput<int>('defaultLimit');
    description = registerOutput<String?>('description');
    region = registerOutput<String>('region');
    resourceName = registerOutput<String>('resourceName');
    serviceId = registerOutput<String>('serviceId');
  }

  /// Gets an existing [RegisteredLimitV3] resource's state with the given [name] and [id].
  static RegisteredLimitV3 get(
    String name,
    pulumi.Input<String> id, {
    RegisteredLimitV3State? state,
  }) {
    return RegisteredLimitV3._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RegisteredLimitV3._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:identity/registeredLimitV3:RegisteredLimitV3',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    defaultLimit = registerOutput<int>('defaultLimit');
    description = registerOutput<String?>('description');
    region = registerOutput<String>('region');
    resourceName = registerOutput<String>('resourceName');
    serviceId = registerOutput<String>('serviceId');
  }
}
