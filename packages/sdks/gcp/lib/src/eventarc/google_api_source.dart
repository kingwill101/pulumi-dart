import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_api_source_args.dart';
import 'google_api_source_logging_config.dart';
import 'google_api_source_state.dart';

/// The Eventarc GoogleApiSource resource
///
///
/// To get more information about GoogleApiSource, see:
///
/// * [API documentation](https://cloud.google.com/eventarc/docs/reference/rest/v1/projects.locations.googleApiSources)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/eventarc/advanced/docs/publish-events/publish-events-google-sources)
///
/// ## Example Usage
///
/// ### Eventarc Google Api Source With Cmek
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const testProject = gcp.organizations.getProject({
///     projectId: "my-project-name",
/// });
/// const testKeyRing = gcp.kms.getKMSKeyRing({
///     name: "keyring",
///     location: "us-central1",
/// });
/// const key = testKeyRing.then(testKeyRing => gcp.kms.getKMSCryptoKey({
///     name: "key",
///     keyRing: testKeyRing.id,
/// }));
/// const keyMember = new gcp.kms.CryptoKeyIAMMember("key_member", {
///     cryptoKeyId: key.then(key => key.id),
///     role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member: testProject.then(testProject => `serviceAccount:service-${testProject.number}@gcp-sa-eventarc.iam.gserviceaccount.com`),
/// });
/// const messageBus = new gcp.eventarc.MessageBus("message_bus", {
///     location: "us-central1",
///     messageBusId: "some-message-bus",
/// });
/// const primary = new gcp.eventarc.GoogleApiSource("primary", {
///     location: "us-central1",
///     googleApiSourceId: "some-google-api-source",
///     destination: messageBus.id,
///     cryptoKeyName: key.then(key => key.id),
/// }, {
///     dependsOn: [keyMember],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test_project = gcp.organizations.get_project(project_id="my-project-name")
/// test_key_ring = gcp.kms.get_kms_key_ring(name="keyring",
///     location="us-central1")
/// key = gcp.kms.get_kms_crypto_key(name="key",
///     key_ring=test_key_ring.id)
/// key_member = gcp.kms.CryptoKeyIAMMember("key_member",
///     crypto_key_id=key.id,
///     role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member=f"serviceAccount:service-{test_project.number}@gcp-sa-eventarc.iam.gserviceaccount.com")
/// message_bus = gcp.eventarc.MessageBus("message_bus",
///     location="us-central1",
///     message_bus_id="some-message-bus")
/// primary = gcp.eventarc.GoogleApiSource("primary",
///     location="us-central1",
///     google_api_source_id="some-google-api-source",
///     destination=message_bus.id,
///     crypto_key_name=key.id,
///     opts = pulumi.ResourceOptions(depends_on=[key_member]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testProject = Gcp.Organizations.GetProject.Invoke(new()
///     {
///         ProjectId = "my-project-name",
///     });
///
///     var testKeyRing = Gcp.Kms.GetKMSKeyRing.Invoke(new()
///     {
///         Name = "keyring",
///         Location = "us-central1",
///     });
///
///     var key = Gcp.Kms.GetKMSCryptoKey.Invoke(new()
///     {
///         Name = "key",
///         KeyRing = testKeyRing.Apply(getKMSKeyRingResult => getKMSKeyRingResult.Id),
///     });
///
///     var keyMember = new Gcp.Kms.CryptoKeyIAMMember("key_member", new()
///     {
///         CryptoKeyId = key.Apply(getKMSCryptoKeyResult => getKMSCryptoKeyResult.Id),
///         Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///         Member = $"serviceAccount:service-{testProject.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-eventarc.iam.gserviceaccount.com",
///     });
///
///     var messageBus = new Gcp.Eventarc.MessageBus("message_bus", new()
///     {
///         Location = "us-central1",
///         MessageBusId = "some-message-bus",
///     });
///
///     var primary = new Gcp.Eventarc.GoogleApiSource("primary", new()
///     {
///         Location = "us-central1",
///         GoogleApiSourceId = "some-google-api-source",
///         Destination = messageBus.Id,
///         CryptoKeyName = key.Apply(getKMSCryptoKeyResult => getKMSCryptoKeyResult.Id),
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             keyMember,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/eventarc"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		testProject, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{
/// 			ProjectId: pulumi.StringRef("my-project-name"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testKeyRing, err := kms.GetKMSKeyRing(ctx, &kms.GetKMSKeyRingArgs{
/// 			Name:     "keyring",
/// 			Location: "us-central1",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		key, err := kms.GetKMSCryptoKey(ctx, &kms.GetKMSCryptoKeyArgs{
/// 			Name:    "key",
/// 			KeyRing: testKeyRing.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		keyMember, err := kms.NewCryptoKeyIAMMember(ctx, "key_member", &kms.CryptoKeyIAMMemberArgs{
/// 			CryptoKeyId: pulumi.String(key.Id),
/// 			Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// 			Member:      pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-eventarc.iam.gserviceaccount.com", testProject.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		messageBus, err := eventarc.NewMessageBus(ctx, "message_bus", &eventarc.MessageBusArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			MessageBusId: pulumi.String("some-message-bus"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eventarc.NewGoogleApiSource(ctx, "primary", &eventarc.GoogleApiSourceArgs{
/// 			Location:          pulumi.String("us-central1"),
/// 			GoogleApiSourceId: pulumi.String("some-google-api-source"),
/// 			Destination:       messageBus.ID(),
/// 			CryptoKeyName:     pulumi.String(key.Id),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			keyMember,
/// 		}))
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.kms.KmsFunctions;
/// import com.pulumi.gcp.kms.inputs.GetKMSKeyRingArgs;
/// import com.pulumi.gcp.kms.inputs.GetKMSCryptoKeyArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
/// import com.pulumi.gcp.eventarc.MessageBus;
/// import com.pulumi.gcp.eventarc.MessageBusArgs;
/// import com.pulumi.gcp.eventarc.GoogleApiSource;
/// import com.pulumi.gcp.eventarc.GoogleApiSourceArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var testProject = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .projectId("my-project-name")
///             .build());
///
///         final var testKeyRing = KmsFunctions.getKMSKeyRing(GetKMSKeyRingArgs.builder()
///             .name("keyring")
///             .location("us-central1")
///             .build());
///
///         final var key = KmsFunctions.getKMSCryptoKey(GetKMSCryptoKeyArgs.builder()
///             .name("key")
///             .keyRing(testKeyRing.id())
///             .build());
///
///         var keyMember = new CryptoKeyIAMMember("keyMember", CryptoKeyIAMMemberArgs.builder()
///             .cryptoKeyId(key.id())
///             .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-eventarc.iam.gserviceaccount.com", testProject.number()))
///             .build());
///
///         var messageBus = new MessageBus("messageBus", MessageBusArgs.builder()
///             .location("us-central1")
///             .messageBusId("some-message-bus")
///             .build());
///
///         var primary = new GoogleApiSource("primary", GoogleApiSourceArgs.builder()
///             .location("us-central1")
///             .googleApiSourceId("some-google-api-source")
///             .destination(messageBus.id())
///             .cryptoKeyName(key.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(keyMember)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   keyMember:
///     type: gcp:kms:CryptoKeyIAMMember
///     name: key_member
///     properties:
///       cryptoKeyId: ${key.id}
///       role: roles/cloudkms.cryptoKeyEncrypterDecrypter
///       member: serviceAccount:service-${testProject.number}@gcp-sa-eventarc.iam.gserviceaccount.com
///   messageBus:
///     type: gcp:eventarc:MessageBus
///     name: message_bus
///     properties:
///       location: us-central1
///       messageBusId: some-message-bus
///   primary:
///     type: gcp:eventarc:GoogleApiSource
///     properties:
///       location: us-central1
///       googleApiSourceId: some-google-api-source
///       destination: ${messageBus.id}
///       cryptoKeyName: ${key.id}
///     options:
///       dependsOn:
///         - ${keyMember}
/// variables:
///   testProject:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments:
///         projectId: my-project-name
///   testKeyRing:
///     fn::invoke:
///       function: gcp:kms:getKMSKeyRing
///       arguments:
///         name: keyring
///         location: us-central1
///   key:
///     fn::invoke:
///       function: gcp:kms:getKMSCryptoKey
///       arguments:
///         name: key
///         keyRing: ${testKeyRing.id}
/// ```
///
///
/// ## Import
///
/// GoogleApiSource can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/googleApiSources/{{google_api_source_id}}`
///
/// * `{{project}}/{{location}}/{{google_api_source_id}}`
///
/// * `{{location}}/{{google_api_source_id}}`
///
/// When using the `pulumi import` command, GoogleApiSource can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:eventarc/googleApiSource:GoogleApiSource default projects/{{project}}/locations/{{location}}/googleApiSources/{{google_api_source_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:eventarc/googleApiSource:GoogleApiSource default {{project}}/{{location}}/{{google_api_source_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:eventarc/googleApiSource:GoogleApiSource default {{location}}/{{google_api_source_id}}
/// ```
class GoogleApiSource extends pulumi.CustomResource {
  /// Resource annotations.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;
  /// The creation time.
  late final pulumi.Output<String> createTime;
  /// Resource name of a KMS crypto key (managed by the user) used to
  /// encrypt/decrypt their event data.
  /// It must match the pattern
  /// `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  late final pulumi.Output<String?> cryptoKeyName;
  /// Destination is the message bus that the GoogleApiSource is delivering to.
  /// It must be point to the full resource name of a MessageBus. Format:
  /// "projects/{PROJECT_ID}/locations/{region}/messagesBuses/{MESSAGE_BUS_ID)
  late final pulumi.Output<String> destination;
  /// Resource display name.
  late final pulumi.Output<String?> displayName;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// This checksum is computed by the server based on the value of other
  /// fields, and might be sent only on update and delete requests to ensure that
  /// the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;
  /// The user-provided ID to be assigned to the GoogleApiSource. It should match
  /// the format `^a-z?$`.
  late final pulumi.Output<String> googleApiSourceId;
  /// Resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// The configuration for Platform Telemetry logging for Eventarc Advanced
  /// resources.
  /// Structure is documented below.
  late final pulumi.Output<GoogleApiSourceLoggingConfig> loggingConfig;
  /// Resource name of the form
  /// projects/{project}/locations/{location}/googleApiSources/{google_api_source}
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Server assigned unique identifier for the channel. The value is a UUID4
  /// string and guaranteed to remain unchanged until the resource is deleted.
  late final pulumi.Output<String> uid;
  /// The last-modified time.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [GoogleApiSource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GoogleApiSource]. {@macro pulumi_eventarc_google_api_source_google_api_source_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GoogleApiSource(
    String name, {
    GoogleApiSourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:eventarc/googleApiSource:GoogleApiSource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    annotations = registerOutput<Map<String, String>?>('annotations');
    createTime = registerOutput<String>('createTime');
    cryptoKeyName = registerOutput<String?>('cryptoKeyName');
    destination = registerOutput<String>('destination');
    displayName = registerOutput<String?>('displayName');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    etag = registerOutput<String>('etag');
    googleApiSourceId = registerOutput<String>('googleApiSourceId');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    loggingConfig = registerOutput<GoogleApiSourceLoggingConfig>('loggingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GoogleApiSourceLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [GoogleApiSource] resource's state with the given [name] and [id].
  static GoogleApiSource get(
    String name,
    pulumi.Input<String> id, {
    GoogleApiSourceState? state,
  }) {
    return GoogleApiSource._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GoogleApiSource._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:eventarc/googleApiSource:GoogleApiSource',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    annotations = registerOutput<Map<String, String>?>('annotations');
    createTime = registerOutput<String>('createTime');
    cryptoKeyName = registerOutput<String?>('cryptoKeyName');
    destination = registerOutput<String>('destination');
    displayName = registerOutput<String?>('displayName');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    etag = registerOutput<String>('etag');
    googleApiSourceId = registerOutput<String>('googleApiSourceId');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    loggingConfig = registerOutput<GoogleApiSourceLoggingConfig>('loggingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GoogleApiSourceLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}
