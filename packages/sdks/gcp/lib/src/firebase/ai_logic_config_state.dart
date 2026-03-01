// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_logic_config_generative_language_config.dart';
import 'ai_logic_config_telemetry_config.dart';

/// Input properties used for looking up and filtering AiLogicConfig resources.
class AiLogicConfigState {
  /// Configuration for using the Gemini Developer API via Firebase AI Logic.
  /// When using the Gemini Developer API via Firebase AI Logic, a separate Gemini
  /// API key is stored in this configuration *on the server* so that you do
  /// **not** add your Gemini API key directly into your app's codebase.
  /// Structure is documented below.
  final pulumi.Input<AiLogicConfigGenerativeLanguageConfig>? generativeLanguageConfig;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// Identifier. The resource name of the config.
  /// Format: projects/{project}/locations/{location}/config
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Configuration for telemetry.
  /// Telemetry is the collection of metrics, logs, and traces recorded by the
  /// Firebase AI Logic backend.
  /// Structure is documented below.
  final pulumi.Input<AiLogicConfigTelemetryConfig>? telemetryConfig;

  /// Creates a new [AiLogicConfigState].
  /// [generativeLanguageConfig] Configuration for using the Gemini Developer API via Firebase AI Logic.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Identifier. The resource name of the config.
  /// [project] The ID of the project in which the resource belongs.
  /// [telemetryConfig] Configuration for telemetry.
  AiLogicConfigState({
    pulumi.Output<AiLogicConfigGenerativeLanguageConfig>? generativeLanguageConfig,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<AiLogicConfigTelemetryConfig>? telemetryConfig,
  }) :
      generativeLanguageConfig = pulumi.Input.asOptionalInput<AiLogicConfigGenerativeLanguageConfig>(generativeLanguageConfig),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      telemetryConfig = pulumi.Input.asOptionalInput<AiLogicConfigTelemetryConfig>(telemetryConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'generativeLanguageConfig': ?pulumi.Input.mapOptionalInputValue<AiLogicConfigGenerativeLanguageConfig, Map<String, dynamic>>(generativeLanguageConfig, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'telemetryConfig': ?pulumi.Input.mapOptionalInputValue<AiLogicConfigTelemetryConfig, Map<String, dynamic>>(telemetryConfig, (value) => value.toMap()),
    };
  }

  factory AiLogicConfigState.fromMap(Map<String, dynamic> map) {
    return AiLogicConfigState(
      generativeLanguageConfig: map['generativeLanguageConfig'] == null ? null : pulumi.Output.create<AiLogicConfigGenerativeLanguageConfig>(AiLogicConfigGenerativeLanguageConfig.fromMap((map['generativeLanguageConfig'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      telemetryConfig: map['telemetryConfig'] == null ? null : pulumi.Output.create<AiLogicConfigTelemetryConfig>(AiLogicConfigTelemetryConfig.fromMap((map['telemetryConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

