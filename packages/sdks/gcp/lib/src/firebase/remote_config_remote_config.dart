import 'package:pulumi/pulumi.dart' as pulumi;
import 'remote_config_remote_config_args.dart';
import 'remote_config_remote_config_condition.dart';
import 'remote_config_remote_config_parameter.dart';
import 'remote_config_remote_config_parameter_group.dart';
import 'remote_config_remote_config_state.dart';
import 'remote_config_remote_config_version.dart';

/// A RemoteConfig represents a Remote Config template.
///
///
/// To get more information about RemoteConfig, see:
///
/// * [API documentation](https://firebase.google.com/docs/reference/remote-config/rest/v1/projects/getRemoteConfig)
/// * How-to Guides
/// * [Remote Config Introduction](https://firebase.google.com/docs/remote-config)
///
/// ## Example Usage
///
/// ### Firebase Remote Config Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = new gcp.firebase.RemoteConfigRemoteConfig("basic", {
///     conditions: [{
///         name: "ios_en",
///         expression: "device.os == 'ios' && device.country in ['us']",
///         tagColor: "TEAL",
///     }],
///     parameters: [{
///         parameterName: "welcome_message",
///         description: "Welcome message",
///         valueType: "STRING",
///         defaultValue: {
///             value: "Welcome to the App!",
///         },
///         conditionalValues: [{
///             conditionName: "ios_en",
///             value: "Welcome to the App on iOS!",
///         }],
///     }],
///     parameterGroups: [{
///         parameterGroupName: "group_a",
///         description: "Parameter group A description",
///         parameters: [{
///             parameterName: "welcome_message_group",
///             description: "Welcome message for group A",
///             valueType: "STRING",
///             defaultValue: {
///                 value: "Welcome Group A!",
///             },
///             conditionalValues: [{
///                 conditionName: "ios_en",
///                 value: "Welcome Group A on iOS!",
///             }],
///         }],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.firebase.RemoteConfigRemoteConfig("basic",
///     conditions=[{
///         "name": "ios_en",
///         "expression": "device.os == 'ios' && device.country in ['us']",
///         "tag_color": "TEAL",
///     }],
///     parameters=[{
///         "parameter_name": "welcome_message",
///         "description": "Welcome message",
///         "value_type": "STRING",
///         "default_value": {
///             "value": "Welcome to the App!",
///         },
///         "conditional_values": [{
///             "condition_name": "ios_en",
///             "value": "Welcome to the App on iOS!",
///         }],
///     }],
///     parameter_groups=[{
///         "parameter_group_name": "group_a",
///         "description": "Parameter group A description",
///         "parameters": [{
///             "parameter_name": "welcome_message_group",
///             "description": "Welcome message for group A",
///             "value_type": "STRING",
///             "default_value": {
///                 "value": "Welcome Group A!",
///             },
///             "conditional_values": [{
///                 "condition_name": "ios_en",
///                 "value": "Welcome Group A on iOS!",
///             }],
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
///     var basic = new Gcp.Firebase.RemoteConfigRemoteConfig("basic", new()
///     {
///         Conditions = new[]
///         {
///             new Gcp.Firebase.Inputs.RemoteConfigRemoteConfigConditionArgs
///             {
///                 Name = "ios_en",
///                 Expression = "device.os == 'ios' && device.country in ['us']",
///                 TagColor = "TEAL",
///             },
///         },
///         Parameters = new[]
///         {
///             new Gcp.Firebase.Inputs.RemoteConfigRemoteConfigParameterArgs
///             {
///                 ParameterName = "welcome_message",
///                 Description = "Welcome message",
///                 ValueType = "STRING",
///                 DefaultValue = new Gcp.Firebase.Inputs.RemoteConfigRemoteConfigParameterDefaultValueArgs
///                 {
///                     Value = "Welcome to the App!",
///                 },
///                 ConditionalValues = new[]
///                 {
///                     new Gcp.Firebase.Inputs.RemoteConfigRemoteConfigParameterConditionalValueArgs
///                     {
///                         ConditionName = "ios_en",
///                         Value = "Welcome to the App on iOS!",
///                     },
///                 },
///             },
///         },
///         ParameterGroups = new[]
///         {
///             new Gcp.Firebase.Inputs.RemoteConfigRemoteConfigParameterGroupArgs
///             {
///                 ParameterGroupName = "group_a",
///                 Description = "Parameter group A description",
///                 Parameters = new[]
///                 {
///                     new Gcp.Firebase.Inputs.RemoteConfigRemoteConfigParameterGroupParameterArgs
///                     {
///                         ParameterName = "welcome_message_group",
///                         Description = "Welcome message for group A",
///                         ValueType = "STRING",
///                         DefaultValue = new Gcp.Firebase.Inputs.RemoteConfigRemoteConfigParameterGroupParameterDefaultValueArgs
///                         {
///                             Value = "Welcome Group A!",
///                         },
///                         ConditionalValues = new[]
///                         {
///                             new Gcp.Firebase.Inputs.RemoteConfigRemoteConfigParameterGroupParameterConditionalValueArgs
///                             {
///                                 ConditionName = "ios_en",
///                                 Value = "Welcome Group A on iOS!",
///                             },
///                         },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firebase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := firebase.NewRemoteConfigRemoteConfig(ctx, "basic", &firebase.RemoteConfigRemoteConfigArgs{
/// 			Conditions: firebase.RemoteConfigRemoteConfigConditionArray{
/// 				&firebase.RemoteConfigRemoteConfigConditionArgs{
/// 					Name:       pulumi.String("ios_en"),
/// 					Expression: pulumi.String("device.os == 'ios' && device.country in ['us']"),
/// 					TagColor:   pulumi.String("TEAL"),
/// 				},
/// 			},
/// 			Parameters: firebase.RemoteConfigRemoteConfigParameterArray{
/// 				&firebase.RemoteConfigRemoteConfigParameterArgs{
/// 					ParameterName: pulumi.String("welcome_message"),
/// 					Description:   pulumi.String("Welcome message"),
/// 					ValueType:     pulumi.String("STRING"),
/// 					DefaultValue: &firebase.RemoteConfigRemoteConfigParameterDefaultValueArgs{
/// 						Value: pulumi.String("Welcome to the App!"),
/// 					},
/// 					ConditionalValues: firebase.RemoteConfigRemoteConfigParameterConditionalValueArray{
/// 						&firebase.RemoteConfigRemoteConfigParameterConditionalValueArgs{
/// 							ConditionName: pulumi.String("ios_en"),
/// 							Value:         pulumi.String("Welcome to the App on iOS!"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ParameterGroups: firebase.RemoteConfigRemoteConfigParameterGroupArray{
/// 				&firebase.RemoteConfigRemoteConfigParameterGroupArgs{
/// 					ParameterGroupName: pulumi.String("group_a"),
/// 					Description:        pulumi.String("Parameter group A description"),
/// 					Parameters: firebase.RemoteConfigRemoteConfigParameterGroupParameterArray{
/// 						&firebase.RemoteConfigRemoteConfigParameterGroupParameterArgs{
/// 							ParameterName: pulumi.String("welcome_message_group"),
/// 							Description:   pulumi.String("Welcome message for group A"),
/// 							ValueType:     pulumi.String("STRING"),
/// 							DefaultValue: &firebase.RemoteConfigRemoteConfigParameterGroupParameterDefaultValueArgs{
/// 								Value: pulumi.String("Welcome Group A!"),
/// 							},
/// 							ConditionalValues: firebase.RemoteConfigRemoteConfigParameterGroupParameterConditionalValueArray{
/// 								&firebase.RemoteConfigRemoteConfigParameterGroupParameterConditionalValueArgs{
/// 									ConditionName: pulumi.String("ios_en"),
/// 									Value:         pulumi.String("Welcome Group A on iOS!"),
/// 								},
/// 							},
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
/// resource "gcp_firebase_remoteconfigremoteconfig" "basic" {
///   conditions {
///     name       = "ios_en"
///     expression = "device.os == 'ios' && device.country in ['us']"
///     tag_color  = "TEAL"
///   }
///   parameters {
///     parameter_name = "welcome_message"
///     description    = "Welcome message"
///     value_type     = "STRING"
///     default_value = {
///       value = "Welcome to the App!"
///     }
///     conditional_values {
///       condition_name = "ios_en"
///       value          = "Welcome to the App on iOS!"
///     }
///   }
///   parameter_groups {
///     parameter_group_name = "group_a"
///     description          = "Parameter group A description"
///     parameters {
///       parameter_name = "welcome_message_group"
///       description    = "Welcome message for group A"
///       value_type     = "STRING"
///       default_value = {
///         value = "Welcome Group A!"
///       }
///       conditional_values {
///         condition_name = "ios_en"
///         value          = "Welcome Group A on iOS!"
///       }
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
/// import com.pulumi.gcp.firebase.RemoteConfigRemoteConfig;
/// import com.pulumi.gcp.firebase.RemoteConfigRemoteConfigArgs;
/// import com.pulumi.gcp.firebase.inputs.RemoteConfigRemoteConfigConditionArgs;
/// import com.pulumi.gcp.firebase.inputs.RemoteConfigRemoteConfigParameterArgs;
/// import com.pulumi.gcp.firebase.inputs.RemoteConfigRemoteConfigParameterDefaultValueArgs;
/// import com.pulumi.gcp.firebase.inputs.RemoteConfigRemoteConfigParameterConditionalValueArgs;
/// import com.pulumi.gcp.firebase.inputs.RemoteConfigRemoteConfigParameterGroupArgs;
/// import com.pulumi.gcp.firebase.inputs.RemoteConfigRemoteConfigParameterGroupParameterArgs;
/// import com.pulumi.gcp.firebase.inputs.RemoteConfigRemoteConfigParameterGroupParameterDefaultValueArgs;
/// import com.pulumi.gcp.firebase.inputs.RemoteConfigRemoteConfigParameterGroupParameterConditionalValueArgs;
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
///         var basic = new RemoteConfigRemoteConfig("basic", RemoteConfigRemoteConfigArgs.builder()
///             .conditions(RemoteConfigRemoteConfigConditionArgs.builder()
///                 .name("ios_en")
///                 .expression("device.os == 'ios' && device.country in ['us']")
///                 .tagColor("TEAL")
///                 .build())
///             .parameters(RemoteConfigRemoteConfigParameterArgs.builder()
///                 .parameterName("welcome_message")
///                 .description("Welcome message")
///                 .valueType("STRING")
///                 .defaultValue(RemoteConfigRemoteConfigParameterDefaultValueArgs.builder()
///                     .value("Welcome to the App!")
///                     .build())
///                 .conditionalValues(RemoteConfigRemoteConfigParameterConditionalValueArgs.builder()
///                     .conditionName("ios_en")
///                     .value("Welcome to the App on iOS!")
///                     .build())
///                 .build())
///             .parameterGroups(RemoteConfigRemoteConfigParameterGroupArgs.builder()
///                 .parameterGroupName("group_a")
///                 .description("Parameter group A description")
///                 .parameters(RemoteConfigRemoteConfigParameterGroupParameterArgs.builder()
///                     .parameterName("welcome_message_group")
///                     .description("Welcome message for group A")
///                     .valueType("STRING")
///                     .defaultValue(RemoteConfigRemoteConfigParameterGroupParameterDefaultValueArgs.builder()
///                         .value("Welcome Group A!")
///                         .build())
///                     .conditionalValues(RemoteConfigRemoteConfigParameterGroupParameterConditionalValueArgs.builder()
///                         .conditionName("ios_en")
///                         .value("Welcome Group A on iOS!")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basic:
///     type: gcp:firebase:RemoteConfigRemoteConfig
///     properties:
///       conditions:
///         - name: ios_en
///           expression: device.os == 'ios' && device.country in ['us']
///           tagColor: TEAL
///       parameters:
///         - parameterName: welcome_message
///           description: Welcome message
///           valueType: STRING
///           defaultValue:
///             value: Welcome to the App!
///           conditionalValues:
///             - conditionName: ios_en
///               value: Welcome to the App on iOS!
///       parameterGroups:
///         - parameterGroupName: group_a
///           description: Parameter group A description
///           parameters:
///             - parameterName: welcome_message_group
///               description: Welcome message for group A
///               valueType: STRING
///               defaultValue:
///                 value: Welcome Group A!
///               conditionalValues:
///                 - conditionName: ios_en
///                   value: Welcome Group A on iOS!
/// ```
///
///
/// ## Import
///
/// RemoteConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/remoteConfig`
/// * `{{project}}`
///
///
/// When using the `pulumi import` command, RemoteConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/remoteConfigRemoteConfig:RemoteConfigRemoteConfig default projects/{{project}}/remoteConfig
/// $ pulumi import gcp:firebase/remoteConfigRemoteConfig:RemoteConfigRemoteConfig default {{project}}
/// ```
class RemoteConfigRemoteConfig extends pulumi.CustomResource {
  /// A list of conditions in descending order by priority.
  /// The values of the condition names must be unique.
  /// Structure is documented below.
  late final pulumi.Output<List<RemoteConfigRemoteConfigCondition>?> conditions;
  /// (Output)
  /// Display name.
  late final pulumi.Output<String> name;
  /// Map of parameter group names to their descriptions and grouped parameters.
  /// A group's name is mutable but must be unique among groups in the config.
  /// The name is limited to 256 characters and intended to be human-readable.
  /// Any Unicode characters are allowed.
  /// Groups have a list of parameters which allows users of the API to group
  /// parameters that are associated with the same feature or theme together for
  /// easy organizational access.
  /// For example, a parameter group with the name "Search V2" may have the
  /// `description` "New mobile search view" and contain parameters for the new
  /// search's layout and font.
  /// Structure is documented below.
  late final pulumi.Output<List<RemoteConfigRemoteConfigParameterGroup>?> parameterGroups;
  /// Map of parameter keys to their optional default values and optional
  /// conditional values.
  /// Structure is documented below.
  late final pulumi.Output<List<RemoteConfigRemoteConfigParameter>?> parameters;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Contains all metadata about a particular version of the Remote Config
  /// template.
  /// All fields are set at the time the specified Remote Config template was
  /// written.
  /// Structure is documented below.
  late final pulumi.Output<List<RemoteConfigRemoteConfigVersion>> versions;

  /// Creates a new [RemoteConfigRemoteConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RemoteConfigRemoteConfig]. {@macro pulumi_firebase_remote_config_remote_config_remote_config_remote_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RemoteConfigRemoteConfig(
    String name, {
    RemoteConfigRemoteConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/remoteConfigRemoteConfig:RemoteConfigRemoteConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    conditions = registerOutput<List<RemoteConfigRemoteConfigCondition>?>('conditions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RemoteConfigRemoteConfigCondition>(guardedValue, (value) => RemoteConfigRemoteConfigCondition.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    parameterGroups = registerOutput<List<RemoteConfigRemoteConfigParameterGroup>?>('parameterGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RemoteConfigRemoteConfigParameterGroup>(guardedValue, (value) => RemoteConfigRemoteConfigParameterGroup.fromMap((value as Map).cast<String, dynamic>())); });
    parameters = registerOutput<List<RemoteConfigRemoteConfigParameter>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RemoteConfigRemoteConfigParameter>(guardedValue, (value) => RemoteConfigRemoteConfigParameter.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    versions = registerOutput<List<RemoteConfigRemoteConfigVersion>>('versions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RemoteConfigRemoteConfigVersion>(guardedValue, (value) => RemoteConfigRemoteConfigVersion.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [RemoteConfigRemoteConfig] resource's state with the given [name] and [id].
  static RemoteConfigRemoteConfig get(
    String name,
    pulumi.Input<String> id, {
    RemoteConfigRemoteConfigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RemoteConfigRemoteConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RemoteConfigRemoteConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/remoteConfigRemoteConfig:RemoteConfigRemoteConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    conditions = registerOutput<List<RemoteConfigRemoteConfigCondition>?>('conditions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RemoteConfigRemoteConfigCondition>(guardedValue, (value) => RemoteConfigRemoteConfigCondition.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    parameterGroups = registerOutput<List<RemoteConfigRemoteConfigParameterGroup>?>('parameterGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RemoteConfigRemoteConfigParameterGroup>(guardedValue, (value) => RemoteConfigRemoteConfigParameterGroup.fromMap((value as Map).cast<String, dynamic>())); });
    parameters = registerOutput<List<RemoteConfigRemoteConfigParameter>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RemoteConfigRemoteConfigParameter>(guardedValue, (value) => RemoteConfigRemoteConfigParameter.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    versions = registerOutput<List<RemoteConfigRemoteConfigVersion>>('versions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RemoteConfigRemoteConfigVersion>(guardedValue, (value) => RemoteConfigRemoteConfigVersion.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [RemoteConfigRemoteConfig] resource.
  RemoteConfigRemoteConfig.reference(String urn)
    : super(
        'gcp:firebase/remoteConfigRemoteConfig:RemoteConfigRemoteConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    conditions = registerOutput<List<RemoteConfigRemoteConfigCondition>?>('conditions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RemoteConfigRemoteConfigCondition>(guardedValue, (value) => RemoteConfigRemoteConfigCondition.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    parameterGroups = registerOutput<List<RemoteConfigRemoteConfigParameterGroup>?>('parameterGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RemoteConfigRemoteConfigParameterGroup>(guardedValue, (value) => RemoteConfigRemoteConfigParameterGroup.fromMap((value as Map).cast<String, dynamic>())); });
    parameters = registerOutput<List<RemoteConfigRemoteConfigParameter>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RemoteConfigRemoteConfigParameter>(guardedValue, (value) => RemoteConfigRemoteConfigParameter.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    versions = registerOutput<List<RemoteConfigRemoteConfigVersion>>('versions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RemoteConfigRemoteConfigVersion>(guardedValue, (value) => RemoteConfigRemoteConfigVersion.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
