import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_app_parameter.dart';
import 'application_args.dart';
import 'application_attributes.dart';
import 'application_component_parameter.dart';
import 'application_composite_application_parameters.dart';
import 'application_connection_config.dart';
import 'application_deployment_metadata.dart';
import 'application_deployment_target.dart';
import 'application_roles_apis_config.dart';
import 'application_scope.dart';
import 'application_source.dart';
import 'application_state.dart';

/// Application Design Center Application.
///
///
///
///
/// ## Example Usage
///
/// ### Designcenter Application Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.designcenter.Application("example", {
///     project: "my-project-name",
///     location: "us-central1",
///     space: "example-space",
///     applicationId: "example-application",
///     deploymentRegion: "us-central1",
///     source: {
///         applicationTemplateRevision: "projects/my-project-name/locations/us-central1/spaces/example-space/applicationTemplates/example-template/revisions/r-1",
///     },
///     scope: {
///         type: "REGIONAL",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.designcenter.Application("example",
///     project="my-project-name",
///     location="us-central1",
///     space="example-space",
///     application_id="example-application",
///     deployment_region="us-central1",
///     source={
///         "application_template_revision": "projects/my-project-name/locations/us-central1/spaces/example-space/applicationTemplates/example-template/revisions/r-1",
///     },
///     scope={
///         "type": "REGIONAL",
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
///     var example = new Gcp.DesignCenter.Application("example", new()
///     {
///         Project = "my-project-name",
///         Location = "us-central1",
///         Space = "example-space",
///         ApplicationId = "example-application",
///         DeploymentRegion = "us-central1",
///         Source = new Gcp.DesignCenter.Inputs.ApplicationSourceArgs
///         {
///             ApplicationTemplateRevision = "projects/my-project-name/locations/us-central1/spaces/example-space/applicationTemplates/example-template/revisions/r-1",
///         },
///         Scope = new Gcp.DesignCenter.Inputs.ApplicationScopeArgs
///         {
///             Type = "REGIONAL",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/designcenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := designcenter.NewApplication(ctx, "example", &designcenter.ApplicationArgs{
/// 			Project:          pulumi.String("my-project-name"),
/// 			Location:         pulumi.String("us-central1"),
/// 			Space:            pulumi.String("example-space"),
/// 			ApplicationId:    pulumi.String("example-application"),
/// 			DeploymentRegion: pulumi.String("us-central1"),
/// 			Source: &designcenter.ApplicationSourceArgs{
/// 				ApplicationTemplateRevision: pulumi.String("projects/my-project-name/locations/us-central1/spaces/example-space/applicationTemplates/example-template/revisions/r-1"),
/// 			},
/// 			Scope: &designcenter.ApplicationScopeArgs{
/// 				Type: pulumi.String("REGIONAL"),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_designcenter_application" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   project           = "my-project-name"
///   location          = "us-central1"
///   space             = "example-space"
///   application_id    = "example-application"
///   deployment_region = "us-central1"
///   source = {
///     application_template_revision = "projects/my-project-name/locations/us-central1/spaces/example-space/applicationTemplates/example-template/revisions/r-1"
///   }
///   scope = {
///     type = "REGIONAL"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.designcenter.Application;
/// import com.pulumi.gcp.designcenter.ApplicationArgs;
/// import com.pulumi.gcp.designcenter.inputs.ApplicationSourceArgs;
/// import com.pulumi.gcp.designcenter.inputs.ApplicationScopeArgs;
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
///         var example = new Application("example", ApplicationArgs.builder()
///             .project("my-project-name")
///             .location("us-central1")
///             .space("example-space")
///             .applicationId("example-application")
///             .deploymentRegion("us-central1")
///             .source(ApplicationSourceArgs.builder()
///                 .applicationTemplateRevision("projects/my-project-name/locations/us-central1/spaces/example-space/applicationTemplates/example-template/revisions/r-1")
///                 .build())
///             .scope(ApplicationScopeArgs.builder()
///                 .type("REGIONAL")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:designcenter:Application
///     properties:
///       project: my-project-name
///       location: us-central1
///       space: example-space
///       applicationId: example-application
///       deploymentRegion: us-central1
///       source:
///         applicationTemplateRevision: projects/my-project-name/locations/us-central1/spaces/example-space/applicationTemplates/example-template/revisions/r-1
///       scope:
///         type: REGIONAL
/// ```
///
///
/// ## Import
///
/// Application can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/spaces/{{space}}/applications/{{application_id}}`
/// * `{{project}}/{{location}}/{{space}}/{{application_id}}`
/// * `{{location}}/{{space}}/{{application_id}}`
///
///
/// When using the `pulumi import` command, Application can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:designcenter/application:Application default projects/{{project}}/locations/{{location}}/spaces/{{space}}/applications/{{application_id}}
/// $ pulumi import gcp:designcenter/application:Application default {{project}}/{{location}}/{{space}}/{{application_id}}
/// $ pulumi import gcp:designcenter/application:Application default {{location}}/{{space}}/{{application_id}}
/// ```
class Application extends pulumi.CustomResource {
  /// A list of parameters to attach to the deployment source object, which is
  /// a catalog entry or an application template snapshot. When unset, the API
  /// fills these in from the application template.
  /// Structure is documented below.
  late final pulumi.Output<List<ApplicationAppParameter>> appParameters;
  /// AppHub application URI.
  late final pulumi.Output<String> apphubApplication;
  /// The ID of the application.
  late final pulumi.Output<String> applicationId;
  /// Attributes of the App Hub application.
  /// Structure is documented below.
  late final pulumi.Output<ApplicationAttributes?> attributes;
  /// A list of component parameters to associate with the application. When
  /// unset, the API fills these in from the application template.
  /// Structure is documented below.
  late final pulumi.Output<List<ApplicationComponentParameter>> componentParameters;
  /// Parameters that are required for composite applications.
  /// Structure is documented below.
  late final pulumi.Output<ApplicationCompositeApplicationParameters> compositeApplicationParameters;
  /// Connection configurations for the application. When the application is
  /// created or its source changes, the API sets these from the connections
  /// in the application template.
  /// Structure is documented below.
  late final pulumi.Output<List<ApplicationConnectionConfig>> connectionConfigs;
  /// Create time.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Deployment metadata of the application.
  /// Structure is documented below.
  late final pulumi.Output<List<ApplicationDeploymentMetadata>> deploymentMetadatas;
  /// Deployment project.
  late final pulumi.Output<String?> deploymentProject;
  /// Deployment region.
  late final pulumi.Output<String?> deploymentRegion;
  /// The deployment target of the application.
  /// Structure is documented below.
  late final pulumi.Output<ApplicationDeploymentTarget?> deploymentTarget;
  /// Description of the application.
  late final pulumi.Output<String?> description;
  /// Display name.
  late final pulumi.Output<String?> displayName;
  /// The location of the space.
  late final pulumi.Output<String> location;
  /// Name of the application.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Project-specific configurations required to deploy the application,
  /// including IAM roles and APIs. When unset, the API fills in the roles and
  /// APIs that the deployment needs.
  /// Structure is documented below.
  late final pulumi.Output<List<ApplicationRolesApisConfig>> rolesApisConfigs;
  /// AppHub Scope for the application.
  /// Structure is documented below.
  late final pulumi.Output<ApplicationScope> scope;
  /// Service account for deployment.
  late final pulumi.Output<String?> serviceAccount;
  /// DeploymentSource for the application.
  /// Structure is documented below.
  late final pulumi.Output<ApplicationSource> source;
  /// The space for the application.
  late final pulumi.Output<String> space;
  /// State of the application.
  late final pulumi.Output<String> state;
  /// Update time.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Application].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Application]. {@macro pulumi_designcenter_application_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Application(
    String name, {
    ApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:designcenter/application:Application',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.5.0').merge(options),
        ) {
    appParameters = registerOutput<List<ApplicationAppParameter>>('appParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationAppParameter>(guardedValue, (value) => ApplicationAppParameter.fromMap((value as Map).cast<String, dynamic>())); });
    apphubApplication = registerOutput<String>('apphubApplication');
    applicationId = registerOutput<String>('applicationId');
    attributes = registerOutput<ApplicationAttributes?>('attributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationAttributes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    componentParameters = registerOutput<List<ApplicationComponentParameter>>('componentParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationComponentParameter>(guardedValue, (value) => ApplicationComponentParameter.fromMap((value as Map).cast<String, dynamic>())); });
    compositeApplicationParameters = registerOutput<ApplicationCompositeApplicationParameters>('compositeApplicationParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationCompositeApplicationParameters.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    connectionConfigs = registerOutput<List<ApplicationConnectionConfig>>('connectionConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationConnectionConfig>(guardedValue, (value) => ApplicationConnectionConfig.fromMap((value as Map).cast<String, dynamic>())); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deploymentMetadatas = registerOutput<List<ApplicationDeploymentMetadata>>('deploymentMetadatas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationDeploymentMetadata>(guardedValue, (value) => ApplicationDeploymentMetadata.fromMap((value as Map).cast<String, dynamic>())); });
    deploymentProject = registerOutput<String?>('deploymentProject');
    deploymentRegion = registerOutput<String?>('deploymentRegion');
    deploymentTarget = registerOutput<ApplicationDeploymentTarget?>('deploymentTarget', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationDeploymentTarget.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    rolesApisConfigs = registerOutput<List<ApplicationRolesApisConfig>>('rolesApisConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationRolesApisConfig>(guardedValue, (value) => ApplicationRolesApisConfig.fromMap((value as Map).cast<String, dynamic>())); });
    scope = registerOutput<ApplicationScope>('scope', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationScope.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    serviceAccount = registerOutput<String?>('serviceAccount');
    source = registerOutput<ApplicationSource>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    space = registerOutput<String>('space');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Application] resource's state with the given [name] and [id].
  static Application get(
    String name,
    pulumi.Input<String> id, {
    ApplicationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Application._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Application._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:designcenter/application:Application',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appParameters = registerOutput<List<ApplicationAppParameter>>('appParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationAppParameter>(guardedValue, (value) => ApplicationAppParameter.fromMap((value as Map).cast<String, dynamic>())); });
    apphubApplication = registerOutput<String>('apphubApplication');
    applicationId = registerOutput<String>('applicationId');
    attributes = registerOutput<ApplicationAttributes?>('attributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationAttributes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    componentParameters = registerOutput<List<ApplicationComponentParameter>>('componentParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationComponentParameter>(guardedValue, (value) => ApplicationComponentParameter.fromMap((value as Map).cast<String, dynamic>())); });
    compositeApplicationParameters = registerOutput<ApplicationCompositeApplicationParameters>('compositeApplicationParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationCompositeApplicationParameters.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    connectionConfigs = registerOutput<List<ApplicationConnectionConfig>>('connectionConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationConnectionConfig>(guardedValue, (value) => ApplicationConnectionConfig.fromMap((value as Map).cast<String, dynamic>())); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deploymentMetadatas = registerOutput<List<ApplicationDeploymentMetadata>>('deploymentMetadatas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationDeploymentMetadata>(guardedValue, (value) => ApplicationDeploymentMetadata.fromMap((value as Map).cast<String, dynamic>())); });
    deploymentProject = registerOutput<String?>('deploymentProject');
    deploymentRegion = registerOutput<String?>('deploymentRegion');
    deploymentTarget = registerOutput<ApplicationDeploymentTarget?>('deploymentTarget', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationDeploymentTarget.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    rolesApisConfigs = registerOutput<List<ApplicationRolesApisConfig>>('rolesApisConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationRolesApisConfig>(guardedValue, (value) => ApplicationRolesApisConfig.fromMap((value as Map).cast<String, dynamic>())); });
    scope = registerOutput<ApplicationScope>('scope', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationScope.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    serviceAccount = registerOutput<String?>('serviceAccount');
    source = registerOutput<ApplicationSource>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    space = registerOutput<String>('space');
    this.state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [Application] resource.
  Application.reference(String urn)
    : super(
        'gcp:designcenter/application:Application',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    appParameters = registerOutput<List<ApplicationAppParameter>>('appParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationAppParameter>(guardedValue, (value) => ApplicationAppParameter.fromMap((value as Map).cast<String, dynamic>())); });
    apphubApplication = registerOutput<String>('apphubApplication');
    applicationId = registerOutput<String>('applicationId');
    attributes = registerOutput<ApplicationAttributes?>('attributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationAttributes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    componentParameters = registerOutput<List<ApplicationComponentParameter>>('componentParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationComponentParameter>(guardedValue, (value) => ApplicationComponentParameter.fromMap((value as Map).cast<String, dynamic>())); });
    compositeApplicationParameters = registerOutput<ApplicationCompositeApplicationParameters>('compositeApplicationParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationCompositeApplicationParameters.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    connectionConfigs = registerOutput<List<ApplicationConnectionConfig>>('connectionConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationConnectionConfig>(guardedValue, (value) => ApplicationConnectionConfig.fromMap((value as Map).cast<String, dynamic>())); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deploymentMetadatas = registerOutput<List<ApplicationDeploymentMetadata>>('deploymentMetadatas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationDeploymentMetadata>(guardedValue, (value) => ApplicationDeploymentMetadata.fromMap((value as Map).cast<String, dynamic>())); });
    deploymentProject = registerOutput<String?>('deploymentProject');
    deploymentRegion = registerOutput<String?>('deploymentRegion');
    deploymentTarget = registerOutput<ApplicationDeploymentTarget?>('deploymentTarget', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationDeploymentTarget.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    rolesApisConfigs = registerOutput<List<ApplicationRolesApisConfig>>('rolesApisConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationRolesApisConfig>(guardedValue, (value) => ApplicationRolesApisConfig.fromMap((value as Map).cast<String, dynamic>())); });
    scope = registerOutput<ApplicationScope>('scope', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationScope.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    serviceAccount = registerOutput<String?>('serviceAccount');
    source = registerOutput<ApplicationSource>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    space = registerOutput<String>('space');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }
}
