import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_threat_detection_custom_module_args.dart';
import 'event_threat_detection_custom_module_state.dart';

/// Represents an instance of an Event Threat Detection custom module, including
/// its full module name, display name, enablement state, andlast updated time.
/// You can create a custom module at the organization level only.
///
///
/// To get more information about EventThreatDetectionCustomModule, see:
///
/// * [API documentation](https://cloud.google.com/security-command-center/docs/reference/rest/v1/organizations.eventThreatDetectionSettings.customModules)
/// * How-to Guides
/// * [Overview of custom modules for Event Threat Detection](https://cloud.google.com/security-command-center/docs/custom-modules-etd-overview)
///
/// ## Example Usage
///
/// ### Scc Event Threat Detection Custom Module
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.securitycenter.EventThreatDetectionCustomModule("example", {
///     organization: "123456789",
///     displayName: "basic_custom_module",
///     enablementState: "ENABLED",
///     type: "CONFIGURABLE_BAD_IP",
///     description: "My Event Threat Detection Custom Module",
///     config: JSON.stringify({
///         metadata: {
///             severity: "LOW",
///             description: "Flagged by Forcepoint as malicious",
///             recommendation: "Contact the owner of the relevant project.",
///         },
///         ips: [
///             "192.0.2.1",
///             "192.0.2.0/24",
///         ],
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// example = gcp.securitycenter.EventThreatDetectionCustomModule("example",
///     organization="123456789",
///     display_name="basic_custom_module",
///     enablement_state="ENABLED",
///     type="CONFIGURABLE_BAD_IP",
///     description="My Event Threat Detection Custom Module",
///     config=json.dumps({
///         "metadata": {
///             "severity": "LOW",
///             "description": "Flagged by Forcepoint as malicious",
///             "recommendation": "Contact the owner of the relevant project.",
///         },
///         "ips": [
///             "192.0.2.1",
///             "192.0.2.0/24",
///         ],
///     }))
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
///     var example = new Gcp.SecurityCenter.EventThreatDetectionCustomModule("example", new()
///     {
///         Organization = "123456789",
///         DisplayName = "basic_custom_module",
///         EnablementState = "ENABLED",
///         Type = "CONFIGURABLE_BAD_IP",
///         Description = "My Event Threat Detection Custom Module",
///         Config = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["metadata"] = new Dictionary<string, object?>
///             {
///                 ["severity"] = "LOW",
///                 ["description"] = "Flagged by Forcepoint as malicious",
///                 ["recommendation"] = "Contact the owner of the relevant project.",
///             },
///             ["ips"] = new[]
///             {
///                 "192.0.2.1",
///                 "192.0.2.0/24",
///             },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securitycenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"metadata": map[string]interface{}{
/// 				"severity":       "LOW",
/// 				"description":    "Flagged by Forcepoint as malicious",
/// 				"recommendation": "Contact the owner of the relevant project.",
/// 			},
/// 			"ips": []string{
/// 				"192.0.2.1",
/// 				"192.0.2.0/24",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = securitycenter.NewEventThreatDetectionCustomModule(ctx, "example", &securitycenter.EventThreatDetectionCustomModuleArgs{
/// 			Organization:    pulumi.String("123456789"),
/// 			DisplayName:     pulumi.String("basic_custom_module"),
/// 			EnablementState: pulumi.String("ENABLED"),
/// 			Type:            pulumi.String("CONFIGURABLE_BAD_IP"),
/// 			Description:     "My Event Threat Detection Custom Module",
/// 			Config:          pulumi.String(json0),
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
/// import com.pulumi.gcp.securitycenter.EventThreatDetectionCustomModule;
/// import com.pulumi.gcp.securitycenter.EventThreatDetectionCustomModuleArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var example = new EventThreatDetectionCustomModule("example", EventThreatDetectionCustomModuleArgs.builder()
///             .organization("123456789")
///             .displayName("basic_custom_module")
///             .enablementState("ENABLED")
///             .type("CONFIGURABLE_BAD_IP")
///             .description("My Event Threat Detection Custom Module")
///             .config(serializeJson(
///                 jsonObject(
///                     jsonProperty("metadata", jsonObject(
///                         jsonProperty("severity", "LOW"),
///                         jsonProperty("description", "Flagged by Forcepoint as malicious"),
///                         jsonProperty("recommendation", "Contact the owner of the relevant project.")
///                     )),
///                     jsonProperty("ips", jsonArray(
///                         "192.0.2.1",
///                         "192.0.2.0/24"
///                     ))
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:securitycenter:EventThreatDetectionCustomModule
///     properties:
///       organization: '123456789'
///       displayName: basic_custom_module
///       enablementState: ENABLED
///       type: CONFIGURABLE_BAD_IP
///       description: My Event Threat Detection Custom Module
///       config:
///         fn::toJSON:
///           metadata:
///             severity: LOW
///             description: Flagged by Forcepoint as malicious
///             recommendation: Contact the owner of the relevant project.
///           ips:
///             - 192.0.2.1
///             - 192.0.2.0/24
/// ```
///
///
/// ## Import
///
/// EventThreatDetectionCustomModule can be imported using any of these accepted formats:
///
/// * `organizations/{{organization}}/eventThreatDetectionSettings/customModules/{{name}}`
///
/// * `{{organization}}/{{name}}`
///
/// When using the `pulumi import` command, EventThreatDetectionCustomModule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securitycenter/eventThreatDetectionCustomModule:EventThreatDetectionCustomModule default organizations/{{organization}}/eventThreatDetectionSettings/customModules/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securitycenter/eventThreatDetectionCustomModule:EventThreatDetectionCustomModule default {{organization}}/{{name}}
/// ```
class EventThreatDetectionCustomModule extends pulumi.CustomResource {
  /// Config for the module. For the resident module, its config value is defined at this level.
  /// For the inherited module, its config value is inherited from the ancestor module.
  late final pulumi.Output<String> config;
  /// The human readable name to be displayed for the module.
  late final pulumi.Output<String?> displayName;
  /// The state of enablement for the module at the given level of the hierarchy.
  /// Possible values are: `ENABLED`, `DISABLED`.
  late final pulumi.Output<String> enablementState;
  /// The editor that last updated the custom module
  late final pulumi.Output<String> lastEditor;
  /// The resource name of the Event Threat Detection custom module.
  /// Its format is "organizations/{organization}/eventThreatDetectionSettings/customModules/{module}".
  late final pulumi.Output<String> name;
  /// Numerical ID of the parent organization.
  late final pulumi.Output<String> organization;
  /// Immutable. Type for the module. e.g. CONFIGURABLE_BAD_IP.
  late final pulumi.Output<String> type;
  /// The time at which the custom module was last updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;

  /// Creates a new [EventThreatDetectionCustomModule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventThreatDetectionCustomModule]. {@macro pulumi_securitycenter_event_threat_detection_custom_module_event_threat_detection_custom_module_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventThreatDetectionCustomModule(
    String name, {
    EventThreatDetectionCustomModuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/eventThreatDetectionCustomModule:EventThreatDetectionCustomModule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.config = registerOutput<String>('config');
    this.displayName = registerOutput<String?>('displayName');
    this.enablementState = registerOutput<String>('enablementState');
    this.lastEditor = registerOutput<String>('lastEditor');
    this.name = registerOutput<String>('name');
    this.organization = registerOutput<String>('organization');
    this.type = registerOutput<String>('type');
    this.updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [EventThreatDetectionCustomModule] resource's state with the given [name] and [id].
  static EventThreatDetectionCustomModule get(
    String name,
    pulumi.Input<String> id, {
    EventThreatDetectionCustomModuleState? state,
  }) {
    return EventThreatDetectionCustomModule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EventThreatDetectionCustomModule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/eventThreatDetectionCustomModule:EventThreatDetectionCustomModule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.config = registerOutput<String>('config');
    this.displayName = registerOutput<String?>('displayName');
    this.enablementState = registerOutput<String>('enablementState');
    this.lastEditor = registerOutput<String>('lastEditor');
    this.name = registerOutput<String>('name');
    this.organization = registerOutput<String>('organization');
    this.type = registerOutput<String>('type');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
