import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_args.dart';
import 'environment_state.dart';

/// An environment is logical container for different networks or customers that are managed by the SOC or MSSP. This is useful for SOCs who provide services to several different networks, customers or business units within the organization. The Platform comes with a predefined environment named Default Environment.
///
///
/// To get more information about Environment, see:
///
/// * [API documentation](https://docs.cloud.google.com/chronicle/docs/reference/rest/v1/projects.locations.instances.environments)
/// * How-to Guides
/// * [Google SecOps Guides](https://cloud.google.com/chronicle/docs/secops/secops-overview)
///
/// ## Example Usage
///
/// ### Chronicle Environment Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const sample = new gcp.chronicle.Environment("sample", {
///     location: "us",
///     instance: "00000000-0000-0000-0000-000000000000",
///     displayName: "MyEnvironment",
///     description: "MyEnvironment is managed with Terraform",
///     contact: "Contact",
///     contactEmails: "example@example.com",
///     contactPhone: "00000",
///     aliasesJson: JSON.stringify([]),
///     dataAccessScopesJson: JSON.stringify([]),
///     retentionDuration: 3,
///     deletionProtection: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// sample = gcp.chronicle.Environment("sample",
///     location="us",
///     instance="00000000-0000-0000-0000-000000000000",
///     display_name="MyEnvironment",
///     description="MyEnvironment is managed with Terraform",
///     contact="Contact",
///     contact_emails="example@example.com",
///     contact_phone="00000",
///     aliases_json=json.dumps([]),
///     data_access_scopes_json=json.dumps([]),
///     retention_duration=3,
///     deletion_protection=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sample = new Gcp.Chronicle.Environment("sample", new()
///     {
///         Location = "us",
///         Instance = "00000000-0000-0000-0000-000000000000",
///         DisplayName = "MyEnvironment",
///         Description = "MyEnvironment is managed with Terraform",
///         Contact = "Contact",
///         ContactEmails = "example@example.com",
///         ContactPhone = "00000",
///         AliasesJson = JsonSerializer.Serialize(new[]
///         {
///         }),
///         DataAccessScopesJson = JsonSerializer.Serialize(new[]
///         {
///         }),
///         RetentionDuration = 3,
///         DeletionProtection = false,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/chronicle"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal([]interface{}{})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		tmpJSON1, err := json.Marshal([]interface{}{})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json1 := string(tmpJSON1)
/// 		_, err = chronicle.NewEnvironment(ctx, "sample", &chronicle.EnvironmentArgs{
/// 			Location:             pulumi.String("us"),
/// 			Instance:             pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			DisplayName:          pulumi.String("MyEnvironment"),
/// 			Description:          pulumi.String("MyEnvironment is managed with Terraform"),
/// 			Contact:              pulumi.String("Contact"),
/// 			ContactEmails:        pulumi.String("example@example.com"),
/// 			ContactPhone:         pulumi.String("00000"),
/// 			AliasesJson:          pulumi.String(json0),
/// 			DataAccessScopesJson: pulumi.String(json1),
/// 			RetentionDuration:    pulumi.Int(3),
/// 			DeletionProtection:   pulumi.Bool(false),
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
/// resource "gcp_chronicle_environment" "sample" {
///   location                = "us"
///   instance                = "00000000-0000-0000-0000-000000000000"
///   display_name            = "MyEnvironment"
///   description             = "MyEnvironment is managed with Terraform"
///   contact                 = "Contact"
///   contact_emails          = "example@example.com"
///   contact_phone           = "00000"
///   aliases_json            = jsonencode([])
///   data_access_scopes_json = jsonencode([])
///   retention_duration      = 3
///   deletion_protection     = false
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.chronicle.Environment;
/// import com.pulumi.gcp.chronicle.EnvironmentArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var sample = new Environment("sample", EnvironmentArgs.builder()
///             .location("us")
///             .instance("00000000-0000-0000-0000-000000000000")
///             .displayName("MyEnvironment")
///             .description("MyEnvironment is managed with Terraform")
///             .contact("Contact")
///             .contactEmails("example@example.com")
///             .contactPhone("00000")
///             .aliasesJson(serializeJson(
///                 jsonArray(
///                 )))
///             .dataAccessScopesJson(serializeJson(
///                 jsonArray(
///                 )))
///             .retentionDuration(3)
///             .deletionProtection(false)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sample:
///     type: gcp:chronicle:Environment
///     properties:
///       location: us
///       instance: 00000000-0000-0000-0000-000000000000
///       displayName: MyEnvironment
///       description: MyEnvironment is managed with Terraform
///       contact: Contact
///       contactEmails: example@example.com
///       contactPhone: '00000'
///       aliasesJson:
///         fn::toJSON: []
///       dataAccessScopesJson:
///         fn::toJSON: []
///       retentionDuration: 3
///       deletionProtection: false
/// ```
///
///
/// ## Import
///
/// Environment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{instance}}/environments/{{environment_id}}`
/// * `{{project}}/{{location}}/{{instance}}/{{environment_id}}`
/// * `{{location}}/{{instance}}/{{environment_id}}`
///
///
/// When using the `pulumi import` command, Environment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:chronicle/environment:Environment default projects/{{project}}/locations/{{location}}/instances/{{instance}}/environments/{{environment_id}}
/// $ pulumi import gcp:chronicle/environment:Environment default {{project}}/{{location}}/{{instance}}/{{environment_id}}
/// $ pulumi import gcp:chronicle/environment:Environment default {{location}}/{{instance}}/{{environment_id}}
/// ```
class Environment extends pulumi.CustomResource {
  /// Environment nicknames.
  late final pulumi.Output<String?> aliasesJson;
  /// MAX_NAME_LENGTH = 256
  /// Name of the contact for the environment.
  late final pulumi.Output<String> contact;
  /// MAX_NAME_LENGTH = 256
  /// Email of the contact for the environment. Multiple emails can be sepereated with the `;` character.
  late final pulumi.Output<String> contactEmails;
  /// MAX_NAME_LENGTH = 256
  /// Phone number of the contact for the environment.
  late final pulumi.Output<String> contactPhone;
  /// data access scopes.
  late final pulumi.Output<String?> dataAccessScopesJson;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Whether Terraform will be prevented from destroying the environment. Deleting an environment will remove all its data and all playbooks, environments, integrations instances, reports and agents related to the environment. Once you delete an environment, it cannot be reversed. Deleting environments via terraform destroy or pulumi up will only succeed if this field is false in the Terraform state.
  late final pulumi.Output<bool?> deletionProtection;
  /// MAX_NAME_LENGTH = 256
  /// Description of the environment.
  late final pulumi.Output<String> description;
  /// Name of the environment
  /// MAX_NAME_LENGTH = 256
  late final pulumi.Output<String> displayName;
  /// Id of the environment record.
  late final pulumi.Output<String> environmentId;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> instance;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// Identifier. The unique name(ID) of the Environment.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/environments/{environment}
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Environment data retention in months.
  late final pulumi.Output<int> retentionDuration;

  /// Creates a new [Environment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Environment]. {@macro pulumi_chronicle_environment_environment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Environment(
    String name, {
    EnvironmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/environment:Environment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    aliasesJson = registerOutput<String?>('aliasesJson');
    contact = registerOutput<String>('contact');
    contactEmails = registerOutput<String>('contactEmails');
    contactPhone = registerOutput<String>('contactPhone');
    dataAccessScopesJson = registerOutput<String?>('dataAccessScopesJson');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    environmentId = registerOutput<String>('environmentId');
    instance = registerOutput<String>('instance');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    retentionDuration = registerOutput<int>('retentionDuration');
  }

  /// Gets an existing [Environment] resource's state with the given [name] and [id].
  static Environment get(
    String name,
    pulumi.Input<String> id, {
    EnvironmentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Environment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Environment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/environment:Environment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aliasesJson = registerOutput<String?>('aliasesJson');
    contact = registerOutput<String>('contact');
    contactEmails = registerOutput<String>('contactEmails');
    contactPhone = registerOutput<String>('contactPhone');
    dataAccessScopesJson = registerOutput<String?>('dataAccessScopesJson');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    environmentId = registerOutput<String>('environmentId');
    instance = registerOutput<String>('instance');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    retentionDuration = registerOutput<int>('retentionDuration');
  }

  /// Creates a typed reference to an existing [Environment] resource.
  Environment.reference(String urn)
    : super(
        'gcp:chronicle/environment:Environment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    aliasesJson = registerOutput<String?>('aliasesJson');
    contact = registerOutput<String>('contact');
    contactEmails = registerOutput<String>('contactEmails');
    contactPhone = registerOutput<String>('contactPhone');
    dataAccessScopesJson = registerOutput<String?>('dataAccessScopesJson');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    environmentId = registerOutput<String>('environmentId');
    instance = registerOutput<String>('instance');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    retentionDuration = registerOutput<int>('retentionDuration');
  }
}
