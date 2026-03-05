import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_args.dart';
import 'service_state.dart';

/// Manages a V2 Neutron VPN service resource within OpenStack.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const service1 = new openstack.vpnaas.Service("service_1", {
///     name: "my_service",
///     routerId: "14a75700-fc03-4602-9294-26ee44f366b3",
///     adminStateUp: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// service1 = openstack.vpnaas.Service("service_1",
///     name="my_service",
///     router_id="14a75700-fc03-4602-9294-26ee44f366b3",
///     admin_state_up=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var service1 = new OpenStack.VPNaaS.Service("service_1", new()
///     {
///         Name = "my_service",
///         RouterId = "14a75700-fc03-4602-9294-26ee44f366b3",
///         AdminStateUp = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/vpnaas"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vpnaas.NewService(ctx, "service_1", &vpnaas.ServiceArgs{
/// 			Name:         pulumi.String("my_service"),
/// 			RouterId:     pulumi.String("14a75700-fc03-4602-9294-26ee44f366b3"),
/// 			AdminStateUp: pulumi.Bool(true),
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
/// import com.pulumi.openstack.vpnaas.Service;
/// import com.pulumi.openstack.vpnaas.ServiceArgs;
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
///         var service1 = new Service("service1", ServiceArgs.builder()
///             .name("my_service")
///             .routerId("14a75700-fc03-4602-9294-26ee44f366b3")
///             .adminStateUp(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   service1:
///     type: openstack:vpnaas:Service
///     name: service_1
///     properties:
///       name: my_service
///       routerId: 14a75700-fc03-4602-9294-26ee44f366b3
///       adminStateUp: 'true'
/// ```
///
///
/// ## Import
///
/// Services can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import openstack:vpnaas/service:Service service_1 832cb7f3-59fe-40cf-8f64-8350ffc03272
/// ```
class Service extends pulumi.CustomResource {
  /// The administrative state of the resource. Can either be up(true) or down(false).
  /// Changing this updates the administrative state of the existing service.
  late final pulumi.Output<bool?> adminStateUp;
  /// The human-readable description for the service.
  /// Changing this updates the description of the existing service.
  late final pulumi.Output<String?> description;
  /// The read-only external (public) IPv4 address that is used for the VPN service.
  late final pulumi.Output<String> externalV4Ip;
  /// The read-only external (public) IPv6 address that is used for the VPN service.
  late final pulumi.Output<String> externalV6Ip;
  /// The name of the service. Changing this updates the name of
  /// the existing service.
  late final pulumi.Output<String> name;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a VPN service. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// service.
  late final pulumi.Output<String> region;
  /// The ID of the router. Changing this creates a new service.
  late final pulumi.Output<String> routerId;
  /// Indicates whether IPsec VPN service is currently operational. Values are ACTIVE, DOWN, BUILD, ERROR, PENDING_CREATE, PENDING_UPDATE, or PENDING_DELETE.
  late final pulumi.Output<String> status;
  /// SubnetID is the ID of the subnet. Default is null.
  late final pulumi.Output<String?> subnetId;
  /// The owner of the service. Required if admin wants to
  /// create a service for another project. Changing this creates a new service.
  late final pulumi.Output<String> tenantId;
  /// Map of additional options.
  late final pulumi.Output<Map<String, String>?> valueSpecs;

  /// Creates a new [Service].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Service]. {@macro pulumi_vpnaas_service_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Service(
    String name, {
    ServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:vpnaas/service:Service',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    adminStateUp = registerOutput<bool?>('adminStateUp');
    description = registerOutput<String?>('description');
    externalV4Ip = registerOutput<String>('externalV4Ip');
    externalV6Ip = registerOutput<String>('externalV6Ip');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    routerId = registerOutput<String>('routerId');
    status = registerOutput<String>('status');
    subnetId = registerOutput<String?>('subnetId');
    tenantId = registerOutput<String>('tenantId');
    valueSpecs = registerOutput<Map<String, String>?>('valueSpecs');
  }

  /// Gets an existing [Service] resource's state with the given [name] and [id].
  static Service get(
    String name,
    pulumi.Input<String> id, {
    ServiceState? state,
  }) {
    return Service._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Service._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:vpnaas/service:Service',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    adminStateUp = registerOutput<bool?>('adminStateUp');
    description = registerOutput<String?>('description');
    externalV4Ip = registerOutput<String>('externalV4Ip');
    externalV6Ip = registerOutput<String>('externalV6Ip');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    routerId = registerOutput<String>('routerId');
    status = registerOutput<String>('status');
    subnetId = registerOutput<String?>('subnetId');
    tenantId = registerOutput<String>('tenantId');
    valueSpecs = registerOutput<Map<String, String>?>('valueSpecs');
  }
}
