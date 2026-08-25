import 'package:pulumi/pulumi.dart' as pulumi;
import 'discovery_client_args.dart';
import 'discovery_client_error.dart';
import 'discovery_client_state.dart';

/// DiscoveryClient represents an on-premise discovery agent that scans infrastructure and uploads discovery data to Migration Center.
///
///
///
/// ## Example Usage
///
/// ### Migration Center Discovery Client Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.migrationcenter.Source("default", {
///     location: "us-central1",
///     sourceId: "source-test",
///     type: "SOURCE_TYPE_DISCOVERY_CLIENT",
/// });
/// const defaultAccount = new gcp.serviceaccount.Account("default", {
///     accountId: "sa-test",
///     displayName: "Service Account for Discovery Client",
/// });
/// const default2 = new gcp.serviceaccount.Account("default_2", {
///     accountId: "sa-test-two",
///     displayName: "Second Service Account for Discovery Client",
/// });
/// const defaultDiscoveryClient = new gcp.migrationcenter.DiscoveryClient("default", {
///     location: "us-central1",
///     discoveryClientId: "discovery-client-test",
///     source: _default.id,
///     serviceAccount: defaultAccount.email,
///     displayName: "Terraform integration test display",
///     description: "Terraform integration test description",
///     ttl: "86400s",
///     labels: {
///         my_key: "value",
///         second_key: "second_value",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.migrationcenter.Source("default",
///     location="us-central1",
///     source_id="source-test",
///     type="SOURCE_TYPE_DISCOVERY_CLIENT")
/// default_account = gcp.serviceaccount.Account("default",
///     account_id="sa-test",
///     display_name="Service Account for Discovery Client")
/// default2 = gcp.serviceaccount.Account("default_2",
///     account_id="sa-test-two",
///     display_name="Second Service Account for Discovery Client")
/// default_discovery_client = gcp.migrationcenter.DiscoveryClient("default",
///     location="us-central1",
///     discovery_client_id="discovery-client-test",
///     source=default.id,
///     service_account=default_account.email,
///     display_name="Terraform integration test display",
///     description="Terraform integration test description",
///     ttl="86400s",
///     labels={
///         "my_key": "value",
///         "second_key": "second_value",
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
///     var @default = new Gcp.MigrationCenter.Source("default", new()
///     {
///         Location = "us-central1",
///         SourceId = "source-test",
///         Type = "SOURCE_TYPE_DISCOVERY_CLIENT",
///     });
///
///     var defaultAccount = new Gcp.ServiceAccount.Account("default", new()
///     {
///         AccountId = "sa-test",
///         DisplayName = "Service Account for Discovery Client",
///     });
///
///     var default2 = new Gcp.ServiceAccount.Account("default_2", new()
///     {
///         AccountId = "sa-test-two",
///         DisplayName = "Second Service Account for Discovery Client",
///     });
///
///     var defaultDiscoveryClient = new Gcp.MigrationCenter.DiscoveryClient("default", new()
///     {
///         Location = "us-central1",
///         DiscoveryClientId = "discovery-client-test",
///         Source = @default.Id,
///         ServiceAccount = defaultAccount.Email,
///         DisplayName = "Terraform integration test display",
///         Description = "Terraform integration test description",
///         Ttl = "86400s",
///         Labels =
///         {
///             { "my_key", "value" },
///             { "second_key", "second_value" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/migrationcenter"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := migrationcenter.NewSource(ctx, "default", &migrationcenter.SourceArgs{
/// 			Location: pulumi.String("us-central1"),
/// 			SourceId: pulumi.String("source-test"),
/// 			Type:     pulumi.String("SOURCE_TYPE_DISCOVERY_CLIENT"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultAccount, err := serviceaccount.NewAccount(ctx, "default", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("sa-test"),
/// 			DisplayName: pulumi.String("Service Account for Discovery Client"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = serviceaccount.NewAccount(ctx, "default_2", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("sa-test-two"),
/// 			DisplayName: pulumi.String("Second Service Account for Discovery Client"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = migrationcenter.NewDiscoveryClient(ctx, "default", &migrationcenter.DiscoveryClientArgs{
/// 			Location:          pulumi.String("us-central1"),
/// 			DiscoveryClientId: pulumi.String("discovery-client-test"),
/// 			Source:            _default.ID().ToIDOutput().ToStringOutput(),
/// 			ServiceAccount:    defaultAccount.Email,
/// 			DisplayName:       pulumi.String("Terraform integration test display"),
/// 			Description:       pulumi.String("Terraform integration test description"),
/// 			Ttl:               pulumi.String("86400s"),
/// 			Labels: pulumi.StringMap{
/// 				"my_key":     pulumi.String("value"),
/// 				"second_key": pulumi.String("second_value"),
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
/// resource "gcp_migrationcenter_source" "default" {
///   location  = "us-central1"
///   source_id = "source-test"
///   type      = "SOURCE_TYPE_DISCOVERY_CLIENT"
/// }
/// resource "gcp_serviceaccount_account" "default" {
///   account_id   = "sa-test"
///   display_name = "Service Account for Discovery Client"
/// }
/// resource "gcp_serviceaccount_account" "default_2" {
///   account_id   = "sa-test-two"
///   display_name = "Second Service Account for Discovery Client"
/// }
/// resource "gcp_migrationcenter_discoveryclient" "default" {
///   location            = "us-central1"
///   discovery_client_id = "discovery-client-test"
///   source              = gcp_migrationcenter_source.default.id
///   service_account     = gcp_serviceaccount_account.default.email
///   display_name        = "Terraform integration test display"
///   description         = "Terraform integration test description"
///   ttl                 = "86400s"
///   labels = {
///     "my_key"     = "value"
///     "second_key" = "second_value"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.migrationcenter.Source;
/// import com.pulumi.gcp.migrationcenter.SourceArgs;
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.migrationcenter.DiscoveryClient;
/// import com.pulumi.gcp.migrationcenter.DiscoveryClientArgs;
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
///         var default_ = new Source("default", SourceArgs.builder()
///             .location("us-central1")
///             .sourceId("source-test")
///             .type("SOURCE_TYPE_DISCOVERY_CLIENT")
///             .build());
///
///         var defaultAccount = new Account("defaultAccount", AccountArgs.builder()
///             .accountId("sa-test")
///             .displayName("Service Account for Discovery Client")
///             .build());
///
///         var default2 = new Account("default2", AccountArgs.builder()
///             .accountId("sa-test-two")
///             .displayName("Second Service Account for Discovery Client")
///             .build());
///
///         var defaultDiscoveryClient = new DiscoveryClient("defaultDiscoveryClient", DiscoveryClientArgs.builder()
///             .location("us-central1")
///             .discoveryClientId("discovery-client-test")
///             .source(default_.id())
///             .serviceAccount(defaultAccount.email())
///             .displayName("Terraform integration test display")
///             .description("Terraform integration test description")
///             .ttl("86400s")
///             .labels(Map.ofEntries(
///                 Map.entry("my_key", "value"),
///                 Map.entry("second_key", "second_value")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:migrationcenter:Source
///     properties:
///       location: us-central1
///       sourceId: source-test
///       type: SOURCE_TYPE_DISCOVERY_CLIENT
///   defaultAccount:
///     type: gcp:serviceaccount:Account
///     name: default
///     properties:
///       accountId: sa-test
///       displayName: Service Account for Discovery Client
///   default2:
///     type: gcp:serviceaccount:Account
///     name: default_2
///     properties:
///       accountId: sa-test-two
///       displayName: Second Service Account for Discovery Client
///   defaultDiscoveryClient:
///     type: gcp:migrationcenter:DiscoveryClient
///     name: default
///     properties:
///       location: us-central1
///       discoveryClientId: discovery-client-test
///       source: ${default.id}
///       serviceAccount: ${defaultAccount.email}
///       displayName: Terraform integration test display
///       description: Terraform integration test description
///       ttl: 86400s
///       labels:
///         my_key: value
///         second_key: second_value
/// ```
///
///
/// ## Import
///
/// DiscoveryClient can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/discoveryClients/{{discovery_client_id}}`
/// * `{{project}}/{{location}}/{{discovery_client_id}}`
/// * `{{location}}/{{discovery_client_id}}`
///
///
/// When using the `pulumi import` command, DiscoveryClient can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:migrationcenter/discoveryClient:DiscoveryClient default projects/{{project}}/locations/{{location}}/discoveryClients/{{discovery_client_id}}
/// $ pulumi import gcp:migrationcenter/discoveryClient:DiscoveryClient default {{project}}/{{location}}/{{discovery_client_id}}
/// $ pulumi import gcp:migrationcenter/discoveryClient:DiscoveryClient default {{location}}/{{discovery_client_id}}
/// ```
class DiscoveryClient extends pulumi.CustomResource {
  /// Time when the discovery client was first created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Free text description.
  /// Maximum length is 1000 characters.
  late final pulumi.Output<String?> description;
  /// User specified ID for the discovery client. It will become the last
  /// component of the discovery client name. The ID must be unique within the
  /// project, is restricted to lower-cased letters and has a maximum length of
  /// 63 characters. The ID must match the regular expression:
  /// `a-z?`.
  late final pulumi.Output<String> discoveryClientId;
  /// Free text display name.
  /// Maximum length is 63 characters.
  late final pulumi.Output<String?> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Errors affecting client functionality.
  /// Structure is documented below.
  late final pulumi.Output<List<DiscoveryClientError>> errors;
  /// Client expiration time in UTC. If specified, the backend will not accept
  /// new frames after this time.
  late final pulumi.Output<String> expireTime;
  /// Last heartbeat time.
  /// Healthy clients are expected to send heartbeats regularly (normally every
  /// few minutes).
  late final pulumi.Output<String> heartbeatTime;
  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// Identifier. Full name of this discovery client.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Service account used by the discovery client for various operation.
  late final pulumi.Output<String> serviceAccount;
  /// This field is intended for internal use.
  late final pulumi.Output<String> signalsEndpoint;
  /// Full name of the source object associated with this discovery client.
  late final pulumi.Output<String> source;
  /// Current state of the discovery client.
  /// Possible values:
  /// ACTIVE
  /// OFFLINE
  /// DEGRADED
  /// EXPIRED
  late final pulumi.Output<String> state;
  /// Input only. Client time-to-live. If specified, the backend will not accept new
  /// frames after this time.
  /// This field is input only. The derived expiration time is provided as
  /// output through the `expireTime` field.
  late final pulumi.Output<String?> ttl;
  /// Time when the discovery client was last updated. This value is not updated
  /// by heartbeats, to view the last heartbeat time please refer to the
  /// `heartbeatTime` field.
  late final pulumi.Output<String> updateTime;
  /// Client version, as reported in recent heartbeat.
  late final pulumi.Output<String> version;

  /// Creates a new [DiscoveryClient].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DiscoveryClient]. {@macro pulumi_migrationcenter_discovery_client_discovery_client_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DiscoveryClient(
    String name, {
    DiscoveryClientArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:migrationcenter/discoveryClient:DiscoveryClient',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    discoveryClientId = registerOutput<String>('discoveryClientId');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    errors = registerOutput<List<DiscoveryClientError>>('errors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DiscoveryClientError>(guardedValue, (value) => DiscoveryClientError.fromMap((value as Map).cast<String, dynamic>())); });
    expireTime = registerOutput<String>('expireTime');
    heartbeatTime = registerOutput<String>('heartbeatTime');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    serviceAccount = registerOutput<String>('serviceAccount');
    signalsEndpoint = registerOutput<String>('signalsEndpoint');
    source = registerOutput<String>('source');
    state = registerOutput<String>('state');
    ttl = registerOutput<String?>('ttl');
    updateTime = registerOutput<String>('updateTime');
    version = registerOutput<String>('version');
  }

  /// Gets an existing [DiscoveryClient] resource's state with the given [name] and [id].
  static DiscoveryClient get(
    String name,
    pulumi.Input<String> id, {
    DiscoveryClientState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DiscoveryClient._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DiscoveryClient._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:migrationcenter/discoveryClient:DiscoveryClient',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    discoveryClientId = registerOutput<String>('discoveryClientId');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    errors = registerOutput<List<DiscoveryClientError>>('errors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DiscoveryClientError>(guardedValue, (value) => DiscoveryClientError.fromMap((value as Map).cast<String, dynamic>())); });
    expireTime = registerOutput<String>('expireTime');
    heartbeatTime = registerOutput<String>('heartbeatTime');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    serviceAccount = registerOutput<String>('serviceAccount');
    signalsEndpoint = registerOutput<String>('signalsEndpoint');
    source = registerOutput<String>('source');
    this.state = registerOutput<String>('state');
    ttl = registerOutput<String?>('ttl');
    updateTime = registerOutput<String>('updateTime');
    version = registerOutput<String>('version');
  }

  /// Creates a typed reference to an existing [DiscoveryClient] resource.
  DiscoveryClient.reference(String urn)
    : super(
        'gcp:migrationcenter/discoveryClient:DiscoveryClient',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    discoveryClientId = registerOutput<String>('discoveryClientId');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    errors = registerOutput<List<DiscoveryClientError>>('errors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DiscoveryClientError>(guardedValue, (value) => DiscoveryClientError.fromMap((value as Map).cast<String, dynamic>())); });
    expireTime = registerOutput<String>('expireTime');
    heartbeatTime = registerOutput<String>('heartbeatTime');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    serviceAccount = registerOutput<String>('serviceAccount');
    signalsEndpoint = registerOutput<String>('signalsEndpoint');
    source = registerOutput<String>('source');
    state = registerOutput<String>('state');
    ttl = registerOutput<String?>('ttl');
    updateTime = registerOutput<String>('updateTime');
    version = registerOutput<String>('version');
  }
}
