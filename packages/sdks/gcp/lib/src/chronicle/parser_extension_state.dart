// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parser_extension_dynamic_parsing.dart';
import 'parser_extension_field_extractors.dart';

/// Input properties used for looking up and filtering ParserExtension resources.
class ParserExtensionState {
  /// Parser config could be a cbn snippet.
  final pulumi.Input<String?>? cbnSnippet;
  /// The time the parser extension was created.
  final pulumi.Input<String?>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A representation of a parser extension as dynamic parsing config.
  /// Structure is documented below.
  final pulumi.Input<ParserExtensionDynamicParsing?>? dynamicParsing;
  /// The latest extension
  /// validation report for this extension.
  final pulumi.Input<String?>? extensionValidationReport;
  /// A representation of a parser extension as a set of field extractors.
  /// Structure is documented below.
  final pulumi.Input<ParserExtensionFieldExtractors?>? fieldExtractors;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String?>? instance;
  /// The time the config was last serving live traffic.
  final pulumi.Input<String?>? lastLiveTime;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String?>? location;
  /// Raw log used to assist the user in creation of augmentation.
  final pulumi.Input<String?>? log;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String?>? logType;
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/logTypes/{logtype}/parserExtensions/{parserExtension}
  final pulumi.Input<String?>? name;
  /// Output only. The server-generated ID of the parser extension.
  final pulumi.Input<String?>? parserextension;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
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
  final pulumi.Input<String?>? state;
  /// The time the config state was last changed.
  final pulumi.Input<String?>? stateLastChangedTime;
  /// The validation report generated during extension validation.
  final pulumi.Input<String?>? validationReport;
  /// Flag to bypass parser extension validation.
  /// If enabled, the parser extension won't be rejected during the validation
  /// phase and validation will be skipped.
  final pulumi.Input<bool?>? validationSkipped;

  /// Creates a new [ParserExtensionState].
  /// [cbnSnippet] Parser config could be a cbn snippet.
  /// [createTime] The time the parser extension was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [dynamicParsing] A representation of a parser extension as dynamic parsing config.
  /// [extensionValidationReport] The latest extension
  /// [fieldExtractors] A representation of a parser extension as a set of field extractors.
  /// [instance] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [lastLiveTime] The time the config was last serving live traffic.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [log] Raw log used to assist the user in creation of augmentation.
  /// [logType] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Format:
  /// [parserextension] Output only. The server-generated ID of the parser extension.
  /// [project] The ID of the project in which the resource belongs.
  /// [state] The state of the parser extension
  /// [stateLastChangedTime] The time the config state was last changed.
  /// [validationReport] The validation report generated during extension validation.
  /// [validationSkipped] Flag to bypass parser extension validation.
  const ParserExtensionState({
    this.cbnSnippet,
    this.createTime,
    this.deletionPolicy,
    this.dynamicParsing,
    this.extensionValidationReport,
    this.fieldExtractors,
    this.instance,
    this.lastLiveTime,
    this.location,
    this.log,
    this.logType,
    this.name,
    this.parserextension,
    this.project,
    this.state,
    this.stateLastChangedTime,
    this.validationReport,
    this.validationSkipped,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cbnSnippet': ?cbnSnippet,
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'dynamicParsing': ?pulumi.Input.mapOptionalInputValue<ParserExtensionDynamicParsing, Map<String, dynamic>>(dynamicParsing, (value) => value.toMap()),
      'extensionValidationReport': ?extensionValidationReport,
      'fieldExtractors': ?pulumi.Input.mapOptionalInputValue<ParserExtensionFieldExtractors, Map<String, dynamic>>(fieldExtractors, (value) => value.toMap()),
      'instance': ?instance,
      'lastLiveTime': ?lastLiveTime,
      'location': ?location,
      'log': ?log,
      'logType': ?logType,
      'name': ?name,
      'parserextension': ?parserextension,
      'project': ?project,
      'state': ?state,
      'stateLastChangedTime': ?stateLastChangedTime,
      'validationReport': ?validationReport,
      'validationSkipped': ?validationSkipped,
    };
  }

  factory ParserExtensionState.fromMap(Map<String, dynamic> map) {
    return ParserExtensionState(
      cbnSnippet: (() { final guardedValue = map['cbnSnippet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dynamicParsing: (() { final guardedValue = map['dynamicParsing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ParserExtensionDynamicParsing.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      extensionValidationReport: (() { final guardedValue = map['extensionValidationReport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fieldExtractors: (() { final guardedValue = map['fieldExtractors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ParserExtensionFieldExtractors.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastLiveTime: (() { final guardedValue = map['lastLiveTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      log: (() { final guardedValue = map['log']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logType: (() { final guardedValue = map['logType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parserextension: (() { final guardedValue = map['parserextension']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stateLastChangedTime: (() { final guardedValue = map['stateLastChangedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validationReport: (() { final guardedValue = map['validationReport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validationSkipped: (() { final guardedValue = map['validationSkipped']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
