import 'package:pulumi/pulumi.dart' as pulumi;
import 'parser_args.dart';
import 'parser_low_code.dart';
import 'parser_state.dart';
import 'parser_version_info.dart';

/// A parser is a configuration that parses raw logs of a specific log type into Unified Data Model (UDM) events.
/// Chronicle supports both customer-created custom parsers and Google-provided prebuilt parsers.
///
///
/// To get more information about Parser, see:
///
/// * [API documentation](https://cloud.google.com/chronicle/docs/reference/rest/v1/projects.locations.instances.logTypes.parsers)
/// * How-to Guides
/// * [Custom parsers overview](https://cloud.google.com/chronicle/docs/detection/custom-parsers-overview)
///
/// ## Example Usage
///
/// ### Chronicle Parser Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.chronicle.Parser("example", {
///     location: "us",
///     instance: "00000000-0000-0000-0000-000000000000",
///     logtype: "WINDOWS_DHCP",
///     validationSkipped: true,
///     cbn: "ZHVtbXkgcGFyc2VyIGNvbmZpZw==",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.chronicle.Parser("example",
///     location="us",
///     instance="00000000-0000-0000-0000-000000000000",
///     logtype="WINDOWS_DHCP",
///     validation_skipped=True,
///     cbn="ZHVtbXkgcGFyc2VyIGNvbmZpZw==")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.Chronicle.Parser("example", new()
///     {
///         Location = "us",
///         Instance = "00000000-0000-0000-0000-000000000000",
///         Logtype = "WINDOWS_DHCP",
///         ValidationSkipped = true,
///         Cbn = "ZHVtbXkgcGFyc2VyIGNvbmZpZw==",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/chronicle"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := chronicle.NewParser(ctx, "example", &chronicle.ParserArgs{
/// 			Location:          pulumi.String("us"),
/// 			Instance:          pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			Logtype:           pulumi.String("WINDOWS_DHCP"),
/// 			ValidationSkipped: pulumi.Bool(true),
/// 			Cbn:               pulumi.String("ZHVtbXkgcGFyc2VyIGNvbmZpZw=="),
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
/// resource "gcp_chronicle_parser" "example" {
///   location           = "us"
///   instance           = "00000000-0000-0000-0000-000000000000"
///   logtype            = "WINDOWS_DHCP"
///   validation_skipped = true
///   cbn                = "ZHVtbXkgcGFyc2VyIGNvbmZpZw=="
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.chronicle.Parser;
/// import com.pulumi.gcp.chronicle.ParserArgs;
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
///         var example = new Parser("example", ParserArgs.builder()
///             .location("us")
///             .instance("00000000-0000-0000-0000-000000000000")
///             .logtype("WINDOWS_DHCP")
///             .validationSkipped(true)
///             .cbn("ZHVtbXkgcGFyc2VyIGNvbmZpZw==")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:chronicle:Parser
///     properties:
///       location: us
///       instance: 00000000-0000-0000-0000-000000000000
///       logtype: WINDOWS_DHCP
///       validationSkipped: true
///       cbn: ZHVtbXkgcGFyc2VyIGNvbmZpZw==
/// ```
///
/// ### Chronicle Parser Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.chronicle.Parser("example", {
///     location: "us",
///     instance: "00000000-0000-0000-0000-000000000000",
///     logtype: "LINUX_DHCP",
///     validatedOnEmptyLogs: false,
///     validationSkipped: true,
///     lowCode: {
///         log: "ZHVtbXkgbG9nIGJ5dGVz",
///         fieldExtractors: {
///             logFormat: "JSON",
///             appendRepeatedFields: true,
///             preprocessConfig: {
///                 grokRegex: "(?P<message>.*)",
///                 target: "message",
///             },
///             extractors: [
///                 {
///                     fieldPath: "$.ip",
///                     destinationPath: "udm.principal.ip",
///                     preconditionOp: "EQUALS",
///                     preconditionPath: "$.event",
///                     preconditionValue: "login",
///                 },
///                 {
///                     destinationPath: "udm.metadata.product_name",
///                     value: "Google",
///                 },
///             ],
///         },
///     },
///     versionInfo: {
///         autoUpgradeDisabled: false,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.chronicle.Parser("example",
///     location="us",
///     instance="00000000-0000-0000-0000-000000000000",
///     logtype="LINUX_DHCP",
///     validated_on_empty_logs=False,
///     validation_skipped=True,
///     low_code={
///         "log": "ZHVtbXkgbG9nIGJ5dGVz",
///         "field_extractors": {
///             "log_format": "JSON",
///             "append_repeated_fields": True,
///             "preprocess_config": {
///                 "grok_regex": "(?P<message>.*)",
///                 "target": "message",
///             },
///             "extractors": [
///                 {
///                     "field_path": "$.ip",
///                     "destination_path": "udm.principal.ip",
///                     "precondition_op": "EQUALS",
///                     "precondition_path": "$.event",
///                     "precondition_value": "login",
///                 },
///                 {
///                     "destination_path": "udm.metadata.product_name",
///                     "value": "Google",
///                 },
///             ],
///         },
///     },
///     version_info={
///         "auto_upgrade_disabled": False,
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
///     var example = new Gcp.Chronicle.Parser("example", new()
///     {
///         Location = "us",
///         Instance = "00000000-0000-0000-0000-000000000000",
///         Logtype = "LINUX_DHCP",
///         ValidatedOnEmptyLogs = false,
///         ValidationSkipped = true,
///         LowCode = new Gcp.Chronicle.Inputs.ParserLowCodeArgs
///         {
///             Log = "ZHVtbXkgbG9nIGJ5dGVz",
///             FieldExtractors = new Gcp.Chronicle.Inputs.ParserLowCodeFieldExtractorsArgs
///             {
///                 LogFormat = "JSON",
///                 AppendRepeatedFields = true,
///                 PreprocessConfig = new Gcp.Chronicle.Inputs.ParserLowCodeFieldExtractorsPreprocessConfigArgs
///                 {
///                     GrokRegex = "(?P<message>.*)",
///                     Target = "message",
///                 },
///                 Extractors = new[]
///                 {
///                     new Gcp.Chronicle.Inputs.ParserLowCodeFieldExtractorsExtractorArgs
///                     {
///                         FieldPath = "$.ip",
///                         DestinationPath = "udm.principal.ip",
///                         PreconditionOp = "EQUALS",
///                         PreconditionPath = "$.event",
///                         PreconditionValue = "login",
///                     },
///                     new Gcp.Chronicle.Inputs.ParserLowCodeFieldExtractorsExtractorArgs
///                     {
///                         DestinationPath = "udm.metadata.product_name",
///                         Value = "Google",
///                     },
///                 },
///             },
///         },
///         VersionInfo = new Gcp.Chronicle.Inputs.ParserVersionInfoArgs
///         {
///             AutoUpgradeDisabled = false,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/chronicle"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := chronicle.NewParser(ctx, "example", &chronicle.ParserArgs{
/// 			Location:             pulumi.String("us"),
/// 			Instance:             pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			Logtype:              pulumi.String("LINUX_DHCP"),
/// 			ValidatedOnEmptyLogs: pulumi.Bool(false),
/// 			ValidationSkipped:    pulumi.Bool(true),
/// 			LowCode: &chronicle.ParserLowCodeArgs{
/// 				Log: pulumi.String("ZHVtbXkgbG9nIGJ5dGVz"),
/// 				FieldExtractors: &chronicle.ParserLowCodeFieldExtractorsArgs{
/// 					LogFormat:            pulumi.String("JSON"),
/// 					AppendRepeatedFields: pulumi.Bool(true),
/// 					PreprocessConfig: &chronicle.ParserLowCodeFieldExtractorsPreprocessConfigArgs{
/// 						GrokRegex: pulumi.String("(?P<message>.*)"),
/// 						Target:    pulumi.String("message"),
/// 					},
/// 					Extractors: chronicle.ParserLowCodeFieldExtractorsExtractorArray{
/// 						&chronicle.ParserLowCodeFieldExtractorsExtractorArgs{
/// 							FieldPath:         pulumi.String("$.ip"),
/// 							DestinationPath:   pulumi.String("udm.principal.ip"),
/// 							PreconditionOp:    pulumi.String("EQUALS"),
/// 							PreconditionPath:  pulumi.String("$.event"),
/// 							PreconditionValue: pulumi.String("login"),
/// 						},
/// 						&chronicle.ParserLowCodeFieldExtractorsExtractorArgs{
/// 							DestinationPath: pulumi.String("udm.metadata.product_name"),
/// 							Value:           pulumi.String("Google"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VersionInfo: &chronicle.ParserVersionInfoArgs{
/// 				AutoUpgradeDisabled: pulumi.Bool(false),
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
/// resource "gcp_chronicle_parser" "example" {
///   location                = "us"
///   instance                = "00000000-0000-0000-0000-000000000000"
///   logtype                 = "LINUX_DHCP"
///   validated_on_empty_logs = false
///   validation_skipped      = true
///   low_code = {
///     log = "ZHVtbXkgbG9nIGJ5dGVz"
///     field_extractors = {
///       log_format             = "JSON"
///       append_repeated_fields = true
///       preprocess_config = {
///         grok_regex = "(?P<message>.*)"
///         target     = "message"
///       }
///       extractors = [{
///         "fieldPath"         = "$.ip"
///         "destinationPath"   = "udm.principal.ip"
///         "preconditionOp"    = "EQUALS"
///         "preconditionPath"  = "$.event"
///         "preconditionValue" = "login"
///         }, {
///         "destinationPath" = "udm.metadata.product_name"
///         "value"           = "Google"
///       }]
///     }
///   }
///   version_info = {
///     auto_upgrade_disabled = false
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.chronicle.Parser;
/// import com.pulumi.gcp.chronicle.ParserArgs;
/// import com.pulumi.gcp.chronicle.inputs.ParserLowCodeArgs;
/// import com.pulumi.gcp.chronicle.inputs.ParserLowCodeFieldExtractorsArgs;
/// import com.pulumi.gcp.chronicle.inputs.ParserLowCodeFieldExtractorsPreprocessConfigArgs;
/// import com.pulumi.gcp.chronicle.inputs.ParserLowCodeFieldExtractorsExtractorArgs;
/// import com.pulumi.gcp.chronicle.inputs.ParserVersionInfoArgs;
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
///         var example = new Parser("example", ParserArgs.builder()
///             .location("us")
///             .instance("00000000-0000-0000-0000-000000000000")
///             .logtype("LINUX_DHCP")
///             .validatedOnEmptyLogs(false)
///             .validationSkipped(true)
///             .lowCode(ParserLowCodeArgs.builder()
///                 .log("ZHVtbXkgbG9nIGJ5dGVz")
///                 .fieldExtractors(ParserLowCodeFieldExtractorsArgs.builder()
///                     .logFormat("JSON")
///                     .appendRepeatedFields(true)
///                     .preprocessConfig(ParserLowCodeFieldExtractorsPreprocessConfigArgs.builder()
///                         .grokRegex("(?P<message>.*)")
///                         .target("message")
///                         .build())
///                     .extractors(
///                         ParserLowCodeFieldExtractorsExtractorArgs.builder()
///                             .fieldPath("$.ip")
///                             .destinationPath("udm.principal.ip")
///                             .preconditionOp("EQUALS")
///                             .preconditionPath("$.event")
///                             .preconditionValue("login")
///                             .build(),
///                         ParserLowCodeFieldExtractorsExtractorArgs.builder()
///                             .destinationPath("udm.metadata.product_name")
///                             .value("Google")
///                             .build())
///                     .build())
///                 .build())
///             .versionInfo(ParserVersionInfoArgs.builder()
///                 .autoUpgradeDisabled(false)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:chronicle:Parser
///     properties:
///       location: us
///       instance: 00000000-0000-0000-0000-000000000000
///       logtype: LINUX_DHCP
///       validatedOnEmptyLogs: false
///       validationSkipped: true
///       lowCode:
///         log: ZHVtbXkgbG9nIGJ5dGVz
///         fieldExtractors:
///           logFormat: JSON
///           appendRepeatedFields: true
///           preprocessConfig:
///             grokRegex: (?P<message>.*)
///             target: message
///           extractors:
///             - fieldPath: $.ip
///               destinationPath: udm.principal.ip
///               preconditionOp: EQUALS
///               preconditionPath: $.event
///               preconditionValue: login
///             - destinationPath: udm.metadata.product_name
///               value: Google
///       versionInfo:
///         autoUpgradeDisabled: false
/// ```
///
///
/// ## Import
///
/// Parser can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{instance}}/logTypes/{{logtype}}/parsers/{{parser}}`
/// * `{{project}}/{{location}}/{{instance}}/{{logtype}}/{{parser}}`
/// * `{{location}}/{{instance}}/{{logtype}}/{{parser}}`
///
///
/// When using the `pulumi import` command, Parser can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:chronicle/parser:Parser default projects/{{project}}/locations/{{location}}/instances/{{instance}}/logTypes/{{logtype}}/parsers/{{parser}}
/// $ pulumi import gcp:chronicle/parser:Parser default {{project}}/{{location}}/{{instance}}/{{logtype}}/{{parser}}
/// $ pulumi import gcp:chronicle/parser:Parser default {{location}}/{{instance}}/{{logtype}}/{{parser}}
/// ```
class Parser extends pulumi.CustomResource {
  /// if the parser is built using config
  /// documentation:
  /// https://cloud.google.com/chronicle/docs/preview/parser-extensions/parsing-overview
  late final pulumi.Output<String?> cbn;
  /// Changelogs of a parser.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> changelogs;
  /// (Output)
  /// Time at which changelog was created.
  late final pulumi.Output<String> createTime;
  /// Information about the creator of the parser.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> creators;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Dynamic parsing config applied over the parser, if any.
  late final pulumi.Output<String> dynamicParsingConfig;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> instance;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> logtype;
  /// Message to represent LowCodeParser.
  /// Structure is documented below.
  late final pulumi.Output<ParserLowCode?> lowCode;
  /// name of the parser resource.
  late final pulumi.Output<String> name;
  /// Output only. The server-generated ID of the parser.
  late final pulumi.Output<String> parser;
  /// Extension applied over the parser, if any.
  late final pulumi.Output<String> parserExtension;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The release stage of the parser
  /// After internal validations the prebuilt parser will directly start as
  /// Release Candidate. The releaseStage of prebuilt parsers are changed
  /// after every release cycle:
  /// The prebuilt Release Candidate parser is promoted as Release parser.
  /// The existing prebuilt Release parser is moved to Rollback state.
  /// and existing prebuilt rollback parser is moved to Archived.
  /// In case of custom parser:
  /// When the customer submits a validation passed custom parser it starts as
  /// Release state.
  /// And existing one is moved to Rollback stage.
  /// And the existing rollback is moved to Archived.
  /// In case a release or release candidate parser is found faulty,
  /// the parser is marked FAULTY,
  /// if it is release parser then rollback candidate is moved to release.
  /// Possible values:
  /// RELEASE
  /// RELEASE_CANDIDATE
  /// ROLLBACK_CANDIDATE
  /// ARCHIVED
  /// FAULTY
  /// ARCHIVED_IN_USE
  late final pulumi.Output<String> releaseStage;
  /// The state of the parser
  /// Possible values:
  /// ACTIVE
  /// INACTIVE
  late final pulumi.Output<String> state;
  /// The type of the parser
  /// Possible values:
  /// CUSTOM
  /// PREBUILT
  late final pulumi.Output<String> type;
  /// Flag to bypass parser validation when no logs are found.
  /// If enabled, the parser won't be be rejected during the validation
  /// phase when no logs are found.
  late final pulumi.Output<bool?> validatedOnEmptyLogs;
  /// The Validation report generated during parser validation.
  late final pulumi.Output<String> validationReport;
  /// If true, bypasses parser validation.
  /// If enabled, the parser won't be rejected during the validation
  /// phase and validation will be skipped.
  late final pulumi.Output<bool?> validationSkipped;
  /// The validation stage of the parser
  /// When a customer submits a new parser for validation, it starts with a
  /// new stage.
  /// When parser is picked for validation, it changes to Validation state.
  /// If validation failed it is marked as failed, and
  /// existing failed is moved to deleteCandidate stage.
  /// If passes it is moved to passed stage.
  /// If customer opts to submit it, the parser is moved to Release State.
  /// Possible values:
  /// NEW
  /// VALIDATING
  /// PASSED
  /// FAILED
  /// DELETE_CANDIDATE
  /// INTERNAL_ERROR
  /// VALIDATION_SKIPPED
  late final pulumi.Output<String> validationStage;
  /// ParserVersionInfo gives the version information of the parser and related
  /// properties like pinned etc.
  /// Structure is documented below.
  late final pulumi.Output<ParserVersionInfo?> versionInfo;

  /// Creates a new [Parser].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Parser]. {@macro pulumi_chronicle_parser_parser_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Parser(
    String name, {
    ParserArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/parser:Parser',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cbn = registerOutput<String?>('cbn');
    changelogs = registerOutput<List<Map<String, dynamic>>>('changelogs');
    createTime = registerOutput<String>('createTime');
    creators = registerOutput<List<Map<String, dynamic>>>('creators');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    dynamicParsingConfig = registerOutput<String>('dynamicParsingConfig');
    instance = registerOutput<String>('instance');
    location = registerOutput<String>('location');
    logtype = registerOutput<String>('logtype');
    lowCode = registerOutput<ParserLowCode?>('lowCode', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ParserLowCode.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    parser = registerOutput<String>('parser');
    parserExtension = registerOutput<String>('parserExtension');
    project = registerOutput<String>('project');
    releaseStage = registerOutput<String>('releaseStage');
    state = registerOutput<String>('state');
    type = registerOutput<String>('type');
    validatedOnEmptyLogs = registerOutput<bool?>('validatedOnEmptyLogs');
    validationReport = registerOutput<String>('validationReport');
    validationSkipped = registerOutput<bool?>('validationSkipped');
    validationStage = registerOutput<String>('validationStage');
    versionInfo = registerOutput<ParserVersionInfo?>('versionInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ParserVersionInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Parser] resource's state with the given [name] and [id].
  static Parser get(
    String name,
    pulumi.Input<String> id, {
    ParserState? state,
  }) {
    return Parser._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Parser._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/parser:Parser',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cbn = registerOutput<String?>('cbn');
    changelogs = registerOutput<List<Map<String, dynamic>>>('changelogs');
    createTime = registerOutput<String>('createTime');
    creators = registerOutput<List<Map<String, dynamic>>>('creators');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    dynamicParsingConfig = registerOutput<String>('dynamicParsingConfig');
    instance = registerOutput<String>('instance');
    location = registerOutput<String>('location');
    logtype = registerOutput<String>('logtype');
    lowCode = registerOutput<ParserLowCode?>('lowCode', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ParserLowCode.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    parser = registerOutput<String>('parser');
    parserExtension = registerOutput<String>('parserExtension');
    project = registerOutput<String>('project');
    releaseStage = registerOutput<String>('releaseStage');
    this.state = registerOutput<String>('state');
    type = registerOutput<String>('type');
    validatedOnEmptyLogs = registerOutput<bool?>('validatedOnEmptyLogs');
    validationReport = registerOutput<String>('validationReport');
    validationSkipped = registerOutput<bool?>('validationSkipped');
    validationStage = registerOutput<String>('validationStage');
    versionInfo = registerOutput<ParserVersionInfo?>('versionInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ParserVersionInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
