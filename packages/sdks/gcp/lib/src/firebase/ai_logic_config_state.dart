// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_logic_config_generative_language_config.dart';
import 'ai_logic_config_telemetry_config.dart';
import 'ai_logic_config_traffic_filter.dart';

/// Input properties used for looking up and filtering AiLogicConfig resources.
class AiLogicConfigState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Configuration for using the Gemini Developer API via Firebase AI Logic.
  /// When using the Gemini Developer API via Firebase AI Logic, a separate Gemini
  /// API key is stored in this configuration *on the server* so that you do
  /// **not** add your Gemini API key directly into your app's codebase.
  /// Structure is documented below.
  final pulumi.Input<AiLogicConfigGenerativeLanguageConfig?>? generativeLanguageConfig;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String?>? location;
  /// Identifier. The resource name of the config.
  /// Format: projects/{project}/locations/{location}/config
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Configuration for telemetry.
  /// Telemetry is the collection of metrics, logs, and traces recorded by the
  /// Firebase AI Logic backend.
  /// Structure is documented below.
  final pulumi.Input<AiLogicConfigTelemetryConfig?>? telemetryConfig;
  /// Configuration for traffic filtering.
  /// Structure is documented below.
  final pulumi.Input<AiLogicConfigTrafficFilter?>? trafficFilter;

  /// Creates a new [AiLogicConfigState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [generativeLanguageConfig] Configuration for using the Gemini Developer API via Firebase AI Logic.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Identifier. The resource name of the config.
  /// [project] The ID of the project in which the resource belongs.
  /// [telemetryConfig] Configuration for telemetry.
  /// [trafficFilter] Configuration for traffic filtering.
  const AiLogicConfigState({
    this.deletionPolicy,
    this.generativeLanguageConfig,
    this.location,
    this.name,
    this.project,
    this.telemetryConfig,
    this.trafficFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'generativeLanguageConfig': ?pulumi.Input.mapOptionalInputValue<AiLogicConfigGenerativeLanguageConfig, Map<String, dynamic>>(generativeLanguageConfig, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'telemetryConfig': ?pulumi.Input.mapOptionalInputValue<AiLogicConfigTelemetryConfig, Map<String, dynamic>>(telemetryConfig, (value) => value.toMap()),
      'trafficFilter': ?pulumi.Input.mapOptionalInputValue<AiLogicConfigTrafficFilter, Map<String, dynamic>>(trafficFilter, (value) => value.toMap()),
    };
  }

  factory AiLogicConfigState.fromMap(Map<String, dynamic> map) {
    return AiLogicConfigState(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      generativeLanguageConfig: (() { final guardedValue = map['generativeLanguageConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiLogicConfigGenerativeLanguageConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      telemetryConfig: (() { final guardedValue = map['telemetryConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiLogicConfigTelemetryConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      trafficFilter: (() { final guardedValue = map['trafficFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiLogicConfigTrafficFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
