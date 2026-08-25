import 'package:pulumi/pulumi.dart' as pulumi;
import 'binding_args.dart';
import 'binding_auth_provider_binding.dart';
import 'binding_source.dart';
import 'binding_state.dart';
import 'binding_target.dart';

/// Represents a user-defined Binding.
///
///
///
/// ## Example Usage
///
/// ### Agent Registry Binding Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as google from "@pulumi/google";
///
/// const _default = gcp.agentregistry.getAgent({
///     location: "global",
///     filter: "displayName:Workspace Agent",
/// });
/// const defaultIamConnectorsConnector = new google.index.IamConnectorsConnector("default", {
///     location: "us-central1",
///     connectorId: "ar-binding",
///     connectorTypeParams: [{
///         connectorVersion: "projects/my-project-name/locations/global/providers/gcp/connectors/pubsub/versions/1",
///     }],
/// });
/// const defaultBinding = new gcp.agentregistry.Binding("default", {
///     location: "us-central1",
///     bindingId: "ar-binding",
///     displayName: "My Binding",
///     description: "My GA agent registry binding",
///     source: {
///         identifier: _default.then(_default => _default.urn),
///     },
///     target: {
///         identifier: _default.then(_default => _default.urn),
///     },
///     authProviderBinding: {
///         authProvider: defaultIamConnectorsConnector.id,
///         scopes: ["https://www.googleapis.com/auth/cloud-platform"],
///         continueUri: "https://example.com/continue",
///     },
/// }, {
///     dependsOn: [defaultIamConnectorsConnector],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_google as google
///
/// default = gcp.agentregistry.get_agent(location="global",
///     filter="displayName:Workspace Agent")
/// default_iam_connectors_connector = google.IamConnectorsConnector("default",
///     location=us-central1,
///     connector_id=ar-binding,
///     connector_type_params=[{
///         connectorVersion: projects/my-project-name/locations/global/providers/gcp/connectors/pubsub/versions/1,
///     }])
/// default_binding = gcp.agentregistry.Binding("default",
///     location="us-central1",
///     binding_id="ar-binding",
///     display_name="My Binding",
///     description="My GA agent registry binding",
///     source={
///         "identifier": default.urn,
///     },
///     target={
///         "identifier": default.urn,
///     },
///     auth_provider_binding={
///         "auth_provider": default_iam_connectors_connector["id"],
///         "scopes": ["https://www.googleapis.com/auth/cloud-platform"],
///         "continue_uri": "https://example.com/continue",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[default_iam_connectors_connector]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Google = Pulumi.Google;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Gcp.AgentRegistry.GetAgent.Invoke(new()
///     {
///         Location = "global",
///         Filter = "displayName:Workspace Agent",
///     });
///
///     var defaultIamConnectorsConnector = new Google.IamConnectorsConnector("default", new()
///     {
///         Location = "us-central1",
///         ConnectorId = "ar-binding",
///         ConnectorTypeParams = new[]
///         {
///
///             {
///                 { "connectorVersion", "projects/my-project-name/locations/global/providers/gcp/connectors/pubsub/versions/1" },
///             },
///         },
///     });
///
///     var defaultBinding = new Gcp.AgentRegistry.Binding("default", new()
///     {
///         Location = "us-central1",
///         BindingId = "ar-binding",
///         DisplayName = "My Binding",
///         Description = "My GA agent registry binding",
///         Source = new Gcp.AgentRegistry.Inputs.BindingSourceArgs
///         {
///             Identifier = @default.Apply(@default => @default.Apply(getAgentResult => getAgentResult.Urn)),
///         },
///         Target = new Gcp.AgentRegistry.Inputs.BindingTargetArgs
///         {
///             Identifier = @default.Apply(@default => @default.Apply(getAgentResult => getAgentResult.Urn)),
///         },
///         AuthProviderBinding = new Gcp.AgentRegistry.Inputs.BindingAuthProviderBindingArgs
///         {
///             AuthProvider = defaultIamConnectorsConnector.Id,
///             Scopes = new[]
///             {
///                 "https://www.googleapis.com/auth/cloud-platform",
///             },
///             ContinueUri = "https://example.com/continue",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             defaultIamConnectorsConnector,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/agentregistry"
/// 	"github.com/pulumi/pulumi-google/sdk/go/google"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := agentregistry.GetAgent(ctx, &agentregistry.GetAgentArgs{
/// 			Location: "global",
/// 			Filter:   pulumi.StringRef("displayName:Workspace Agent"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultIamConnectorsConnector, err := google.NewIamConnectorsConnector(ctx, "default", &google.IamConnectorsConnectorArgs{
/// 			Location:    "us-central1",
/// 			ConnectorId: "ar-binding",
/// 			ConnectorTypeParams: []map[string]string{
/// 				{
/// 					"connectorVersion": "projects/my-project-name/locations/global/providers/gcp/connectors/pubsub/versions/1",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = agentregistry.NewBinding(ctx, "default", &agentregistry.BindingArgs{
/// 			Location:    pulumi.String("us-central1"),
/// 			BindingId:   pulumi.String("ar-binding"),
/// 			DisplayName: pulumi.String("My Binding"),
/// 			Description: pulumi.String("My GA agent registry binding"),
/// 			Source: &agentregistry.BindingSourceArgs{
/// 				Identifier: pulumi.String(_default.Urn),
/// 			},
/// 			Target: &agentregistry.BindingTargetArgs{
/// 				Identifier: pulumi.String(_default.Urn),
/// 			},
/// 			AuthProviderBinding: &agentregistry.BindingAuthProviderBindingArgs{
/// 				AuthProvider: defaultIamConnectorsConnector.Id,
/// 				Scopes: pulumi.StringArray{
/// 					pulumi.String("https://www.googleapis.com/auth/cloud-platform"),
/// 				},
/// 				ContinueUri: pulumi.String("https://example.com/continue"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			defaultIamConnectorsConnector,
/// 		}))
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
/// data "gcp_agentregistry_getagent" "default" {
///   location = "global"
///   filter   = "displayName:Workspace Agent"
/// }
///
/// resource "gcp_agentregistry_binding" "default" {
///   depends_on   = [google_iamconnectorsconnector.default]
///   location     = "us-central1"
///   binding_id   = "ar-binding"
///   display_name = "My Binding"
///   description  = "My GA agent registry binding"
///   source = {
///     identifier = data.gcp_agentregistry_getagent.default.urn
///   }
///   target = {
///     identifier = data.gcp_agentregistry_getagent.default.urn
///   }
///   auth_provider_binding = {
///     auth_provider = google_iamconnectorsconnector.default.id
///     scopes        = ["https://www.googleapis.com/auth/cloud-platform"]
///     continue_uri  = "https://example.com/continue"
///   }
/// }
/// resource "google_iamconnectorsconnector" "default" {
///   location     = "us-central1"
///   connector_id = "ar-binding"
///   connector_type_params = [{
///     "connectorVersion" = "projects/my-project-name/locations/global/providers/gcp/connectors/pubsub/versions/1"
///   }]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.agentregistry.AgentregistryFunctions;
/// import com.pulumi.gcp.agentregistry.inputs.GetAgentArgs;
/// import com.pulumi.google.IamConnectorsConnector;
/// import com.pulumi.google.IamConnectorsConnectorArgs;
/// import com.pulumi.gcp.agentregistry.Binding;
/// import com.pulumi.gcp.agentregistry.BindingArgs;
/// import com.pulumi.gcp.agentregistry.inputs.BindingSourceArgs;
/// import com.pulumi.gcp.agentregistry.inputs.BindingTargetArgs;
/// import com.pulumi.gcp.agentregistry.inputs.BindingAuthProviderBindingArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var default = AgentregistryFunctions.getAgent(GetAgentArgs.builder()
///             .location("global")
///             .filter("displayName:Workspace Agent")
///             .build());
///
///         var defaultIamConnectorsConnector = new IamConnectorsConnector("defaultIamConnectorsConnector", IamConnectorsConnectorArgs.builder()
///             .location("us-central1")
///             .connectorId("ar-binding")
///             .connectorTypeParams(Arrays.asList(Map.of("connectorVersion", "projects/my-project-name/locations/global/providers/gcp/connectors/pubsub/versions/1")))
///             .build());
///
///         var defaultBinding = new Binding("defaultBinding", BindingArgs.builder()
///             .location("us-central1")
///             .bindingId("ar-binding")
///             .displayName("My Binding")
///             .description("My GA agent registry binding")
///             .source(BindingSourceArgs.builder()
///                 .identifier(default_.urn())
///                 .build())
///             .target(BindingTargetArgs.builder()
///                 .identifier(default_.urn())
///                 .build())
///             .authProviderBinding(BindingAuthProviderBindingArgs.builder()
///                 .authProvider(defaultIamConnectorsConnector.get("id"))
///                 .scopes("https://www.googleapis.com/auth/cloud-platform")
///                 .continueUri("https://example.com/continue")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(defaultIamConnectorsConnector)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultBinding:
///     type: gcp:agentregistry:Binding
///     name: default
///     properties:
///       location: us-central1
///       bindingId: ar-binding
///       displayName: My Binding
///       description: My GA agent registry binding
///       source:
///         identifier: ${default.urn}
///       target:
///         identifier: ${default.urn}
///       authProviderBinding:
///         authProvider: ${defaultIamConnectorsConnector.id}
///         scopes:
///           - https://www.googleapis.com/auth/cloud-platform
///         continueUri: https://example.com/continue
///     options:
///       dependsOn:
///         - ${defaultIamConnectorsConnector}
///   defaultIamConnectorsConnector:
///     type: google:IamConnectorsConnector
///     name: default
///     properties:
///       location: us-central1
///       connectorId: ar-binding
///       connectorTypeParams:
///         - connectorVersion: projects/my-project-name/locations/global/providers/gcp/connectors/pubsub/versions/1
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:agentregistry:getAgent
///       arguments:
///         location: global
///         filter: displayName:Workspace Agent
/// ```
///
///
/// ## Import
///
/// Binding can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/bindings/{{binding_id}}`
/// * `{{project}}/{{location}}/{{binding_id}}`
/// * `{{location}}/{{binding_id}}`
///
///
/// When using the `pulumi import` command, Binding can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:agentregistry/binding:Binding default projects/{{project}}/locations/{{location}}/bindings/{{binding_id}}
/// $ pulumi import gcp:agentregistry/binding:Binding default {{project}}/{{location}}/{{binding_id}}
/// $ pulumi import gcp:agentregistry/binding:Binding default {{location}}/{{binding_id}}
/// ```
class Binding extends pulumi.CustomResource {
  /// The auth provider of the Binding.
  /// Structure is documented below.
  late final pulumi.Output<BindingAuthProviderBinding> authProviderBinding;
  /// The name of the Binding.
  late final pulumi.Output<String> bindingId;
  /// The timestamp when the resource was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The description of the Binding.
  late final pulumi.Output<String?> description;
  /// User-defined display name for the Binding.
  late final pulumi.Output<String?> displayName;
  /// The location of the resource.
  late final pulumi.Output<String> location;
  /// The resource name of the Binding.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The source of the Binding.
  /// Structure is documented below.
  late final pulumi.Output<BindingSource> source;
  /// The target of the Binding.
  /// Structure is documented below.
  late final pulumi.Output<BindingTarget> target;
  /// The timestamp when the resource was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Binding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Binding]. {@macro pulumi_agentregistry_binding_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Binding(
    String name, {
    BindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:agentregistry/binding:Binding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    authProviderBinding = registerOutput<BindingAuthProviderBinding>('authProviderBinding', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BindingAuthProviderBinding.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    bindingId = registerOutput<String>('bindingId');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    source = registerOutput<BindingSource>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BindingSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    target = registerOutput<BindingTarget>('target', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BindingTarget.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Binding] resource's state with the given [name] and [id].
  static Binding get(
    String name,
    pulumi.Input<String> id, {
    BindingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Binding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Binding._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:agentregistry/binding:Binding',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authProviderBinding = registerOutput<BindingAuthProviderBinding>('authProviderBinding', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BindingAuthProviderBinding.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    bindingId = registerOutput<String>('bindingId');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    source = registerOutput<BindingSource>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BindingSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    target = registerOutput<BindingTarget>('target', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BindingTarget.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [Binding] resource.
  Binding.reference(String urn)
    : super(
        'gcp:agentregistry/binding:Binding',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    authProviderBinding = registerOutput<BindingAuthProviderBinding>('authProviderBinding', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BindingAuthProviderBinding.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    bindingId = registerOutput<String>('bindingId');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    source = registerOutput<BindingSource>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BindingSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    target = registerOutput<BindingTarget>('target', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BindingTarget.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateTime = registerOutput<String>('updateTime');
  }
}
