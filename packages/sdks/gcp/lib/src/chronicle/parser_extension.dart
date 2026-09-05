import 'package:pulumi/pulumi.dart' as pulumi;
import 'parser_extension_args.dart';
import 'parser_extension_dynamic_parsing.dart';
import 'parser_extension_field_extractors.dart';
import 'parser_extension_state.dart';

/// A parser extension allows customers to extend or customize the behavior of an existing prebuilt or custom parser.
/// It enables extracting additional fields from raw logs without modifying the base parser.
///
///
/// To get more information about ParserExtension, see:
///
/// * [API documentation](https://cloud.google.com/chronicle/docs/reference/rest/v1/projects.locations.instances.logTypes.parserExtensions)
/// * How-to Guides
/// * [Custom parsers overview](https://cloud.google.com/chronicle/docs/detection/custom-parsers-overview)
///
/// ## Example Usage
///
/// ### Chronicle Parserextension Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.chronicle.ParserExtension("example", {
///     location: "us",
///     instance: "00000000-0000-0000-0000-000000000000",
///     logType: "CISCO_DHCP",
///     validationSkipped: true,
///     cbnSnippet: "ZHVtbXkgZXh0ZW5zaW9uIHNuaXBwZXQ=",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.chronicle.ParserExtension("example",
///     location="us",
///     instance="00000000-0000-0000-0000-000000000000",
///     log_type="CISCO_DHCP",
///     validation_skipped=True,
///     cbn_snippet="ZHVtbXkgZXh0ZW5zaW9uIHNuaXBwZXQ=")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.Chronicle.ParserExtension("example", new()
///     {
///         Location = "us",
///         Instance = "00000000-0000-0000-0000-000000000000",
///         LogType = "CISCO_DHCP",
///         ValidationSkipped = true,
///         CbnSnippet = "ZHVtbXkgZXh0ZW5zaW9uIHNuaXBwZXQ=",
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
/// 		_, err := chronicle.NewParserExtension(ctx, "example", &chronicle.ParserExtensionArgs{
/// 			Location:          pulumi.String("us"),
/// 			Instance:          pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			LogType:           pulumi.String("CISCO_DHCP"),
/// 			ValidationSkipped: pulumi.Bool(true),
/// 			CbnSnippet:        pulumi.String("ZHVtbXkgZXh0ZW5zaW9uIHNuaXBwZXQ="),
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
/// resource "gcp_chronicle_parserextension" "example" {
///   location           = "us"
///   instance           = "00000000-0000-0000-0000-000000000000"
///   log_type           = "CISCO_DHCP"
///   validation_skipped = true
///   cbn_snippet        = "ZHVtbXkgZXh0ZW5zaW9uIHNuaXBwZXQ="
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.chronicle.ParserExtension;
/// import com.pulumi.gcp.chronicle.ParserExtensionArgs;
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
///         var example = new ParserExtension("example", ParserExtensionArgs.builder()
///             .location("us")
///             .instance("00000000-0000-0000-0000-000000000000")
///             .logType("CISCO_DHCP")
///             .validationSkipped(true)
///             .cbnSnippet("ZHVtbXkgZXh0ZW5zaW9uIHNuaXBwZXQ=")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:chronicle:ParserExtension
///     properties:
///       location: us
///       instance: 00000000-0000-0000-0000-000000000000
///       logType: CISCO_DHCP
///       validationSkipped: true
///       cbnSnippet: ZHVtbXkgZXh0ZW5zaW9uIHNuaXBwZXQ=
/// ```
///
/// ### Chronicle Parserextension Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.chronicle.ParserExtension("example", {
///     location: "us",
///     instance: "00000000-0000-0000-0000-000000000000",
///     logType: "AKAMAI_DHCP",
///     validationSkipped: true,
///     log: "ZHVtbXkgbG9n",
///     fieldExtractors: {
///         logFormat: "JSON",
///         appendRepeatedFields: true,
///         preprocessConfig: {
///             grokRegex: "(?P<message>.*)",
///             target: "message",
///         },
///         extractors: [
///             {
///                 fieldPath: "$.user",
///                 destinationPath: "udm.principal.user.userid",
///                 value: "static-override",
///             },
///             {
///                 fieldPath: "$.event",
///                 destinationPath: "udm.metadata.event_type",
///                 preconditionOp: "EQUALS",
///                 preconditionPath: "$.event",
///                 preconditionValue: "login",
///             },
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.chronicle.ParserExtension("example",
///     location="us",
///     instance="00000000-0000-0000-0000-000000000000",
///     log_type="AKAMAI_DHCP",
///     validation_skipped=True,
///     log="ZHVtbXkgbG9n",
///     field_extractors={
///         "log_format": "JSON",
///         "append_repeated_fields": True,
///         "preprocess_config": {
///             "grok_regex": "(?P<message>.*)",
///             "target": "message",
///         },
///         "extractors": [
///             {
///                 "field_path": "$.user",
///                 "destination_path": "udm.principal.user.userid",
///                 "value": "static-override",
///             },
///             {
///                 "field_path": "$.event",
///                 "destination_path": "udm.metadata.event_type",
///                 "precondition_op": "EQUALS",
///                 "precondition_path": "$.event",
///                 "precondition_value": "login",
///             },
///         ],
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
///     var example = new Gcp.Chronicle.ParserExtension("example", new()
///     {
///         Location = "us",
///         Instance = "00000000-0000-0000-0000-000000000000",
///         LogType = "AKAMAI_DHCP",
///         ValidationSkipped = true,
///         Log = "ZHVtbXkgbG9n",
///         FieldExtractors = new Gcp.Chronicle.Inputs.ParserExtensionFieldExtractorsArgs
///         {
///             LogFormat = "JSON",
///             AppendRepeatedFields = true,
///             PreprocessConfig = new Gcp.Chronicle.Inputs.ParserExtensionFieldExtractorsPreprocessConfigArgs
///             {
///                 GrokRegex = "(?P<message>.*)",
///                 Target = "message",
///             },
///             Extractors = new[]
///             {
///                 new Gcp.Chronicle.Inputs.ParserExtensionFieldExtractorsExtractorArgs
///                 {
///                     FieldPath = "$.user",
///                     DestinationPath = "udm.principal.user.userid",
///                     Value = "static-override",
///                 },
///                 new Gcp.Chronicle.Inputs.ParserExtensionFieldExtractorsExtractorArgs
///                 {
///                     FieldPath = "$.event",
///                     DestinationPath = "udm.metadata.event_type",
///                     PreconditionOp = "EQUALS",
///                     PreconditionPath = "$.event",
///                     PreconditionValue = "login",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/chronicle"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := chronicle.NewParserExtension(ctx, "example", &chronicle.ParserExtensionArgs{
/// 			Location:          pulumi.String("us"),
/// 			Instance:          pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			LogType:           pulumi.String("AKAMAI_DHCP"),
/// 			ValidationSkipped: pulumi.Bool(true),
/// 			Log:               pulumi.String("ZHVtbXkgbG9n"),
/// 			FieldExtractors: &chronicle.ParserExtensionFieldExtractorsArgs{
/// 				LogFormat:            pulumi.String("JSON"),
/// 				AppendRepeatedFields: pulumi.Bool(true),
/// 				PreprocessConfig: &chronicle.ParserExtensionFieldExtractorsPreprocessConfigArgs{
/// 					GrokRegex: pulumi.String("(?P<message>.*)"),
/// 					Target:    pulumi.String("message"),
/// 				},
/// 				Extractors: chronicle.ParserExtensionFieldExtractorsExtractorArray{
/// 					&chronicle.ParserExtensionFieldExtractorsExtractorArgs{
/// 						FieldPath:       pulumi.String("$.user"),
/// 						DestinationPath: pulumi.String("udm.principal.user.userid"),
/// 						Value:           pulumi.String("static-override"),
/// 					},
/// 					&chronicle.ParserExtensionFieldExtractorsExtractorArgs{
/// 						FieldPath:         pulumi.String("$.event"),
/// 						DestinationPath:   pulumi.String("udm.metadata.event_type"),
/// 						PreconditionOp:    pulumi.String("EQUALS"),
/// 						PreconditionPath:  pulumi.String("$.event"),
/// 						PreconditionValue: pulumi.String("login"),
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
/// resource "gcp_chronicle_parserextension" "example" {
///   location           = "us"
///   instance           = "00000000-0000-0000-0000-000000000000"
///   log_type           = "AKAMAI_DHCP"
///   validation_skipped = true
///   log                = "ZHVtbXkgbG9n"
///   field_extractors = {
///     log_format             = "JSON"
///     append_repeated_fields = true
///     preprocess_config = {
///       grok_regex = "(?P<message>.*)"
///       target     = "message"
///     }
///     extractors = [{
///       "fieldPath"       = "$.user"
///       "destinationPath" = "udm.principal.user.userid"
///       "value"           = "static-override"
///       }, {
///       "fieldPath"         = "$.event"
///       "destinationPath"   = "udm.metadata.event_type"
///       "preconditionOp"    = "EQUALS"
///       "preconditionPath"  = "$.event"
///       "preconditionValue" = "login"
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.chronicle.ParserExtension;
/// import com.pulumi.gcp.chronicle.ParserExtensionArgs;
/// import com.pulumi.gcp.chronicle.inputs.ParserExtensionFieldExtractorsArgs;
/// import com.pulumi.gcp.chronicle.inputs.ParserExtensionFieldExtractorsPreprocessConfigArgs;
/// import com.pulumi.gcp.chronicle.inputs.ParserExtensionFieldExtractorsExtractorArgs;
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
///         var example = new ParserExtension("example", ParserExtensionArgs.builder()
///             .location("us")
///             .instance("00000000-0000-0000-0000-000000000000")
///             .logType("AKAMAI_DHCP")
///             .validationSkipped(true)
///             .log("ZHVtbXkgbG9n")
///             .fieldExtractors(ParserExtensionFieldExtractorsArgs.builder()
///                 .logFormat("JSON")
///                 .appendRepeatedFields(true)
///                 .preprocessConfig(ParserExtensionFieldExtractorsPreprocessConfigArgs.builder()
///                     .grokRegex("(?P<message>.*)")
///                     .target("message")
///                     .build())
///                 .extractors(
///                     ParserExtensionFieldExtractorsExtractorArgs.builder()
///                         .fieldPath("$.user")
///                         .destinationPath("udm.principal.user.userid")
///                         .value("static-override")
///                         .build(),
///                     ParserExtensionFieldExtractorsExtractorArgs.builder()
///                         .fieldPath("$.event")
///                         .destinationPath("udm.metadata.event_type")
///                         .preconditionOp("EQUALS")
///                         .preconditionPath("$.event")
///                         .preconditionValue("login")
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:chronicle:ParserExtension
///     properties:
///       location: us
///       instance: 00000000-0000-0000-0000-000000000000
///       logType: AKAMAI_DHCP
///       validationSkipped: true
///       log: ZHVtbXkgbG9n
///       fieldExtractors:
///         logFormat: JSON
///         appendRepeatedFields: true
///         preprocessConfig:
///           grokRegex: (?P<message>.*)
///           target: message
///         extractors:
///           - fieldPath: $.user
///             destinationPath: udm.principal.user.userid
///             value: static-override
///           - fieldPath: $.event
///             destinationPath: udm.metadata.event_type
///             preconditionOp: EQUALS
///             preconditionPath: $.event
///             preconditionValue: login
/// ```
///
/// ### Chronicle Parserextension Dynamic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.chronicle.ParserExtension("example", {
///     location: "us",
///     instance: "00000000-0000-0000-0000-000000000000",
///     logType: "AKAMAI_DHCP",
///     validationSkipped: true,
///     log: "ZHVtbXkgbG9n",
///     dynamicParsing: {
///         optedFields: [{
///             path: "$.ip",
///             sampleValue: "1.1.1.1",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.chronicle.ParserExtension("example",
///     location="us",
///     instance="00000000-0000-0000-0000-000000000000",
///     log_type="AKAMAI_DHCP",
///     validation_skipped=True,
///     log="ZHVtbXkgbG9n",
///     dynamic_parsing={
///         "opted_fields": [{
///             "path": "$.ip",
///             "sample_value": "1.1.1.1",
///         }],
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
///     var example = new Gcp.Chronicle.ParserExtension("example", new()
///     {
///         Location = "us",
///         Instance = "00000000-0000-0000-0000-000000000000",
///         LogType = "AKAMAI_DHCP",
///         ValidationSkipped = true,
///         Log = "ZHVtbXkgbG9n",
///         DynamicParsing = new Gcp.Chronicle.Inputs.ParserExtensionDynamicParsingArgs
///         {
///             OptedFields = new[]
///             {
///                 new Gcp.Chronicle.Inputs.ParserExtensionDynamicParsingOptedFieldArgs
///                 {
///                     Path = "$.ip",
///                     SampleValue = "1.1.1.1",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/chronicle"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := chronicle.NewParserExtension(ctx, "example", &chronicle.ParserExtensionArgs{
/// 			Location:          pulumi.String("us"),
/// 			Instance:          pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			LogType:           pulumi.String("AKAMAI_DHCP"),
/// 			ValidationSkipped: pulumi.Bool(true),
/// 			Log:               pulumi.String("ZHVtbXkgbG9n"),
/// 			DynamicParsing: &chronicle.ParserExtensionDynamicParsingArgs{
/// 				OptedFields: chronicle.ParserExtensionDynamicParsingOptedFieldArray{
/// 					&chronicle.ParserExtensionDynamicParsingOptedFieldArgs{
/// 						Path:        pulumi.String("$.ip"),
/// 						SampleValue: pulumi.String("1.1.1.1"),
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
/// resource "gcp_chronicle_parserextension" "example" {
///   location           = "us"
///   instance           = "00000000-0000-0000-0000-000000000000"
///   log_type           = "AKAMAI_DHCP"
///   validation_skipped = true
///   log                = "ZHVtbXkgbG9n"
///   dynamic_parsing = {
///     opted_fields = [{
///       "path"        = "$.ip"
///       "sampleValue" = "1.1.1.1"
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.chronicle.ParserExtension;
/// import com.pulumi.gcp.chronicle.ParserExtensionArgs;
/// import com.pulumi.gcp.chronicle.inputs.ParserExtensionDynamicParsingArgs;
/// import com.pulumi.gcp.chronicle.inputs.ParserExtensionDynamicParsingOptedFieldArgs;
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
///         var example = new ParserExtension("example", ParserExtensionArgs.builder()
///             .location("us")
///             .instance("00000000-0000-0000-0000-000000000000")
///             .logType("AKAMAI_DHCP")
///             .validationSkipped(true)
///             .log("ZHVtbXkgbG9n")
///             .dynamicParsing(ParserExtensionDynamicParsingArgs.builder()
///                 .optedFields(ParserExtensionDynamicParsingOptedFieldArgs.builder()
///                     .path("$.ip")
///                     .sampleValue("1.1.1.1")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:chronicle:ParserExtension
///     properties:
///       location: us
///       instance: 00000000-0000-0000-0000-000000000000
///       logType: AKAMAI_DHCP
///       validationSkipped: true
///       log: ZHVtbXkgbG9n
///       dynamicParsing:
///         optedFields:
///           - path: $.ip
///             sampleValue: 1.1.1.1
/// ```
///
///
/// ## Import
///
/// ParserExtension can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{instance}}/logTypes/{{log_type}}/parserExtensions/{{parserextension}}`
/// * `{{project}}/{{location}}/{{instance}}/{{log_type}}/{{parserextension}}`
/// * `{{location}}/{{instance}}/{{log_type}}/{{parserextension}}`
///
///
/// When using the `pulumi import` command, ParserExtension can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:chronicle/parserExtension:ParserExtension default projects/{{project}}/locations/{{location}}/instances/{{instance}}/logTypes/{{log_type}}/parserExtensions/{{parserextension}}
/// $ pulumi import gcp:chronicle/parserExtension:ParserExtension default {{project}}/{{location}}/{{instance}}/{{log_type}}/{{parserextension}}
/// $ pulumi import gcp:chronicle/parserExtension:ParserExtension default {{location}}/{{instance}}/{{log_type}}/{{parserextension}}
/// ```
class ParserExtension extends pulumi.CustomResource {
  /// Parser config could be a cbn snippet.
  late final pulumi.Output<String?> cbnSnippet;
  /// The time the parser extension was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A representation of a parser extension as dynamic parsing config.
  /// Structure is documented below.
  late final pulumi.Output<ParserExtensionDynamicParsing?> dynamicParsing;
  /// The latest extension
  /// validation report for this extension.
  late final pulumi.Output<String> extensionValidationReport;
  /// A representation of a parser extension as a set of field extractors.
  /// Structure is documented below.
  late final pulumi.Output<ParserExtensionFieldExtractors?> fieldExtractors;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> instance;
  /// The time the config was last serving live traffic.
  late final pulumi.Output<String> lastLiveTime;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// Raw log used to assist the user in creation of augmentation.
  late final pulumi.Output<String?> log;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> logType;
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/logTypes/{logtype}/parserExtensions/{parserExtension}
  late final pulumi.Output<String> name;
  /// Output only. The server-generated ID of the parser extension.
  late final pulumi.Output<String> parserextension;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The state of the parser extension
  /// Possible values:
  /// NEW
  /// VALIDATING
  /// LIVE
  /// REJECTED
  /// INTERNAL_ERROR
  /// VALIDATED
  /// ARCHIVED
  /// VALIDATION_SKIPPED
  late final pulumi.Output<String> state;
  /// The time the config state was last changed.
  late final pulumi.Output<String> stateLastChangedTime;
  /// The validation report generated during extension validation.
  late final pulumi.Output<String> validationReport;
  /// Flag to bypass parser extension validation.
  /// If enabled, the parser extension won't be rejected during the validation
  /// phase and validation will be skipped.
  late final pulumi.Output<bool?> validationSkipped;

  /// Creates a new [ParserExtension].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ParserExtension]. {@macro pulumi_chronicle_parser_extension_parser_extension_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ParserExtension(
    String name, {
    ParserExtensionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/parserExtension:ParserExtension',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    cbnSnippet = registerOutput<String?>('cbnSnippet');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    dynamicParsing = registerOutput<ParserExtensionDynamicParsing?>('dynamicParsing', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ParserExtensionDynamicParsing.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    extensionValidationReport = registerOutput<String>('extensionValidationReport');
    fieldExtractors = registerOutput<ParserExtensionFieldExtractors?>('fieldExtractors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ParserExtensionFieldExtractors.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instance = registerOutput<String>('instance');
    lastLiveTime = registerOutput<String>('lastLiveTime');
    location = registerOutput<String>('location');
    log = registerOutput<String?>('log');
    logType = registerOutput<String>('logType');
    this.name = registerOutput<String>('name');
    parserextension = registerOutput<String>('parserextension');
    project = registerOutput<String>('project');
    state = registerOutput<String>('state');
    stateLastChangedTime = registerOutput<String>('stateLastChangedTime');
    validationReport = registerOutput<String>('validationReport');
    validationSkipped = registerOutput<bool?>('validationSkipped');
  }

  /// Gets an existing [ParserExtension] resource's state with the given [name] and [id].
  static ParserExtension get(
    String name,
    pulumi.Input<String> id, {
    ParserExtensionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ParserExtension._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ParserExtension._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/parserExtension:ParserExtension',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cbnSnippet = registerOutput<String?>('cbnSnippet');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    dynamicParsing = registerOutput<ParserExtensionDynamicParsing?>('dynamicParsing', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ParserExtensionDynamicParsing.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    extensionValidationReport = registerOutput<String>('extensionValidationReport');
    fieldExtractors = registerOutput<ParserExtensionFieldExtractors?>('fieldExtractors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ParserExtensionFieldExtractors.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instance = registerOutput<String>('instance');
    lastLiveTime = registerOutput<String>('lastLiveTime');
    location = registerOutput<String>('location');
    log = registerOutput<String?>('log');
    logType = registerOutput<String>('logType');
    this.name = registerOutput<String>('name');
    parserextension = registerOutput<String>('parserextension');
    project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
    stateLastChangedTime = registerOutput<String>('stateLastChangedTime');
    validationReport = registerOutput<String>('validationReport');
    validationSkipped = registerOutput<bool?>('validationSkipped');
  }

  /// Creates a typed reference to an existing [ParserExtension] resource.
  ParserExtension.reference(String urn)
    : super(
        'gcp:chronicle/parserExtension:ParserExtension',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    cbnSnippet = registerOutput<String?>('cbnSnippet');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    dynamicParsing = registerOutput<ParserExtensionDynamicParsing?>('dynamicParsing', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ParserExtensionDynamicParsing.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    extensionValidationReport = registerOutput<String>('extensionValidationReport');
    fieldExtractors = registerOutput<ParserExtensionFieldExtractors?>('fieldExtractors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ParserExtensionFieldExtractors.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instance = registerOutput<String>('instance');
    lastLiveTime = registerOutput<String>('lastLiveTime');
    location = registerOutput<String>('location');
    log = registerOutput<String?>('log');
    logType = registerOutput<String>('logType');
    this.name = registerOutput<String>('name');
    parserextension = registerOutput<String>('parserextension');
    project = registerOutput<String>('project');
    state = registerOutput<String>('state');
    stateLastChangedTime = registerOutput<String>('stateLastChangedTime');
    validationReport = registerOutput<String>('validationReport');
    validationSkipped = registerOutput<bool?>('validationSkipped');
  }
}
