import 'package:pulumi/pulumi.dart' as pulumi;
import 'transfer_accept_args.dart';
import 'transfer_accept_state.dart';

/// Manages a DNS zone transfer accept in the OpenStack DNS Service.
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
///     description: "a transfer accept",
/// });
/// const accept1 = new openstack.dns.TransferAccept("accept_1", {
///     zoneTransferRequestId: request1.id,
///     key: request1.key,
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
///     description="a transfer accept")
/// accept1 = openstack.dns.TransferAccept("accept_1",
///     zone_transfer_request_id=request1.id,
///     key=request1.key)
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
///         Description = "a transfer accept",
///     });
///
///     var accept1 = new OpenStack.Dns.TransferAccept("accept_1", new()
///     {
///         ZoneTransferRequestId = request1.Id,
///         Key = request1.Key,
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
/// 		request1, err := dns.NewTransferRequest(ctx, "request_1", &dns.TransferRequestArgs{
/// 			ZoneId:      exampleZone.ID(),
/// 			Description: pulumi.String("a transfer accept"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dns.NewTransferAccept(ctx, "accept_1", &dns.TransferAcceptArgs{
/// 			ZoneTransferRequestId: request1.ID(),
/// 			Key:                   request1.Key,
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
/// import com.pulumi.openstack.dns.TransferAccept;
/// import com.pulumi.openstack.dns.TransferAcceptArgs;
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
///             .description("a transfer accept")
///             .build());
///
///         var accept1 = new TransferAccept("accept1", TransferAcceptArgs.builder()
///             .zoneTransferRequestId(request1.id())
///             .key(request1.key())
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
///       description: a transfer accept
///   accept1:
///     type: openstack:dns:TransferAccept
///     name: accept_1
///     properties:
///       zoneTransferRequestId: ${request1.id}
///       key: ${request1.key}
/// ```
///
///
/// ## Import
///
/// This resource can be imported by specifying the transferAccept ID:
///
/// ```sh
/// $ pulumi import openstack:dns/transferAccept:TransferAccept accept_1 accept_id
/// ```
class TransferAccept extends pulumi.CustomResource {
  /// Disable wait for zone to reach ACTIVE
  /// status. The check is enabled by default. If this argument is true, zone
  /// will be considered as created/updated if OpenStack accept returned success.
  late final pulumi.Output<bool?> disableStatusCheck;
  /// The transfer key.
  late final pulumi.Output<String> key;
  /// The region in which to obtain the V2 DNS client.
  /// If omitted, the `region` argument of the provider is used.
  /// Changing this creates a new DNS zone zone transfer accept.
  late final pulumi.Output<String> region;
  /// Map of additional options. Changing this creates a
  /// new transfer accept.
  late final pulumi.Output<Map<String, String>?> valueSpecs;
  /// The ID of the zone transfer request.
  late final pulumi.Output<String> zoneTransferRequestId;

  /// Creates a new [TransferAccept].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TransferAccept]. {@macro pulumi_dns_transfer_accept_transfer_accept_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TransferAccept(
    String name, {
    TransferAcceptArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:dns/transferAccept:TransferAccept',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    disableStatusCheck = registerOutput<bool?>('disableStatusCheck');
    key = registerOutput<String>('key');
    region = registerOutput<String>('region');
    valueSpecs = registerOutput<Map<String, String>?>('valueSpecs');
    zoneTransferRequestId = registerOutput<String>('zoneTransferRequestId');
  }

  /// Gets an existing [TransferAccept] resource's state with the given [name] and [id].
  static TransferAccept get(
    String name,
    pulumi.Input<String> id, {
    TransferAcceptState? state,
  }) {
    return TransferAccept._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TransferAccept._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:dns/transferAccept:TransferAccept',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    disableStatusCheck = registerOutput<bool?>('disableStatusCheck');
    key = registerOutput<String>('key');
    region = registerOutput<String>('region');
    valueSpecs = registerOutput<Map<String, String>?>('valueSpecs');
    zoneTransferRequestId = registerOutput<String>('zoneTransferRequestId');
  }
}
