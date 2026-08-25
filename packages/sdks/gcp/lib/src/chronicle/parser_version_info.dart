// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ParserVersionInfo {
  /// Signifies if the parser is disabled for auto upgrade. If true, the parser
  /// will not be upgraded by the auto upgrade process.
  final pulumi.Input<bool> autoUpgradeDisabled;
  /// (Output)
  /// The resource name of latest Parser for this logtype.
  /// Format:
  /// projects/{project}/locations/{region}/instances/{instance}/logTypes/{log_type}/parsers/{parser}/{id}
  final pulumi.Input<String?>? latestParser;
  /// (Output)
  /// The version for the latest available stable version of the parser.
  final pulumi.Input<String?>? latestParserVersion;
  /// (Output)
  /// Signifies if rollback is available for this parser version.
  final pulumi.Input<bool?>? rollbackAvailable;
  /// (Output)
  /// The version of the parser.
  final pulumi.Input<String?>? version;

  /// Creates a new [ParserVersionInfo].
  /// [autoUpgradeDisabled] Signifies if the parser is disabled for auto upgrade. If true, the parser
  /// [latestParser] (Output)
  /// [latestParserVersion] (Output)
  /// [rollbackAvailable] (Output)
  /// [version] (Output)
  const ParserVersionInfo({
    required this.autoUpgradeDisabled,
    this.latestParser,
    this.latestParserVersion,
    this.rollbackAvailable,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUpgradeDisabled': autoUpgradeDisabled,
      'latestParser': ?latestParser,
      'latestParserVersion': ?latestParserVersion,
      'rollbackAvailable': ?rollbackAvailable,
      'version': ?version,
    };
  }

  factory ParserVersionInfo.fromMap(Map<String, dynamic> map) {
    return ParserVersionInfo(
      autoUpgradeDisabled: pulumi.Input.fromValue(map['autoUpgradeDisabled'] as bool),
      latestParser: (() { final guardedValue = map['latestParser']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      latestParserVersion: (() { final guardedValue = map['latestParserVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rollbackAvailable: (() { final guardedValue = map['rollbackAvailable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
