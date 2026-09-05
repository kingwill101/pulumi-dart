import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_gateway_allocated_connection.dart';
import 'app_gateway_args.dart';
import 'app_gateway_state.dart';

/// &gt; **Warning:** `gcp.beyondcorp.AppGateway` is deprecated. App Connector is being deprecated and creation of new App Connectors is no longer permitted. Use `gcp.beyondcorp.SecurityGateway` instead.
///
/// A BeyondCorp AppGateway resource represents a BeyondCorp protected AppGateway to a remote application. It creates
/// all the necessary GCP components needed for creating a BeyondCorp protected AppGateway. Multiple connectors can be
/// authorised for a single AppGateway.
///
///
/// To get more information about AppGateway, see:
///
/// * [API documentation](https://cloud.google.com/beyondcorp/docs/reference/rest#rest-resource:-v1.projects.locations.appgateways)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/beyondcorp-enterprise/docs/enable-app-connector)
///
/// ## Example Usage
///
/// ### Beyondcorp App Gateway Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const appGateway = new gcp.beyondcorp.AppGateway("app_gateway", {
///     name: "my-app-gateway",
///     type: "TCP_PROXY",
///     region: "us-central1",
///     hostType: "GCP_REGIONAL_MIG",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// app_gateway = gcp.beyondcorp.AppGateway("app_gateway",
///     name="my-app-gateway",
///     type="TCP_PROXY",
///     region="us-central1",
///     host_type="GCP_REGIONAL_MIG")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var appGateway = new Gcp.Beyondcorp.AppGateway("app_gateway", new()
///     {
///         Name = "my-app-gateway",
///         Type = "TCP_PROXY",
///         Region = "us-central1",
///         HostType = "GCP_REGIONAL_MIG",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/beyondcorp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := beyondcorp.NewAppGateway(ctx, "app_gateway", &beyondcorp.AppGatewayArgs{
/// 			Name:     pulumi.String("my-app-gateway"),
/// 			Type:     pulumi.String("TCP_PROXY"),
/// 			Region:   pulumi.String("us-central1"),
/// 			HostType: pulumi.String("GCP_REGIONAL_MIG"),
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
/// resource "gcp_beyondcorp_appgateway" "app_gateway" {
///   name      = "my-app-gateway"
///   type      = "TCP_PROXY"
///   region    = "us-central1"
///   host_type = "GCP_REGIONAL_MIG"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.beyondcorp.AppGateway;
/// import com.pulumi.gcp.beyondcorp.AppGatewayArgs;
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
///         var appGateway = new AppGateway("appGateway", AppGatewayArgs.builder()
///             .name("my-app-gateway")
///             .type("TCP_PROXY")
///             .region("us-central1")
///             .hostType("GCP_REGIONAL_MIG")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   appGateway:
///     type: gcp:beyondcorp:AppGateway
///     name: app_gateway
///     properties:
///       name: my-app-gateway
///       type: TCP_PROXY
///       region: us-central1
///       hostType: GCP_REGIONAL_MIG
/// ```
///
/// ### Beyondcorp App Gateway Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const appGateway = new gcp.beyondcorp.AppGateway("app_gateway", {
///     name: "my-app-gateway",
///     type: "TCP_PROXY",
///     region: "us-central1",
///     displayName: "some display name",
///     labels: {
///         foo: "bar",
///         bar: "baz",
///     },
///     hostType: "GCP_REGIONAL_MIG",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// app_gateway = gcp.beyondcorp.AppGateway("app_gateway",
///     name="my-app-gateway",
///     type="TCP_PROXY",
///     region="us-central1",
///     display_name="some display name",
///     labels={
///         "foo": "bar",
///         "bar": "baz",
///     },
///     host_type="GCP_REGIONAL_MIG")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var appGateway = new Gcp.Beyondcorp.AppGateway("app_gateway", new()
///     {
///         Name = "my-app-gateway",
///         Type = "TCP_PROXY",
///         Region = "us-central1",
///         DisplayName = "some display name",
///         Labels =
///         {
///             { "foo", "bar" },
///             { "bar", "baz" },
///         },
///         HostType = "GCP_REGIONAL_MIG",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/beyondcorp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := beyondcorp.NewAppGateway(ctx, "app_gateway", &beyondcorp.AppGatewayArgs{
/// 			Name:        pulumi.String("my-app-gateway"),
/// 			Type:        pulumi.String("TCP_PROXY"),
/// 			Region:      pulumi.String("us-central1"),
/// 			DisplayName: pulumi.String("some display name"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 				"bar": pulumi.String("baz"),
/// 			},
/// 			HostType: pulumi.String("GCP_REGIONAL_MIG"),
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
/// resource "gcp_beyondcorp_appgateway" "app_gateway" {
///   name         = "my-app-gateway"
///   type         = "TCP_PROXY"
///   region       = "us-central1"
///   display_name = "some display name"
///   labels = {
///     "foo" = "bar"
///     "bar" = "baz"
///   }
///   host_type = "GCP_REGIONAL_MIG"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.beyondcorp.AppGateway;
/// import com.pulumi.gcp.beyondcorp.AppGatewayArgs;
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
///         var appGateway = new AppGateway("appGateway", AppGatewayArgs.builder()
///             .name("my-app-gateway")
///             .type("TCP_PROXY")
///             .region("us-central1")
///             .displayName("some display name")
///             .labels(Map.ofEntries(
///                 Map.entry("foo", "bar"),
///                 Map.entry("bar", "baz")
///             ))
///             .hostType("GCP_REGIONAL_MIG")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   appGateway:
///     type: gcp:beyondcorp:AppGateway
///     name: app_gateway
///     properties:
///       name: my-app-gateway
///       type: TCP_PROXY
///       region: us-central1
///       displayName: some display name
///       labels:
///         foo: bar
///         bar: baz
///       hostType: GCP_REGIONAL_MIG
/// ```
///
///
/// ## Import
///
/// AppGateway can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/appGateways/{{name}}`
/// * `{{project}}/{{region}}/{{name}}`
/// * `{{region}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, AppGateway can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:beyondcorp/appGateway:AppGateway default projects/{{project}}/locations/{{region}}/appGateways/{{name}}
/// $ pulumi import gcp:beyondcorp/appGateway:AppGateway default {{project}}/{{region}}/{{name}}
/// $ pulumi import gcp:beyondcorp/appGateway:AppGateway default {{region}}/{{name}}
/// $ pulumi import gcp:beyondcorp/appGateway:AppGateway default {{name}}
/// ```
class AppGateway extends pulumi.CustomResource {
  /// A list of connections allocated for the Gateway.
  /// Structure is documented below.
  late final pulumi.Output<List<AppGatewayAllocatedConnection>> allocatedConnections;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// An arbitrary user-provided name for the AppGateway.
  late final pulumi.Output<String?> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The type of hosting used by the AppGateway.
  /// Default value is `HOST_TYPE_UNSPECIFIED`.
  /// Possible values are: `HOST_TYPE_UNSPECIFIED`, `GCP_REGIONAL_MIG`.
  late final pulumi.Output<String?> hostType;
  /// Resource labels to represent user provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// ID of the AppGateway.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The region of the AppGateway.
  late final pulumi.Output<String?> region;
  /// Represents the different states of a AppGateway.
  late final pulumi.Output<String> state;
  /// The type of network connectivity used by the AppGateway.
  /// Default value is `TYPE_UNSPECIFIED`.
  /// Possible values are: `TYPE_UNSPECIFIED`, `TCP_PROXY`.
  late final pulumi.Output<String?> type;
  /// Server-defined URI for this resource.
  late final pulumi.Output<String> uri;

  /// Creates a new [AppGateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppGateway]. {@macro pulumi_beyondcorp_app_gateway_app_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppGateway(
    String name, {
    AppGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:beyondcorp/appGateway:AppGateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    allocatedConnections = registerOutput<List<AppGatewayAllocatedConnection>>('allocatedConnections', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AppGatewayAllocatedConnection>(guardedValue, (value) => AppGatewayAllocatedConnection.fromMap((value as Map).cast<String, dynamic>())); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    hostType = registerOutput<String?>('hostType');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    region = registerOutput<String?>('region');
    state = registerOutput<String>('state');
    type = registerOutput<String?>('type');
    uri = registerOutput<String>('uri');
  }

  /// Gets an existing [AppGateway] resource's state with the given [name] and [id].
  static AppGateway get(
    String name,
    pulumi.Input<String> id, {
    AppGatewayState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AppGateway._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AppGateway._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:beyondcorp/appGateway:AppGateway',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allocatedConnections = registerOutput<List<AppGatewayAllocatedConnection>>('allocatedConnections', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AppGatewayAllocatedConnection>(guardedValue, (value) => AppGatewayAllocatedConnection.fromMap((value as Map).cast<String, dynamic>())); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    hostType = registerOutput<String?>('hostType');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    region = registerOutput<String?>('region');
    this.state = registerOutput<String>('state');
    type = registerOutput<String?>('type');
    uri = registerOutput<String>('uri');
  }

  /// Creates a typed reference to an existing [AppGateway] resource.
  AppGateway.reference(String urn)
    : super(
        'gcp:beyondcorp/appGateway:AppGateway',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    allocatedConnections = registerOutput<List<AppGatewayAllocatedConnection>>('allocatedConnections', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AppGatewayAllocatedConnection>(guardedValue, (value) => AppGatewayAllocatedConnection.fromMap((value as Map).cast<String, dynamic>())); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    hostType = registerOutput<String?>('hostType');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    region = registerOutput<String?>('region');
    state = registerOutput<String>('state');
    type = registerOutput<String?>('type');
    uri = registerOutput<String>('uri');
  }
}
