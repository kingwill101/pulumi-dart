// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parser_extension_dynamic_parsing.dart';
import 'parser_extension_field_extractors.dart';

/// {@template pulumi_chronicle_parser_extension_parser_extension_args_doc}
/// The set of arguments for ParserExtension.
/// {@endtemplate}
/// {@macro pulumi_chronicle_parser_extension_parser_extension_args_doc}
class ParserExtensionArgs {
  /// Parser config could be a cbn snippet.
  final pulumi.Input<String?>? cbnSnippet;
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
  /// A representation of a parser extension as a set of field extractors.
  /// Structure is documented below.
  final pulumi.Input<ParserExtensionFieldExtractors?>? fieldExtractors;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> instance;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// Raw log used to assist the user in creation of augmentation.
  final pulumi.Input<String?>? log;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> logType;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Flag to bypass parser extension validation.
  /// If enabled, the parser extension won't be rejected during the validation
  /// phase and validation will be skipped.
  final pulumi.Input<bool?>? validationSkipped;

  /// Creates a new [ParserExtensionArgs].
  /// [cbnSnippet] Parser config could be a cbn snippet.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [dynamicParsing] A representation of a parser extension as dynamic parsing config.
  /// [fieldExtractors] A representation of a parser extension as a set of field extractors.
  /// [instance] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [log] Raw log used to assist the user in creation of augmentation.
  /// [logType] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  /// [validationSkipped] Flag to bypass parser extension validation.
  const ParserExtensionArgs({
    this.cbnSnippet,
    this.deletionPolicy,
    this.dynamicParsing,
    this.fieldExtractors,
    required this.instance,
    required this.location,
    this.log,
    required this.logType,
    this.project,
    this.validationSkipped,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cbnSnippet': ?cbnSnippet,
      'deletionPolicy': ?deletionPolicy,
      'dynamicParsing': ?pulumi.Input.mapOptionalInputValue<ParserExtensionDynamicParsing, Map<String, dynamic>>(dynamicParsing, (value) => value.toMap()),
      'fieldExtractors': ?pulumi.Input.mapOptionalInputValue<ParserExtensionFieldExtractors, Map<String, dynamic>>(fieldExtractors, (value) => value.toMap()),
      'instance': instance,
      'location': location,
      'log': ?log,
      'logType': logType,
      'project': ?project,
      'validationSkipped': ?validationSkipped,
    };
  }

  factory ParserExtensionArgs.fromMap(Map<String, dynamic> map) {
    return ParserExtensionArgs(
      cbnSnippet: (() { final guardedValue = map['cbnSnippet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dynamicParsing: (() { final guardedValue = map['dynamicParsing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ParserExtensionDynamicParsing.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fieldExtractors: (() { final guardedValue = map['fieldExtractors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ParserExtensionFieldExtractors.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instance: pulumi.Input.fromValue(map['instance'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      log: (() { final guardedValue = map['log']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logType: pulumi.Input.fromValue(map['logType'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validationSkipped: (() { final guardedValue = map['validationSkipped']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
