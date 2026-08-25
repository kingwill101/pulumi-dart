import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_list_args.dart';
import 'custom_list_state.dart';

/// The custom list is a list of objects, that can be saved as a shared resource, and can be used by playbooks.
///
///
/// To get more information about CustomList, see:
///
/// * [API documentation](https://docs.cloud.google.com/chronicle/docs/reference/rest/v1/projects.locations.instances.customLists)
/// * How-to Guides
/// * [Google SecOps Guides](https://cloud.google.com/chronicle/docs/secops/secops-overview)
///
/// ## Example Usage
///
/// ### Chronicle Customlist Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const sample = new gcp.chronicle.CustomList("sample", {
///     location: "us",
///     instance: "00000000-0000-0000-0000-000000000000",
///     entityIdentifier: "filename.bin",
///     category: "Approved Files",
///     environments: JSON.stringify(["Default Environment"]),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// sample = gcp.chronicle.CustomList("sample",
///     location="us",
///     instance="00000000-0000-0000-0000-000000000000",
///     entity_identifier="filename.bin",
///     category="Approved Files",
///     environments=json.dumps(["Default Environment"]))
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
///     var sample = new Gcp.Chronicle.CustomList("sample", new()
///     {
///         Location = "us",
///         Instance = "00000000-0000-0000-0000-000000000000",
///         EntityIdentifier = "filename.bin",
///         Category = "Approved Files",
///         Environments = JsonSerializer.Serialize(new[]
///         {
///             "Default Environment",
///         }),
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
/// 		tmpJSON0, err := json.Marshal([]string{
/// 			"Default Environment",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = chronicle.NewCustomList(ctx, "sample", &chronicle.CustomListArgs{
/// 			Location:         pulumi.String("us"),
/// 			Instance:         pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			EntityIdentifier: pulumi.String("filename.bin"),
/// 			Category:         pulumi.String("Approved Files"),
/// 			Environments:     pulumi.String(json0),
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
/// resource "gcp_chronicle_customlist" "sample" {
///   location          = "us"
///   instance          = "00000000-0000-0000-0000-000000000000"
///   entity_identifier = "filename.bin"
///   category          = "Approved Files"
///   environments      = jsonencode(["Default Environment"])
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.chronicle.CustomList;
/// import com.pulumi.gcp.chronicle.CustomListArgs;
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
///         var sample = new CustomList("sample", CustomListArgs.builder()
///             .location("us")
///             .instance("00000000-0000-0000-0000-000000000000")
///             .entityIdentifier("filename.bin")
///             .category("Approved Files")
///             .environments(serializeJson(
///                 jsonArray("Default Environment")))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sample:
///     type: gcp:chronicle:CustomList
///     properties:
///       location: us
///       instance: 00000000-0000-0000-0000-000000000000
///       entityIdentifier: filename.bin
///       category: Approved Files
///       environments:
///         fn::toJSON:
///           - Default Environment
/// ```
///
///
/// ## Import
///
/// CustomList can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{instance}}/customLists/{{custom_list_id}}`
/// * `{{project}}/{{location}}/{{instance}}/{{custom_list_id}}`
/// * `{{location}}/{{instance}}/{{custom_list_id}}`
///
///
/// When using the `pulumi import` command, CustomList can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:chronicle/customList:CustomList default projects/{{project}}/locations/{{location}}/instances/{{instance}}/customLists/{{custom_list_id}}
/// $ pulumi import gcp:chronicle/customList:CustomList default {{project}}/{{location}}/{{instance}}/{{custom_list_id}}
/// $ pulumi import gcp:chronicle/customList:CustomList default {{location}}/{{instance}}/{{custom_list_id}}
/// ```
class CustomList extends pulumi.CustomResource {
  /// The value of the custom list.
  /// Maximum length: 1024 characters
  late final pulumi.Output<String> category;
  /// Id of the Custom List record.
  late final pulumi.Output<String> customListId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The key of the custom list.
  /// Maximum length: 2048 characters
  late final pulumi.Output<String> entityIdentifier;
  /// The environments to which the custom list is associated.
  late final pulumi.Output<String> environments;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> instance;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// Identifier. The resource name of the custom list.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [CustomList].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomList]. {@macro pulumi_chronicle_custom_list_custom_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomList(
    String name, {
    CustomListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/customList:CustomList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    category = registerOutput<String>('category');
    customListId = registerOutput<String>('customListId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    entityIdentifier = registerOutput<String>('entityIdentifier');
    environments = registerOutput<String>('environments');
    instance = registerOutput<String>('instance');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [CustomList] resource's state with the given [name] and [id].
  static CustomList get(
    String name,
    pulumi.Input<String> id, {
    CustomListState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CustomList._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CustomList._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/customList:CustomList',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    category = registerOutput<String>('category');
    customListId = registerOutput<String>('customListId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    entityIdentifier = registerOutput<String>('entityIdentifier');
    environments = registerOutput<String>('environments');
    instance = registerOutput<String>('instance');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }

  /// Creates a typed reference to an existing [CustomList] resource.
  CustomList.reference(String urn)
    : super(
        'gcp:chronicle/customList:CustomList',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    category = registerOutput<String>('category');
    customListId = registerOutput<String>('customListId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    entityIdentifier = registerOutput<String>('entityIdentifier');
    environments = registerOutput<String>('environments');
    instance = registerOutput<String>('instance');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }
}
