// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parser_changelog.dart';
import 'parser_creator.dart';
import 'parser_low_code.dart';
import 'parser_version_info.dart';

/// Input properties used for looking up and filtering Parser resources.
class ParserState {
  /// if the parser is built using config
  /// documentation:
  /// https://cloud.google.com/chronicle/docs/preview/parser-extensions/parsing-overview
  final pulumi.Input<String?>? cbn;
  /// Changelogs of a parser.
  /// Structure is documented below.
  final pulumi.Input<List<ParserChangelog>?>? changelogs;
  /// (Output)
  /// Time at which changelog was created.
  final pulumi.Input<String?>? createTime;
  /// Information about the creator of the parser.
  /// Structure is documented below.
  final pulumi.Input<List<ParserCreator>?>? creators;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Dynamic parsing config applied over the parser, if any.
  final pulumi.Input<String?>? dynamicParsingConfig;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String?>? instance;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String?>? location;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String?>? logtype;
  /// Message to represent LowCodeParser.
  /// Structure is documented below.
  final pulumi.Input<ParserLowCode?>? lowCode;
  /// name of the parser resource.
  final pulumi.Input<String?>? name;
  /// Output only. The server-generated ID of the parser.
  final pulumi.Input<String?>? parser;
  /// Extension applied over the parser, if any.
  final pulumi.Input<String?>? parserExtension;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
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
  final pulumi.Input<String?>? releaseStage;
  /// The state of the parser
  /// Possible values:
  /// ACTIVE
  /// INACTIVE
  final pulumi.Input<String?>? state;
  /// The type of the parser
  /// Possible values:
  /// CUSTOM
  /// PREBUILT
  final pulumi.Input<String?>? type;
  /// Flag to bypass parser validation when no logs are found.
  /// If enabled, the parser won't be be rejected during the validation
  /// phase when no logs are found.
  final pulumi.Input<bool?>? validatedOnEmptyLogs;
  /// The Validation report generated during parser validation.
  final pulumi.Input<String?>? validationReport;
  /// If true, bypasses parser validation.
  /// If enabled, the parser won't be rejected during the validation
  /// phase and validation will be skipped.
  final pulumi.Input<bool?>? validationSkipped;
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
  final pulumi.Input<String?>? validationStage;
  /// ParserVersionInfo gives the version information of the parser and related
  /// properties like pinned etc.
  /// Structure is documented below.
  final pulumi.Input<ParserVersionInfo?>? versionInfo;

  /// Creates a new [ParserState].
  /// [cbn] if the parser is built using config
  /// [changelogs] Changelogs of a parser.
  /// [createTime] (Output)
  /// [creators] Information about the creator of the parser.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [dynamicParsingConfig] Dynamic parsing config applied over the parser, if any.
  /// [instance] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [logtype] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [lowCode] Message to represent LowCodeParser.
  /// [name] name of the parser resource.
  /// [parser] Output only. The server-generated ID of the parser.
  /// [parserExtension] Extension applied over the parser, if any.
  /// [project] The ID of the project in which the resource belongs.
  /// [releaseStage] The release stage of the parser
  /// [state] The state of the parser
  /// [type] The type of the parser
  /// [validatedOnEmptyLogs] Flag to bypass parser validation when no logs are found.
  /// [validationReport] The Validation report generated during parser validation.
  /// [validationSkipped] If true, bypasses parser validation.
  /// [validationStage] The validation stage of the parser
  /// [versionInfo] ParserVersionInfo gives the version information of the parser and related
  const ParserState({
    this.cbn,
    this.changelogs,
    this.createTime,
    this.creators,
    this.deletionPolicy,
    this.dynamicParsingConfig,
    this.instance,
    this.location,
    this.logtype,
    this.lowCode,
    this.name,
    this.parser,
    this.parserExtension,
    this.project,
    this.releaseStage,
    this.state,
    this.type,
    this.validatedOnEmptyLogs,
    this.validationReport,
    this.validationSkipped,
    this.validationStage,
    this.versionInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cbn': ?cbn,
      'changelogs': ?pulumi.Input.mapOptionalInputValue<List<ParserChangelog>, List<Map<String, dynamic>>>(changelogs, (value) => pulumi.Input.encodeList<ParserChangelog, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': ?createTime,
      'creators': ?pulumi.Input.mapOptionalInputValue<List<ParserCreator>, List<Map<String, dynamic>>>(creators, (value) => pulumi.Input.encodeList<ParserCreator, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deletionPolicy': ?deletionPolicy,
      'dynamicParsingConfig': ?dynamicParsingConfig,
      'instance': ?instance,
      'location': ?location,
      'logtype': ?logtype,
      'lowCode': ?pulumi.Input.mapOptionalInputValue<ParserLowCode, Map<String, dynamic>>(lowCode, (value) => value.toMap()),
      'name': ?name,
      'parser': ?parser,
      'parserExtension': ?parserExtension,
      'project': ?project,
      'releaseStage': ?releaseStage,
      'state': ?state,
      'type': ?type,
      'validatedOnEmptyLogs': ?validatedOnEmptyLogs,
      'validationReport': ?validationReport,
      'validationSkipped': ?validationSkipped,
      'validationStage': ?validationStage,
      'versionInfo': ?pulumi.Input.mapOptionalInputValue<ParserVersionInfo, Map<String, dynamic>>(versionInfo, (value) => value.toMap()),
    };
  }

  factory ParserState.fromMap(Map<String, dynamic> map) {
    return ParserState(
      cbn: (() { final guardedValue = map['cbn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      changelogs: (() { final guardedValue = map['changelogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ParserChangelog>(guardedValue, (value) => ParserChangelog.fromMap((value as Map).cast<String, dynamic>()))); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creators: (() { final guardedValue = map['creators']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ParserCreator>(guardedValue, (value) => ParserCreator.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dynamicParsingConfig: (() { final guardedValue = map['dynamicParsingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logtype: (() { final guardedValue = map['logtype']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lowCode: (() { final guardedValue = map['lowCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ParserLowCode.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parser: (() { final guardedValue = map['parser']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parserExtension: (() { final guardedValue = map['parserExtension']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      releaseStage: (() { final guardedValue = map['releaseStage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validatedOnEmptyLogs: (() { final guardedValue = map['validatedOnEmptyLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      validationReport: (() { final guardedValue = map['validationReport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validationSkipped: (() { final guardedValue = map['validationSkipped']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      validationStage: (() { final guardedValue = map['validationStage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionInfo: (() { final guardedValue = map['versionInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ParserVersionInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
