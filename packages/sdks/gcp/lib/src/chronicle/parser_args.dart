// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parser_low_code.dart';
import 'parser_version_info.dart';

/// {@template pulumi_chronicle_parser_parser_args_doc}
/// The set of arguments for Parser.
/// {@endtemplate}
/// {@macro pulumi_chronicle_parser_parser_args_doc}
class ParserArgs {
  /// if the parser is built using config
  /// documentation:
  /// https://cloud.google.com/chronicle/docs/preview/parser-extensions/parsing-overview
  final pulumi.Input<String>? cbn;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> instance;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> logtype;
  /// Message to represent LowCodeParser.
  /// Structure is documented below.
  final pulumi.Input<ParserLowCode>? lowCode;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Flag to bypass parser validation when no logs are found.
  /// If enabled, the parser won't be be rejected during the validation
  /// phase when no logs are found.
  final pulumi.Input<bool>? validatedOnEmptyLogs;
  /// If true, bypasses parser validation.
  /// If enabled, the parser won't be rejected during the validation
  /// phase and validation will be skipped.
  final pulumi.Input<bool>? validationSkipped;
  /// ParserVersionInfo gives the version information of the parser and related
  /// properties like pinned etc.
  /// Structure is documented below.
  final pulumi.Input<ParserVersionInfo>? versionInfo;

  /// Creates a new [ParserArgs].
  /// [cbn] if the parser is built using config
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [instance] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [logtype] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [lowCode] Message to represent LowCodeParser.
  /// [project] The ID of the project in which the resource belongs.
  /// [validatedOnEmptyLogs] Flag to bypass parser validation when no logs are found.
  /// [validationSkipped] If true, bypasses parser validation.
  /// [versionInfo] ParserVersionInfo gives the version information of the parser and related
  const ParserArgs({
    this.cbn,
    this.deletionPolicy,
    required this.instance,
    required this.location,
    required this.logtype,
    this.lowCode,
    this.project,
    this.validatedOnEmptyLogs,
    this.validationSkipped,
    this.versionInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cbn': ?cbn,
      'deletionPolicy': ?deletionPolicy,
      'instance': instance,
      'location': location,
      'logtype': logtype,
      'lowCode': ?pulumi.Input.mapOptionalInputValue<ParserLowCode, Map<String, dynamic>>(lowCode, (value) => value.toMap()),
      'project': ?project,
      'validatedOnEmptyLogs': ?validatedOnEmptyLogs,
      'validationSkipped': ?validationSkipped,
      'versionInfo': ?pulumi.Input.mapOptionalInputValue<ParserVersionInfo, Map<String, dynamic>>(versionInfo, (value) => value.toMap()),
    };
  }

  factory ParserArgs.fromMap(Map<String, dynamic> map) {
    return ParserArgs(
      cbn: (() { final guardedValue = map['cbn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instance: pulumi.Input.fromValue(map['instance'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      logtype: pulumi.Input.fromValue(map['logtype'] as String),
      lowCode: (() { final guardedValue = map['lowCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ParserLowCode.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validatedOnEmptyLogs: (() { final guardedValue = map['validatedOnEmptyLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      validationSkipped: (() { final guardedValue = map['validationSkipped']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      versionInfo: (() { final guardedValue = map['versionInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ParserVersionInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
