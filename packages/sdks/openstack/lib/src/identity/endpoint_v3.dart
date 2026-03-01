import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_v3_args.dart';
import 'endpoint_v3_state.dart';

/// Manages a V3 Endpoint resource within OpenStack Keystone.
///
/// > **Note:** This usually requires admin privileges.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const service1 = new openstack.identity.ServiceV3("service_1", {
///     name: "my-service",
///     type: "my-service-type",
/// });
/// const endpoint1 = new openstack.identity.EndpointV3("endpoint_1", {
///     name: "my-endpoint",
///     serviceId: service1.id,
///     endpointRegion: service1.region,
///     url: "http://my-endpoint",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// service1 = openstack.identity.ServiceV3("service_1",
///     name="my-service",
///     type="my-service-type")
/// endpoint1 = openstack.identity.EndpointV3("endpoint_1",
///     name="my-endpoint",
///     service_id=service1.id,
///     endpoint_region=service1.region,
///     url="http://my-endpoint")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var service1 = new OpenStack.Identity.ServiceV3("service_1", new()
///     {
///         Name = "my-service",
///         Type = "my-service-type",
///     });
///
///     var endpoint1 = new OpenStack.Identity.EndpointV3("endpoint_1", new()
///     {
///         Name = "my-endpoint",
///         ServiceId = service1.Id,
///         EndpointRegion = service1.Region,
///         Url = "http://my-endpoint",
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
/// 		service1, err := identity.NewServiceV3(ctx, "service_1", &identity.ServiceV3Args{
/// 			Name: pulumi.String("my-service"),
/// 			Type: pulumi.String("my-service-type"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = identity.NewEndpointV3(ctx, "endpoint_1", &identity.EndpointV3Args{
/// 			Name:           pulumi.String("my-endpoint"),
/// 			ServiceId:      service1.ID(),
/// 			EndpointRegion: service1.Region,
/// 			Url:            pulumi.String("http://my-endpoint"),
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
/// import com.pulumi.openstack.identity.ServiceV3;
/// import com.pulumi.openstack.identity.ServiceV3Args;
/// import com.pulumi.openstack.identity.EndpointV3;
/// import com.pulumi.openstack.identity.EndpointV3Args;
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
///         var service1 = new ServiceV3("service1", ServiceV3Args.builder()
///             .name("my-service")
///             .type("my-service-type")
///             .build());
///
///         var endpoint1 = new EndpointV3("endpoint1", EndpointV3Args.builder()
///             .name("my-endpoint")
///             .serviceId(service1.id())
///             .endpointRegion(service1.region())
///             .url("http://my-endpoint")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   service1:
///     type: openstack:identity:ServiceV3
///     name: service_1
///     properties:
///       name: my-service
///       type: my-service-type
///   endpoint1:
///     type: openstack:identity:EndpointV3
///     name: endpoint_1
///     properties:
///       name: my-endpoint
///       serviceId: ${service1.id}
///       endpointRegion: ${service1.region}
///       url: http://my-endpoint
/// ```
///
///
/// ## Import
///
/// Endpoints can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import openstack:identity/endpointV3:EndpointV3 endpoint_1 5392472b-106a-4845-90c6-7c8445f18770
/// ```
class EndpointV3 extends pulumi.CustomResource {
  /// The endpoint region. The `region` and
  /// `endpoint_region` can be different.
  late final pulumi.Output<String> endpointRegion;
  /// The endpoint interface. Valid values are `public`,
  /// `internal` and `admin`. Default value is `public`
  late final pulumi.Output<String?> interface;
  /// The endpoint name.
  late final pulumi.Output<String> name;
  /// The region in which to obtain the V3 Keystone client.
  /// If omitted, the `region` argument of the provider is used.
  late final pulumi.Output<String> region;
  /// The endpoint service ID.
  late final pulumi.Output<String> serviceId;
  /// The service name of the endpoint.
  late final pulumi.Output<String> serviceName;
  /// The service type of the endpoint.
  late final pulumi.Output<String> serviceType;
  /// The endpoint url.
  late final pulumi.Output<String> url;

  /// Creates a new [EndpointV3].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EndpointV3]. {@macro pulumi_identity_endpoint_v3_endpoint_v3_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EndpointV3(
    String name, {
    EndpointV3Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:identity/endpointV3:EndpointV3',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.endpointRegion = registerOutput<String>('endpointRegion');
    this.interface = registerOutput<String?>('interface');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.serviceId = registerOutput<String>('serviceId');
    this.serviceName = registerOutput<String>('serviceName');
    this.serviceType = registerOutput<String>('serviceType');
    this.url = registerOutput<String>('url');
  }

  /// Gets an existing [EndpointV3] resource's state with the given [name] and [id].
  static EndpointV3 get(
    String name,
    pulumi.Input<String> id, {
    EndpointV3State? state,
  }) {
    return EndpointV3._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EndpointV3._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:identity/endpointV3:EndpointV3',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.endpointRegion = registerOutput<String>('endpointRegion');
    this.interface = registerOutput<String?>('interface');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.serviceId = registerOutput<String>('serviceId');
    this.serviceName = registerOutput<String>('serviceName');
    this.serviceType = registerOutput<String>('serviceType');
    this.url = registerOutput<String>('url');
  }
}
