import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_organization_event_threat_detection_custom_module_args.dart';
import 'management_organization_event_threat_detection_custom_module_state.dart';

/// Represents an instance of an Event Threat Detection custom module, including
/// its full module name, display name, enablement state, and last updated time.
/// You can create a custom module at the organization level only.
///
///
/// To get more information about OrganizationEventThreatDetectionCustomModule, see:
///
/// * [API documentation](https://cloud.google.com/security-command-center/docs/reference/security-center-management/rest/v1/organizations.locations.eventThreatDetectionCustomModules)
/// * How-to Guides
/// * [Overview of custom modules for Event Threat Detection](https://cloud.google.com/security-command-center/docs/custom-modules-etd-overview)
///
/// ## Example Usage
///
/// ### Scc Management Organization Event Threat Detection Custom Module
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.securitycenter.ManagementOrganizationEventThreatDetectionCustomModule("example", {
///     organization: "123456789",
///     location: "global",
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
/// example = gcp.securitycenter.ManagementOrganizationEventThreatDetectionCustomModule("example",
///     organization="123456789",
///     location="global",
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
///     var example = new Gcp.SecurityCenter.ManagementOrganizationEventThreatDetectionCustomModule("example", new()
///     {
///         Organization = "123456789",
///         Location = "global",
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
/// 			"metadata": map[string]string{
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
/// 		_, err = securitycenter.NewManagementOrganizationEventThreatDetectionCustomModule(ctx, "example", &securitycenter.ManagementOrganizationEventThreatDetectionCustomModuleArgs{
/// 			Organization:    pulumi.String("123456789"),
/// 			Location:        pulumi.String("global"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_securitycenter_managementorganizationeventthreatdetectioncustommodule" "example" {
///   organization     = "123456789"
///   location         = "global"
///   display_name     = "basic_custom_module"
///   enablement_state = "ENABLED"
///   type             = "CONFIGURABLE_BAD_IP"
///   description      = "My Event Threat Detection Custom Module"
///   config = jsonencode({
///     "metadata" = {
///       "severity"       = "LOW"
///       "description"    = "Flagged by Forcepoint as malicious"
///       "recommendation" = "Contact the owner of the relevant project."
///     }
///     "ips" = ["192.0.2.1", "192.0.2.0/24"]
///   })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.securitycenter.ManagementOrganizationEventThreatDetectionCustomModule;
/// import com.pulumi.gcp.securitycenter.ManagementOrganizationEventThreatDetectionCustomModuleArgs;
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
///         var example = new ManagementOrganizationEventThreatDetectionCustomModule("example", ManagementOrganizationEventThreatDetectionCustomModuleArgs.builder()
///             .organization("123456789")
///             .location("global")
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
///     type: gcp:securitycenter:ManagementOrganizationEventThreatDetectionCustomModule
///     properties:
///       organization: '123456789'
///       location: global
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
/// OrganizationEventThreatDetectionCustomModule can be imported using any of these accepted formats:
///
/// * `organizations/{{organization}}/locations/{{location}}/eventThreatDetectionCustomModules/{{name}}`
/// * `{{organization}}/{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, OrganizationEventThreatDetectionCustomModule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securitycenter/managementOrganizationEventThreatDetectionCustomModule:ManagementOrganizationEventThreatDetectionCustomModule default organizations/{{organization}}/locations/{{location}}/eventThreatDetectionCustomModules/{{name}}
/// $ pulumi import gcp:securitycenter/managementOrganizationEventThreatDetectionCustomModule:ManagementOrganizationEventThreatDetectionCustomModule default {{organization}}/{{location}}/{{name}}
/// ```
class ManagementOrganizationEventThreatDetectionCustomModule extends pulumi.CustomResource {
  /// Config for the module. For the resident module, its config value is defined at this level.
  /// For the inherited module, its config value is inherited from the ancestor module.
  late final pulumi.Output<String?> config;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The human readable name to be displayed for the module.
  late final pulumi.Output<String?> displayName;
  /// The state of enablement for the module at the given level of the hierarchy.
  /// Possible values are: `ENABLED`, `DISABLED`.
  late final pulumi.Output<String?> enablementState;
  /// The editor that last updated the custom module
  late final pulumi.Output<String> lastEditor;
  /// Location ID of the parent organization. Only global is supported at the moment.
  late final pulumi.Output<String?> location;
  /// The resource name of the Event Threat Detection custom module.
  /// Its format is "organizations/{organization}/locations/{location}/eventThreatDetectionCustomModules/{eventThreatDetectionCustomModule}".
  late final pulumi.Output<String> name;
  /// Numerical ID of the parent organization.
  late final pulumi.Output<String> organization;
  /// Immutable. Type for the module. e.g. CONFIGURABLE_BAD_IP.
  late final pulumi.Output<String?> type;
  /// The time at which the custom module was last updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ManagementOrganizationEventThreatDetectionCustomModule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagementOrganizationEventThreatDetectionCustomModule]. {@macro pulumi_securitycenter_management_organization_event_threat_detection_custom_module_management_organization_event_threat_detection_custom_module_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagementOrganizationEventThreatDetectionCustomModule(
    String name, {
    ManagementOrganizationEventThreatDetectionCustomModuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/managementOrganizationEventThreatDetectionCustomModule:ManagementOrganizationEventThreatDetectionCustomModule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    config = registerOutput<String?>('config');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    enablementState = registerOutput<String?>('enablementState');
    lastEditor = registerOutput<String>('lastEditor');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    organization = registerOutput<String>('organization');
    type = registerOutput<String?>('type');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [ManagementOrganizationEventThreatDetectionCustomModule] resource's state with the given [name] and [id].
  static ManagementOrganizationEventThreatDetectionCustomModule get(
    String name,
    pulumi.Input<String> id, {
    ManagementOrganizationEventThreatDetectionCustomModuleState? state,
  }) {
    return ManagementOrganizationEventThreatDetectionCustomModule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ManagementOrganizationEventThreatDetectionCustomModule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/managementOrganizationEventThreatDetectionCustomModule:ManagementOrganizationEventThreatDetectionCustomModule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    config = registerOutput<String?>('config');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    enablementState = registerOutput<String?>('enablementState');
    lastEditor = registerOutput<String>('lastEditor');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    organization = registerOutput<String>('organization');
    type = registerOutput<String?>('type');
    updateTime = registerOutput<String>('updateTime');
  }
}
