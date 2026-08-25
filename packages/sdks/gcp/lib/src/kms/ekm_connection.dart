import 'package:pulumi/pulumi.dart' as pulumi;
import 'ekm_connection_args.dart';
import 'ekm_connection_service_resolver.dart';
import 'ekm_connection_state.dart';

/// `Ekm Connections` are used to control the connection settings for an `EXTERNAL_VPC` CryptoKey.
/// It is used to connect customer's external key manager to Google Cloud EKM.
///
/// &gt; **Note:** Ekm Connections cannot be deleted from Google Cloud Platform.
///
///
/// To get more information about EkmConnection, see:
///
/// * [API documentation](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.ekmConnections)
/// * How-to Guides
/// * [Creating a Ekm Connection](https://cloud.google.com/kms/docs/create-ekm-connection)
///
/// ## Example Usage
///
/// ### Kms Ekm Connection Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example_ekmconnection = new gcp.kms.EkmConnection("example-ekmconnection", {
///     name: "ekmconnection_example",
///     location: "us-central1",
///     keyManagementMode: "MANUAL",
///     serviceResolvers: [{
///         serviceDirectoryService: "projects/project_id/locations/us-central1/namespaces/namespace_name/services/service_name",
///         hostname: "example-ekm.goog",
///         serverCertificates: [{
///             rawDer: "==HAwIBCCAr6gAwIBAgIUWR+EV4lqiV7Ql12VY==",
///         }],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example_ekmconnection = gcp.kms.EkmConnection("example-ekmconnection",
///     name="ekmconnection_example",
///     location="us-central1",
///     key_management_mode="MANUAL",
///     service_resolvers=[{
///         "service_directory_service": "projects/project_id/locations/us-central1/namespaces/namespace_name/services/service_name",
///         "hostname": "example-ekm.goog",
///         "server_certificates": [{
///             "raw_der": "==HAwIBCCAr6gAwIBAgIUWR+EV4lqiV7Ql12VY==",
///         }],
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
///     var example_ekmconnection = new Gcp.Kms.EkmConnection("example-ekmconnection", new()
///     {
///         Name = "ekmconnection_example",
///         Location = "us-central1",
///         KeyManagementMode = "MANUAL",
///         ServiceResolvers = new[]
///         {
///             new Gcp.Kms.Inputs.EkmConnectionServiceResolverArgs
///             {
///                 ServiceDirectoryService = "projects/project_id/locations/us-central1/namespaces/namespace_name/services/service_name",
///                 Hostname = "example-ekm.goog",
///                 ServerCertificates = new[]
///                 {
///                     new Gcp.Kms.Inputs.EkmConnectionServiceResolverServerCertificateArgs
///                     {
///                         RawDer = "==HAwIBCCAr6gAwIBAgIUWR+EV4lqiV7Ql12VY==",
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kms.NewEkmConnection(ctx, "example-ekmconnection", &kms.EkmConnectionArgs{
/// 			Name:              pulumi.String("ekmconnection_example"),
/// 			Location:          pulumi.String("us-central1"),
/// 			KeyManagementMode: pulumi.String("MANUAL"),
/// 			ServiceResolvers: kms.EkmConnectionServiceResolverArray{
/// 				&kms.EkmConnectionServiceResolverArgs{
/// 					ServiceDirectoryService: pulumi.String("projects/project_id/locations/us-central1/namespaces/namespace_name/services/service_name"),
/// 					Hostname:                pulumi.String("example-ekm.goog"),
/// 					ServerCertificates: kms.EkmConnectionServiceResolverServerCertificateArray{
/// 						&kms.EkmConnectionServiceResolverServerCertificateArgs{
/// 							RawDer: pulumi.String("==HAwIBCCAr6gAwIBAgIUWR+EV4lqiV7Ql12VY=="),
/// 						},
/// 					},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_kms_ekmconnection" "example-ekmconnection" {
///   name                = "ekmconnection_example"
///   location            = "us-central1"
///   key_management_mode = "MANUAL"
///   service_resolvers {
///     service_directory_service = "projects/project_id/locations/us-central1/namespaces/namespace_name/services/service_name"
///     hostname                  = "example-ekm.goog"
///     server_certificates {
///       raw_der = "==HAwIBCCAr6gAwIBAgIUWR+EV4lqiV7Ql12VY=="
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.kms.EkmConnection;
/// import com.pulumi.gcp.kms.EkmConnectionArgs;
/// import com.pulumi.gcp.kms.inputs.EkmConnectionServiceResolverArgs;
/// import com.pulumi.gcp.kms.inputs.EkmConnectionServiceResolverServerCertificateArgs;
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
///         var example_ekmconnection = new EkmConnection("example-ekmconnection", EkmConnectionArgs.builder()
///             .name("ekmconnection_example")
///             .location("us-central1")
///             .keyManagementMode("MANUAL")
///             .serviceResolvers(EkmConnectionServiceResolverArgs.builder()
///                 .serviceDirectoryService("projects/project_id/locations/us-central1/namespaces/namespace_name/services/service_name")
///                 .hostname("example-ekm.goog")
///                 .serverCertificates(EkmConnectionServiceResolverServerCertificateArgs.builder()
///                     .rawDer("==HAwIBCCAr6gAwIBAgIUWR+EV4lqiV7Ql12VY==")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example-ekmconnection:
///     type: gcp:kms:EkmConnection
///     properties:
///       name: ekmconnection_example
///       location: us-central1
///       keyManagementMode: MANUAL
///       serviceResolvers:
///         - serviceDirectoryService: projects/project_id/locations/us-central1/namespaces/namespace_name/services/service_name
///           hostname: example-ekm.goog
///           serverCertificates:
///             - rawDer: ==HAwIBCCAr6gAwIBAgIUWR+EV4lqiV7Ql12VY==
/// ```
///
///
/// ## Import
///
/// EkmConnection can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/ekmConnections/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, EkmConnection can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:kms/ekmConnection:EkmConnection default projects/{{project}}/locations/{{location}}/ekmConnections/{{name}}
/// $ pulumi import gcp:kms/ekmConnection:EkmConnection default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:kms/ekmConnection:EkmConnection default {{location}}/{{name}}
/// ```
class EkmConnection extends pulumi.CustomResource {
  /// Output only. The time at which the EkmConnection was created.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;
  /// Optional. Identifies the EKM Crypto Space that this EkmConnection maps to. Note: This field is required if KeyManagementMode is CLOUD_KMS.
  late final pulumi.Output<String> cryptoSpacePath;
  /// Optional. Etag of the currently stored EkmConnection.
  late final pulumi.Output<String> etag;
  /// Optional. Describes who can perform control plane operations on the EKM. If unset, this defaults to MANUAL
  /// Default value is `MANUAL`.
  /// Possible values are: `MANUAL`, `CLOUD_KMS`.
  late final pulumi.Output<String?> keyManagementMode;
  /// The location for the EkmConnection.
  /// A full list of valid locations can be found by running `gcloud kms locations list`.
  late final pulumi.Output<String> location;
  /// The resource name for the EkmConnection.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// A list of ServiceResolvers where the EKM can be reached. There should be one ServiceResolver per EKM replica. Currently, only a single ServiceResolver is supported
  /// Structure is documented below.
  late final pulumi.Output<List<EkmConnectionServiceResolver>> serviceResolvers;

  /// Creates a new [EkmConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EkmConnection]. {@macro pulumi_kms_ekm_connection_ekm_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EkmConnection(
    String name, {
    EkmConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:kms/ekmConnection:EkmConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    createTime = registerOutput<String>('createTime');
    cryptoSpacePath = registerOutput<String>('cryptoSpacePath');
    etag = registerOutput<String>('etag');
    keyManagementMode = registerOutput<String?>('keyManagementMode');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    serviceResolvers = registerOutput<List<EkmConnectionServiceResolver>>('serviceResolvers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EkmConnectionServiceResolver>(guardedValue, (value) => EkmConnectionServiceResolver.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [EkmConnection] resource's state with the given [name] and [id].
  static EkmConnection get(
    String name,
    pulumi.Input<String> id, {
    EkmConnectionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return EkmConnection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  EkmConnection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:kms/ekmConnection:EkmConnection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    cryptoSpacePath = registerOutput<String>('cryptoSpacePath');
    etag = registerOutput<String>('etag');
    keyManagementMode = registerOutput<String?>('keyManagementMode');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    serviceResolvers = registerOutput<List<EkmConnectionServiceResolver>>('serviceResolvers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EkmConnectionServiceResolver>(guardedValue, (value) => EkmConnectionServiceResolver.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [EkmConnection] resource.
  EkmConnection.reference(String urn)
    : super(
        'gcp:kms/ekmConnection:EkmConnection',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    cryptoSpacePath = registerOutput<String>('cryptoSpacePath');
    etag = registerOutput<String>('etag');
    keyManagementMode = registerOutput<String?>('keyManagementMode');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    serviceResolvers = registerOutput<List<EkmConnectionServiceResolver>>('serviceResolvers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EkmConnectionServiceResolver>(guardedValue, (value) => EkmConnectionServiceResolver.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
