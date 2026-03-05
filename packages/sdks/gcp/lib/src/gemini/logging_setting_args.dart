// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gemini_logging_setting_logging_setting_args_doc}
/// The set of arguments for LoggingSetting.
/// {@endtemplate}
/// {@macro pulumi_gemini_logging_setting_logging_setting_args_doc}
class LoggingSettingArgs {
  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// Whether to log metadata.
  final pulumi.Input<bool>? logMetadata;
  /// Whether to log prompts and responses.
  final pulumi.Input<bool>? logPromptsAndResponses;
  /// Id of the Logging Setting.
  final pulumi.Input<String> loggingSettingId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [LoggingSettingArgs].
  /// [labels] Labels as key value pairs.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [logMetadata] Whether to log metadata.
  /// [logPromptsAndResponses] Whether to log prompts and responses.
  /// [loggingSettingId] Id of the Logging Setting.
  /// [project] The ID of the project in which the resource belongs.
  LoggingSettingArgs({
    this.labels,
    required this.location,
    this.logMetadata,
    this.logPromptsAndResponses,
    required this.loggingSettingId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
      'location': location,
      'logMetadata': ?logMetadata,
      'logPromptsAndResponses': ?logPromptsAndResponses,
      'loggingSettingId': loggingSettingId,
      'project': ?project,
    };
  }

  factory LoggingSettingArgs.fromMap(Map<String, dynamic> map) {
    return LoggingSettingArgs(
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      logMetadata: (() { final guardedValue = map['logMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      logPromptsAndResponses: (() { final guardedValue = map['logPromptsAndResponses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      loggingSettingId: pulumi.Input.fromValue(map['loggingSettingId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

