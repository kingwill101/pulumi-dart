import 'package:pulumi/pulumi.dart' as pulumi;
import 'transfer_request_args.dart';
import 'transfer_request_state.dart';

/// Manages a DNS zone transfer request in the OpenStack DNS Service.
///
/// ## Example Usage
///
/// ### Automatically detect the correct network
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const exampleZone = new openstack.dns.Zone("example_zone", {
///     name: "example.com.",
///     email: "jdoe@example.com",
///     description: "An example zone",
///     ttl: 3000,
///     type: "PRIMARY",
/// });
/// const request1 = new openstack.dns.TransferRequest("request_1", {
///     zoneId: exampleZone.id,
///     description: "a transfer request",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// example_zone = openstack.dns.Zone("example_zone",
///     name="example.com.",
///     email="jdoe@example.com",
///     description="An example zone",
///     ttl=3000,
///     type="PRIMARY")
/// request1 = openstack.dns.TransferRequest("request_1",
///     zone_id=example_zone.id,
///     description="a transfer request")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZone = new OpenStack.Dns.Zone("example_zone", new()
///     {
///         Name = "example.com.",
///         Email = "jdoe@example.com",
///         Description = "An example zone",
///         Ttl = 3000,
///         Type = "PRIMARY",
///     });
///
///     var request1 = new OpenStack.Dns.TransferRequest("request_1", new()
///     {
///         ZoneId = exampleZone.Id,
///         Description = "a transfer request",
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
/// 		exampleZone, err := dns.NewZone(ctx, "example_zone", &dns.ZoneArgs{
/// 			Name:        pulumi.String("example.com."),
/// 			Email:       pulumi.String("jdoe@example.com"),
/// 			Description: pulumi.String("An example zone"),
/// 			Ttl:         pulumi.Int(3000),
/// 			Type:        pulumi.String("PRIMARY"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dns.NewTransferRequest(ctx, "request_1", &dns.TransferRequestArgs{
/// 			ZoneId:      exampleZone.ID(),
/// 			Description: pulumi.String("a transfer request"),
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
/// import com.pulumi.openstack.dns.Zone;
/// import com.pulumi.openstack.dns.ZoneArgs;
/// import com.pulumi.openstack.dns.TransferRequest;
/// import com.pulumi.openstack.dns.TransferRequestArgs;
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
///         var exampleZone = new Zone("exampleZone", ZoneArgs.builder()
///             .name("example.com.")
///             .email("jdoe@example.com")
///             .description("An example zone")
///             .ttl(3000)
///             .type("PRIMARY")
///             .build());
///
///         var request1 = new TransferRequest("request1", TransferRequestArgs.builder()
///             .zoneId(exampleZone.id())
///             .description("a transfer request")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZone:
///     type: openstack:dns:Zone
///     name: example_zone
///     properties:
///       name: example.com.
///       email: jdoe@example.com
///       description: An example zone
///       ttl: 3000
///       type: PRIMARY
///   request1:
///     type: openstack:dns:TransferRequest
///     name: request_1
///     properties:
///       zoneId: ${exampleZone.id}
///       description: a transfer request
/// ```
///
///
/// ## Import
///
/// This resource can be imported by specifying the transferRequest ID:
///
/// ```sh
/// $ pulumi import openstack:dns/transferRequest:TransferRequest request_1 request_id
/// ```
class TransferRequest extends pulumi.CustomResource {
  /// A description of the zone tranfer request.
  late final pulumi.Output<String?> description;
  /// Disable wait for zone to reach ACTIVE
  /// status. The check is enabled by default. If this argument is true, zone
  /// will be considered as created/updated if OpenStack request returned success.
  late final pulumi.Output<bool?> disableStatusCheck;
  late final pulumi.Output<String> key;
  /// The region in which to obtain the V2 DNS client.
  /// If omitted, the `region` argument of the provider is used.
  /// Changing this creates a new DNS zone zone transfer accept.
  late final pulumi.Output<String> region;
  /// The target Project ID to transfer to.
  late final pulumi.Output<String> targetProjectId;
  /// Map of additional options. Changing this creates a
  /// new transfer request.
  late final pulumi.Output<Map<String, String>?> valueSpecs;
  /// The ID of the zone for which to create the transfer
  /// request.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [TransferRequest].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TransferRequest]. {@macro pulumi_dns_transfer_request_transfer_request_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TransferRequest(
    String name, {
    TransferRequestArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:dns/transferRequest:TransferRequest',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    disableStatusCheck = registerOutput<bool?>('disableStatusCheck');
    key = registerOutput<String>('key');
    region = registerOutput<String>('region');
    targetProjectId = registerOutput<String>('targetProjectId');
    valueSpecs = registerOutput<Map<String, String>?>('valueSpecs');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [TransferRequest] resource's state with the given [name] and [id].
  static TransferRequest get(
    String name,
    pulumi.Input<String> id, {
    TransferRequestState? state,
  }) {
    return TransferRequest._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TransferRequest._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:dns/transferRequest:TransferRequest',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    disableStatusCheck = registerOutput<bool?>('disableStatusCheck');
    key = registerOutput<String>('key');
    region = registerOutput<String>('region');
    targetProjectId = registerOutput<String>('targetProjectId');
    valueSpecs = registerOutput<Map<String, String>?>('valueSpecs');
    zoneId = registerOutput<String>('zoneId');
  }
}
