import 'package:pulumi/pulumi.dart' as pulumi;
import 'metastore_federation_args.dart';
import 'metastore_federation_backend_metastore.dart';
import 'metastore_federation_state.dart';

/// A managed metastore federation.
///
///
///
/// ## Example Usage
///
/// ### Dataproc Metastore Federation Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultMetastoreService = new gcp.dataproc.MetastoreService("default", {
///     serviceId: "metastore-service",
///     location: "us-central1",
///     tier: "DEVELOPER",
///     hiveMetastoreConfig: {
///         version: "3.1.2",
///         endpointProtocol: "GRPC",
///     },
///     deletionProtection: false,
/// });
/// const _default = new gcp.dataproc.MetastoreFederation("default", {
///     location: "us-central1",
///     federationId: "metastore-fed",
///     version: "3.1.2",
///     backendMetastores: [{
///         rank: "1",
///         name: defaultMetastoreService.id,
///         metastoreType: "DATAPROC_METASTORE",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_metastore_service = gcp.dataproc.MetastoreService("default",
///     service_id="metastore-service",
///     location="us-central1",
///     tier="DEVELOPER",
///     hive_metastore_config={
///         "version": "3.1.2",
///         "endpoint_protocol": "GRPC",
///     },
///     deletion_protection=False)
/// default = gcp.dataproc.MetastoreFederation("default",
///     location="us-central1",
///     federation_id="metastore-fed",
///     version="3.1.2",
///     backend_metastores=[{
///         "rank": "1",
///         "name": default_metastore_service.id,
///         "metastore_type": "DATAPROC_METASTORE",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultMetastoreService = new Gcp.Dataproc.MetastoreService("default", new()
///     {
///         ServiceId = "metastore-service",
///         Location = "us-central1",
///         Tier = "DEVELOPER",
///         HiveMetastoreConfig = new Gcp.Dataproc.Inputs.MetastoreServiceHiveMetastoreConfigArgs
///         {
///             Version = "3.1.2",
///             EndpointProtocol = "GRPC",
///         },
///         DeletionProtection = false,
///     });
///
///     var @default = new Gcp.Dataproc.MetastoreFederation("default", new()
///     {
///         Location = "us-central1",
///         FederationId = "metastore-fed",
///         Version = "3.1.2",
///         BackendMetastores = new[]
///         {
///             new Gcp.Dataproc.Inputs.MetastoreFederationBackendMetastoreArgs
///             {
///                 Rank = "1",
///                 Name = defaultMetastoreService.Id,
///                 MetastoreType = "DATAPROC_METASTORE",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultMetastoreService, err := dataproc.NewMetastoreService(ctx, "default", &dataproc.MetastoreServiceArgs{
/// 			ServiceId: pulumi.String("metastore-service"),
/// 			Location:  pulumi.String("us-central1"),
/// 			Tier:      pulumi.String("DEVELOPER"),
/// 			HiveMetastoreConfig: &dataproc.MetastoreServiceHiveMetastoreConfigArgs{
/// 				Version:          pulumi.String("3.1.2"),
/// 				EndpointProtocol: pulumi.String("GRPC"),
/// 			},
/// 			DeletionProtection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataproc.NewMetastoreFederation(ctx, "default", &dataproc.MetastoreFederationArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			FederationId: pulumi.String("metastore-fed"),
/// 			Version:      pulumi.String("3.1.2"),
/// 			BackendMetastores: dataproc.MetastoreFederationBackendMetastoreArray{
/// 				&dataproc.MetastoreFederationBackendMetastoreArgs{
/// 					Rank:          pulumi.String("1"),
/// 					Name:          defaultMetastoreService.ID(),
/// 					MetastoreType: pulumi.String("DATAPROC_METASTORE"),
/// 				},
/// 			},
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
/// import com.pulumi.gcp.dataproc.MetastoreService;
/// import com.pulumi.gcp.dataproc.MetastoreServiceArgs;
/// import com.pulumi.gcp.dataproc.inputs.MetastoreServiceHiveMetastoreConfigArgs;
/// import com.pulumi.gcp.dataproc.MetastoreFederation;
/// import com.pulumi.gcp.dataproc.MetastoreFederationArgs;
/// import com.pulumi.gcp.dataproc.inputs.MetastoreFederationBackendMetastoreArgs;
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
///         var defaultMetastoreService = new MetastoreService("defaultMetastoreService", MetastoreServiceArgs.builder()
///             .serviceId("metastore-service")
///             .location("us-central1")
///             .tier("DEVELOPER")
///             .hiveMetastoreConfig(MetastoreServiceHiveMetastoreConfigArgs.builder()
///                 .version("3.1.2")
///                 .endpointProtocol("GRPC")
///                 .build())
///             .deletionProtection(false)
///             .build());
///
///         var default_ = new MetastoreFederation("default", MetastoreFederationArgs.builder()
///             .location("us-central1")
///             .federationId("metastore-fed")
///             .version("3.1.2")
///             .backendMetastores(MetastoreFederationBackendMetastoreArgs.builder()
///                 .rank("1")
///                 .name(defaultMetastoreService.id())
///                 .metastoreType("DATAPROC_METASTORE")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:dataproc:MetastoreFederation
///     properties:
///       location: us-central1
///       federationId: metastore-fed
///       version: 3.1.2
///       backendMetastores:
///         - rank: '1'
///           name: ${defaultMetastoreService.id}
///           metastoreType: DATAPROC_METASTORE
///   defaultMetastoreService:
///     type: gcp:dataproc:MetastoreService
///     name: default
///     properties:
///       serviceId: metastore-service
///       location: us-central1
///       tier: DEVELOPER
///       hiveMetastoreConfig:
///         version: 3.1.2
///         endpointProtocol: GRPC
///       deletionProtection: false
/// ```
///
/// ### Dataproc Metastore Federation Bigquery
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultMetastoreService = new gcp.dataproc.MetastoreService("default", {
///     serviceId: "metastore-service",
///     location: "us-central1",
///     tier: "DEVELOPER",
///     hiveMetastoreConfig: {
///         version: "3.1.2",
///         endpointProtocol: "GRPC",
///     },
/// });
/// const project = gcp.organizations.getProject({});
/// const _default = new gcp.dataproc.MetastoreFederation("default", {
///     location: "us-central1",
///     federationId: "metastore-fed",
///     version: "3.1.2",
///     backendMetastores: [
///         {
///             rank: "2",
///             name: project.then(project => project.id),
///             metastoreType: "BIGQUERY",
///         },
///         {
///             rank: "1",
///             name: defaultMetastoreService.id,
///             metastoreType: "DATAPROC_METASTORE",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_metastore_service = gcp.dataproc.MetastoreService("default",
///     service_id="metastore-service",
///     location="us-central1",
///     tier="DEVELOPER",
///     hive_metastore_config={
///         "version": "3.1.2",
///         "endpoint_protocol": "GRPC",
///     })
/// project = gcp.organizations.get_project()
/// default = gcp.dataproc.MetastoreFederation("default",
///     location="us-central1",
///     federation_id="metastore-fed",
///     version="3.1.2",
///     backend_metastores=[
///         {
///             "rank": "2",
///             "name": project.id,
///             "metastore_type": "BIGQUERY",
///         },
///         {
///             "rank": "1",
///             "name": default_metastore_service.id,
///             "metastore_type": "DATAPROC_METASTORE",
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultMetastoreService = new Gcp.Dataproc.MetastoreService("default", new()
///     {
///         ServiceId = "metastore-service",
///         Location = "us-central1",
///         Tier = "DEVELOPER",
///         HiveMetastoreConfig = new Gcp.Dataproc.Inputs.MetastoreServiceHiveMetastoreConfigArgs
///         {
///             Version = "3.1.2",
///             EndpointProtocol = "GRPC",
///         },
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var @default = new Gcp.Dataproc.MetastoreFederation("default", new()
///     {
///         Location = "us-central1",
///         FederationId = "metastore-fed",
///         Version = "3.1.2",
///         BackendMetastores = new[]
///         {
///             new Gcp.Dataproc.Inputs.MetastoreFederationBackendMetastoreArgs
///             {
///                 Rank = "2",
///                 Name = project.Apply(getProjectResult => getProjectResult.Id),
///                 MetastoreType = "BIGQUERY",
///             },
///             new Gcp.Dataproc.Inputs.MetastoreFederationBackendMetastoreArgs
///             {
///                 Rank = "1",
///                 Name = defaultMetastoreService.Id,
///                 MetastoreType = "DATAPROC_METASTORE",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultMetastoreService, err := dataproc.NewMetastoreService(ctx, "default", &dataproc.MetastoreServiceArgs{
/// 			ServiceId: pulumi.String("metastore-service"),
/// 			Location:  pulumi.String("us-central1"),
/// 			Tier:      pulumi.String("DEVELOPER"),
/// 			HiveMetastoreConfig: &dataproc.MetastoreServiceHiveMetastoreConfigArgs{
/// 				Version:          pulumi.String("3.1.2"),
/// 				EndpointProtocol: pulumi.String("GRPC"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataproc.NewMetastoreFederation(ctx, "default", &dataproc.MetastoreFederationArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			FederationId: pulumi.String("metastore-fed"),
/// 			Version:      pulumi.String("3.1.2"),
/// 			BackendMetastores: dataproc.MetastoreFederationBackendMetastoreArray{
/// 				&dataproc.MetastoreFederationBackendMetastoreArgs{
/// 					Rank:          pulumi.String("2"),
/// 					Name:          pulumi.String(project.Id),
/// 					MetastoreType: pulumi.String("BIGQUERY"),
/// 				},
/// 				&dataproc.MetastoreFederationBackendMetastoreArgs{
/// 					Rank:          pulumi.String("1"),
/// 					Name:          defaultMetastoreService.ID(),
/// 					MetastoreType: pulumi.String("DATAPROC_METASTORE"),
/// 				},
/// 			},
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
/// import com.pulumi.gcp.dataproc.MetastoreService;
/// import com.pulumi.gcp.dataproc.MetastoreServiceArgs;
/// import com.pulumi.gcp.dataproc.inputs.MetastoreServiceHiveMetastoreConfigArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.dataproc.MetastoreFederation;
/// import com.pulumi.gcp.dataproc.MetastoreFederationArgs;
/// import com.pulumi.gcp.dataproc.inputs.MetastoreFederationBackendMetastoreArgs;
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
///         var defaultMetastoreService = new MetastoreService("defaultMetastoreService", MetastoreServiceArgs.builder()
///             .serviceId("metastore-service")
///             .location("us-central1")
///             .tier("DEVELOPER")
///             .hiveMetastoreConfig(MetastoreServiceHiveMetastoreConfigArgs.builder()
///                 .version("3.1.2")
///                 .endpointProtocol("GRPC")
///                 .build())
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var default_ = new MetastoreFederation("default", MetastoreFederationArgs.builder()
///             .location("us-central1")
///             .federationId("metastore-fed")
///             .version("3.1.2")
///             .backendMetastores(
///                 MetastoreFederationBackendMetastoreArgs.builder()
///                     .rank("2")
///                     .name(project.id())
///                     .metastoreType("BIGQUERY")
///                     .build(),
///                 MetastoreFederationBackendMetastoreArgs.builder()
///                     .rank("1")
///                     .name(defaultMetastoreService.id())
///                     .metastoreType("DATAPROC_METASTORE")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:dataproc:MetastoreFederation
///     properties:
///       location: us-central1
///       federationId: metastore-fed
///       version: 3.1.2
///       backendMetastores:
///         - rank: '2'
///           name: ${project.id}
///           metastoreType: BIGQUERY
///         - rank: '1'
///           name: ${defaultMetastoreService.id}
///           metastoreType: DATAPROC_METASTORE
///   defaultMetastoreService:
///     type: gcp:dataproc:MetastoreService
///     name: default
///     properties:
///       serviceId: metastore-service
///       location: us-central1
///       tier: DEVELOPER
///       hiveMetastoreConfig:
///         version: 3.1.2
///         endpointProtocol: GRPC
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Federation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/federations/{{federation_id}}`
///
/// * `{{project}}/{{location}}/{{federation_id}}`
///
/// * `{{location}}/{{federation_id}}`
///
/// When using the `pulumi import` command, Federation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataproc/metastoreFederation:MetastoreFederation default projects/{{project}}/locations/{{location}}/federations/{{federation_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataproc/metastoreFederation:MetastoreFederation default {{project}}/{{location}}/{{federation_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataproc/metastoreFederation:MetastoreFederation default {{location}}/{{federation_id}}
/// ```
class MetastoreFederation extends pulumi.CustomResource {
  /// A map from BackendMetastore rank to BackendMetastores from which the federation service serves metadata at query time. The map key represents the order in which BackendMetastores should be evaluated to resolve database names at query time and should be greater than or equal to zero. A BackendMetastore with a lower number will be evaluated before a BackendMetastore with a higher number.
  /// Structure is documented below.
  late final pulumi.Output<List<MetastoreFederationBackendMetastore>> backendMetastores;
  /// Output only. The time when the metastore federation was created.
  late final pulumi.Output<String> createTime;
  late final pulumi.Output<bool?> deletionProtection;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The URI of the endpoint used to access the metastore federation.
  late final pulumi.Output<String> endpointUri;
  /// The ID of the metastore federation. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),
  /// and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between
  /// 3 and 63 characters.
  late final pulumi.Output<String> federationId;
  /// User-defined labels for the metastore federation.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location where the metastore federation should reside.
  late final pulumi.Output<String?> location;
  /// The relative resource name of the metastore federation.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The current state of the metastore federation.
  late final pulumi.Output<String> state;
  /// Additional information about the current state of the metastore federation, if available.
  late final pulumi.Output<String> stateMessage;
  /// A map of resource manager tags.
  /// Resource manager tag keys and values have the same definition as resource manager tags.
  /// Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/{tag_value_id}.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The globally unique resource identifier of the metastore federation.
  late final pulumi.Output<String> uid;
  /// Output only. The time when the metastore federation was last updated.
  late final pulumi.Output<String> updateTime;
  /// The Apache Hive metastore version of the federation. All backend metastore versions must be compatible with the federation version.
  late final pulumi.Output<String> version;

  /// Creates a new [MetastoreFederation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MetastoreFederation]. {@macro pulumi_dataproc_metastore_federation_metastore_federation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MetastoreFederation(
    String name, {
    MetastoreFederationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataproc/metastoreFederation:MetastoreFederation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backendMetastores = registerOutput<List<MetastoreFederationBackendMetastore>>('backendMetastores');
    this.createTime = registerOutput<String>('createTime');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.endpointUri = registerOutput<String>('endpointUri');
    this.federationId = registerOutput<String>('federationId');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.state = registerOutput<String>('state');
    this.stateMessage = registerOutput<String>('stateMessage');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.version = registerOutput<String>('version');
  }

  /// Gets an existing [MetastoreFederation] resource's state with the given [name] and [id].
  static MetastoreFederation get(
    String name,
    pulumi.Input<String> id, {
    MetastoreFederationState? state,
  }) {
    return MetastoreFederation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MetastoreFederation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataproc/metastoreFederation:MetastoreFederation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backendMetastores = registerOutput<List<MetastoreFederationBackendMetastore>>('backendMetastores');
    this.createTime = registerOutput<String>('createTime');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.endpointUri = registerOutput<String>('endpointUri');
    this.federationId = registerOutput<String>('federationId');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.state = registerOutput<String>('state');
    this.stateMessage = registerOutput<String>('stateMessage');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.version = registerOutput<String>('version');
  }
}
