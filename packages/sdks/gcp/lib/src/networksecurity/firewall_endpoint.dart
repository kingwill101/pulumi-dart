import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_endpoint_args.dart';
import 'firewall_endpoint_endpoint_settings.dart';
import 'firewall_endpoint_state.dart';

/// A Firewall endpoint is a Cloud Firewall resource that enables
/// layer 7 advanced protection capabilities, such as intrusion prevention,
/// in your network.
///
///
/// To get more information about FirewallEndpoint, see:
///
/// * [API documentation](https://cloud.google.com/firewall/docs/reference/network-security/rest/v1/organizations.locations.firewallEndpoints)
/// * How-to Guides
/// * [Create and associate firewall endpoints](https://cloud.google.com/firewall/docs/configure-firewall-endpoints)
/// * [Firewall endpoint overview](https://cloud.google.com/firewall/docs/about-firewall-endpoints)
///
/// &gt; **Warning:** If you are using User ADCs (Application Default Credentials) with this resource,
/// you must specify a `billingProjectId` and set `userProjectOverride` to true
/// in the provider configuration. Otherwise the ACM API will return a 403 error.
/// Your account must have the `serviceusage.services.use` permission on the
/// `billingProjectId` you defined.
///
/// ## Example Usage
///
/// ### Network Security Firewall Endpoint Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networksecurity.FirewallEndpoint("default", {
///     name: "my-firewall-endpoint",
///     parent: "organizations/123456789",
///     location: "us-central1-a",
///     billingProjectId: "my-project-name",
///     labels: {
///         foo: "bar",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networksecurity.FirewallEndpoint("default",
///     name="my-firewall-endpoint",
///     parent="organizations/123456789",
///     location="us-central1-a",
///     billing_project_id="my-project-name",
///     labels={
///         "foo": "bar",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.NetworkSecurity.FirewallEndpoint("default", new()
///     {
///         Name = "my-firewall-endpoint",
///         Parent = "organizations/123456789",
///         Location = "us-central1-a",
///         BillingProjectId = "my-project-name",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networksecurity.NewFirewallEndpoint(ctx, "default", &networksecurity.FirewallEndpointArgs{
/// 			Name:             pulumi.String("my-firewall-endpoint"),
/// 			Parent:           pulumi.String("organizations/123456789"),
/// 			Location:         pulumi.String("us-central1-a"),
/// 			BillingProjectId: pulumi.String("my-project-name"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
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
/// resource "gcp_networksecurity_firewallendpoint" "default" {
///   name               = "my-firewall-endpoint"
///   parent             = "organizations/123456789"
///   location           = "us-central1-a"
///   billing_project_id = "my-project-name"
///   labels = {
///     "foo" = "bar"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.networksecurity.FirewallEndpoint;
/// import com.pulumi.gcp.networksecurity.FirewallEndpointArgs;
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
///         var default_ = new FirewallEndpoint("default", FirewallEndpointArgs.builder()
///             .name("my-firewall-endpoint")
///             .parent("organizations/123456789")
///             .location("us-central1-a")
///             .billingProjectId("my-project-name")
///             .labels(Map.of("foo", "bar"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networksecurity:FirewallEndpoint
///     properties:
///       name: my-firewall-endpoint
///       parent: organizations/123456789
///       location: us-central1-a
///       billingProjectId: my-project-name
///       labels:
///         foo: bar
/// ```
///
/// ### Network Security Firewall Endpoint Project
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networksecurity.FirewallEndpoint("default", {
///     name: "my-firewall-endpoint",
///     parent: "projects/my-project-name",
///     location: "us-central1-a",
///     labels: {
///         foo: "bar",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networksecurity.FirewallEndpoint("default",
///     name="my-firewall-endpoint",
///     parent="projects/my-project-name",
///     location="us-central1-a",
///     labels={
///         "foo": "bar",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.NetworkSecurity.FirewallEndpoint("default", new()
///     {
///         Name = "my-firewall-endpoint",
///         Parent = "projects/my-project-name",
///         Location = "us-central1-a",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networksecurity.NewFirewallEndpoint(ctx, "default", &networksecurity.FirewallEndpointArgs{
/// 			Name:     pulumi.String("my-firewall-endpoint"),
/// 			Parent:   pulumi.String("projects/my-project-name"),
/// 			Location: pulumi.String("us-central1-a"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
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
/// resource "gcp_networksecurity_firewallendpoint" "default" {
///   name     = "my-firewall-endpoint"
///   parent   = "projects/my-project-name"
///   location = "us-central1-a"
///   labels = {
///     "foo" = "bar"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.networksecurity.FirewallEndpoint;
/// import com.pulumi.gcp.networksecurity.FirewallEndpointArgs;
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
///         var default_ = new FirewallEndpoint("default", FirewallEndpointArgs.builder()
///             .name("my-firewall-endpoint")
///             .parent("projects/my-project-name")
///             .location("us-central1-a")
///             .labels(Map.of("foo", "bar"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networksecurity:FirewallEndpoint
///     properties:
///       name: my-firewall-endpoint
///       parent: projects/my-project-name
///       location: us-central1-a
///       labels:
///         foo: bar
/// ```
///
///
/// ## Import
///
/// FirewallEndpoint can be imported using any of these accepted formats:
///
/// * `{{parent}}/locations/{{location}}/firewallEndpoints/{{name}}`
///
///
/// When using the `pulumi import` command, FirewallEndpoint can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/firewallEndpoint:FirewallEndpoint default {{parent}}/locations/{{location}}/firewallEndpoints/{{name}}
/// ```
class FirewallEndpoint extends pulumi.CustomResource {
  /// List of networks that are associated with this endpoint in the local zone.
  /// This is a projection of the FirewallEndpointAssociations pointing at this
  /// endpoint. A network will only appear in this list after traffic routing is
  /// fully configured. Format: projects/{project}/global/networks/{name}.
  late final pulumi.Output<List<String>> associatedNetworks;
  /// Project to charge for the deployed firewall endpoint.
  /// This field is required for organization-scoped endpoints.
  /// For project-scoped endpoints, it is optional but must match the
  /// endpoint's project if specified.
  late final pulumi.Output<String> billingProjectId;
  /// Time the firewall endpoint was created in UTC.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Settings for the endpoint.
  /// Structure is documented below.
  late final pulumi.Output<FirewallEndpointEndpointSettings?> endpointSettings;
  /// A map of key/value label pairs to assign to the resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location (zone) of the firewall endpoint.
  late final pulumi.Output<String> location;
  /// The name of the firewall endpoint resource.
  late final pulumi.Output<String> name;
  /// The name of the parent this firewall endpoint belongs to.
  /// Format: `organizations/{organization_id}` or `projects/{project_id}`.
  late final pulumi.Output<String> parent;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Whether reconciling is in progress, recommended per https://google.aip.dev/128.
  late final pulumi.Output<bool> reconciling;
  /// Server-defined URL of this resource.
  late final pulumi.Output<String> selfLink;
  /// The current state of the endpoint.
  late final pulumi.Output<String> state;
  /// Time the firewall endpoint was updated in UTC.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [FirewallEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FirewallEndpoint]. {@macro pulumi_networksecurity_firewall_endpoint_firewall_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FirewallEndpoint(
    String name, {
    FirewallEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/firewallEndpoint:FirewallEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    associatedNetworks = registerOutput<List<String>>('associatedNetworks');
    billingProjectId = registerOutput<String>('billingProjectId');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    endpointSettings = registerOutput<FirewallEndpointEndpointSettings?>('endpointSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirewallEndpointEndpointSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    reconciling = registerOutput<bool>('reconciling');
    selfLink = registerOutput<String>('selfLink');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [FirewallEndpoint] resource's state with the given [name] and [id].
  static FirewallEndpoint get(
    String name,
    pulumi.Input<String> id, {
    FirewallEndpointState? state,
  }) {
    return FirewallEndpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FirewallEndpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/firewallEndpoint:FirewallEndpoint',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    associatedNetworks = registerOutput<List<String>>('associatedNetworks');
    billingProjectId = registerOutput<String>('billingProjectId');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    endpointSettings = registerOutput<FirewallEndpointEndpointSettings?>('endpointSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirewallEndpointEndpointSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    reconciling = registerOutput<bool>('reconciling');
    selfLink = registerOutput<String>('selfLink');
    this.state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }
}
