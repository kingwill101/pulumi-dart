import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_monitoring_provider_args.dart';
import 'network_monitoring_provider_state.dart';

/// A Network Monitoring Provider resource that allows third-party network monitoring
/// solutions to integrate with Google Cloud Network Management. A provider acts as
/// the parent resource for MonitoringPoints, NetworkPaths, and WebPaths.
///
///
/// To get more information about NetworkMonitoringProvider, see:
///
/// * [API documentation](https://cloud.google.com/network-intelligence-center/docs/reference/networkmanagement/rest/v1/projects.locations.networkMonitoringProviders)
/// * How-to Guides
/// * [Network Intelligence Center Documentation](https://cloud.google.com/network-intelligence-center/docs)
///
/// ## Example Usage
///
/// ### Network Management Network Monitoring Provider Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const provider = new gcp.networkmanagement.NetworkMonitoringProvider("provider", {
///     networkMonitoringProviderId: "my-provider",
///     location: "global",
///     providerType: "EXTERNAL",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// provider = gcp.networkmanagement.NetworkMonitoringProvider("provider",
///     network_monitoring_provider_id="my-provider",
///     location="global",
///     provider_type="EXTERNAL")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var provider = new Gcp.NetworkManagement.NetworkMonitoringProvider("provider", new()
///     {
///         NetworkMonitoringProviderId = "my-provider",
///         Location = "global",
///         ProviderType = "EXTERNAL",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/networkmanagement"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkmanagement.NewNetworkMonitoringProvider(ctx, "provider", &networkmanagement.NetworkMonitoringProviderArgs{
/// 			NetworkMonitoringProviderId: pulumi.String("my-provider"),
/// 			Location:                    pulumi.String("global"),
/// 			ProviderType:                pulumi.String("EXTERNAL"),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_networkmanagement_networkmonitoringprovider" "provider" {
///   network_monitoring_provider_id = "my-provider"
///   location                       = "global"
///   provider_type                  = "EXTERNAL"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.networkmanagement.NetworkMonitoringProvider;
/// import com.pulumi.gcp.networkmanagement.NetworkMonitoringProviderArgs;
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
///         var provider = new NetworkMonitoringProvider("provider", NetworkMonitoringProviderArgs.builder()
///             .networkMonitoringProviderId("my-provider")
///             .location("global")
///             .providerType("EXTERNAL")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   provider:
///     type: gcp:networkmanagement:NetworkMonitoringProvider
///     properties:
///       networkMonitoringProviderId: my-provider
///       location: global
///       providerType: EXTERNAL
/// ```
///
///
/// ## Import
///
/// NetworkMonitoringProvider can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/networkMonitoringProviders/{{network_monitoring_provider_id}}`
/// * `{{project}}/{{location}}/{{network_monitoring_provider_id}}`
/// * `{{location}}/{{network_monitoring_provider_id}}`
///
///
/// When using the `pulumi import` command, NetworkMonitoringProvider can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkmanagement/networkMonitoringProvider:NetworkMonitoringProvider default projects/{{project}}/locations/{{location}}/networkMonitoringProviders/{{network_monitoring_provider_id}}
/// $ pulumi import gcp:networkmanagement/networkMonitoringProvider:NetworkMonitoringProvider default {{project}}/{{location}}/{{network_monitoring_provider_id}}
/// $ pulumi import gcp:networkmanagement/networkMonitoringProvider:NetworkMonitoringProvider default {{location}}/{{network_monitoring_provider_id}}
/// ```
class NetworkMonitoringProvider extends pulumi.CustomResource {
  /// The time the Network Monitoring Provider was created.
  late final pulumi.Output<String> createTime;
  /// The deletion policy for the Network Monitoring Provider.
  /// Setting `deletionPolicy = "FORCE"` forces the deletion of all nested resources
  /// (MonitoringPoints, NetworkPaths, WebPaths) belonging to this provider on deletion.
  late final pulumi.Output<String?> deletionPolicy;
  /// The list of error messages detected for the Network Monitoring Provider.
  late final pulumi.Output<List<String>> errors;
  /// The location of the Network Monitoring Provider. Currently only `global` is supported.
  late final pulumi.Output<String> location;
  /// The full resource name of the Network Monitoring Provider, in the format
  /// `projects/{project}/locations/{location}/networkMonitoringProviders/{id}`.
  late final pulumi.Output<String> name;
  /// The ID to use for the Network Monitoring Provider. This will become the last
  /// component of the provider's resource name.
  late final pulumi.Output<String> networkMonitoringProviderId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The type of the Network Monitoring Provider.
  /// Currently only `EXTERNAL` is supported.
  late final pulumi.Output<String> providerType;
  /// Link to the provider's UI.
  late final pulumi.Output<String> providerUri;
  /// The current state of the Network Monitoring Provider.
  late final pulumi.Output<String> state;
  /// The time the Network Monitoring Provider was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [NetworkMonitoringProvider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkMonitoringProvider]. {@macro pulumi_networkmanagement_network_monitoring_provider_network_monitoring_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkMonitoringProvider(
    String name, {
    NetworkMonitoringProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkmanagement/networkMonitoringProvider:NetworkMonitoringProvider',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.1.0').merge(options),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String?>('deletionPolicy');
    errors = registerOutput<List<String>>('errors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkMonitoringProviderId = registerOutput<String>('networkMonitoringProviderId');
    project = registerOutput<String>('project');
    providerType = registerOutput<String>('providerType');
    providerUri = registerOutput<String>('providerUri');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [NetworkMonitoringProvider] resource's state with the given [name] and [id].
  static NetworkMonitoringProvider get(
    String name,
    pulumi.Input<String> id, {
    NetworkMonitoringProviderState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return NetworkMonitoringProvider._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  NetworkMonitoringProvider._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkmanagement/networkMonitoringProvider:NetworkMonitoringProvider',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String?>('deletionPolicy');
    errors = registerOutput<List<String>>('errors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkMonitoringProviderId = registerOutput<String>('networkMonitoringProviderId');
    project = registerOutput<String>('project');
    providerType = registerOutput<String>('providerType');
    providerUri = registerOutput<String>('providerUri');
    this.state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [NetworkMonitoringProvider] resource.
  NetworkMonitoringProvider.reference(String urn)
    : super(
        'gcp:networkmanagement/networkMonitoringProvider:NetworkMonitoringProvider',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String?>('deletionPolicy');
    errors = registerOutput<List<String>>('errors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkMonitoringProviderId = registerOutput<String>('networkMonitoringProviderId');
    project = registerOutput<String>('project');
    providerType = registerOutput<String>('providerType');
    providerUri = registerOutput<String>('providerUri');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }
}
