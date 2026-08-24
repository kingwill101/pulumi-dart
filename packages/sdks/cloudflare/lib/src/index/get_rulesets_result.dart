// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesetsResult {
  /// An informative description of the ruleset.
  final pulumi.Input<String> description;
  /// The unique ID of the ruleset.
  final pulumi.Input<String> id;
  /// The kind of the ruleset.
  /// Available values: "managed", "custom", "root", "zone".
  final pulumi.Input<String> kind;
  /// The timestamp of when the ruleset was last modified.
  final pulumi.Input<String> lastUpdated;
  /// The human-readable name of the ruleset.
  final pulumi.Input<String> name;
  /// The phase of the ruleset.
  /// Available values: "ddos*l4", "ddos*l7", "http*config*settings", "http*custom*errors", "http*log*custom*fields", "http*ratelimit", "http*request*cache*settings", "http*request*dynamic*redirect", "http*request*firewall*custom", "http*request*firewall*managed", "http*request*late*transform", "http*request*origin", "http*request*redirect", "http*request*sanitize", "http*request*sbfm", "http*request*transform", "http*response*compression", "http*response*firewall*managed", "http*response*headers*transform", "magic*transit", "magic*transit*ids*managed", "magic*transit*managed", "magic*transit_ratelimit".
  final pulumi.Input<String> phase;
  /// The version of the ruleset.
  final pulumi.Input<String> version;

  /// Creates a new [GetRulesetsResult].
  /// [description] An informative description of the ruleset.
  /// [id] The unique ID of the ruleset.
  /// [kind] The kind of the ruleset.
  /// [lastUpdated] The timestamp of when the ruleset was last modified.
  /// [name] The human-readable name of the ruleset.
  /// [phase] The phase of the ruleset.
  /// [version] The version of the ruleset.
  const GetRulesetsResult({
    required this.description,
    required this.id,
    required this.kind,
    required this.lastUpdated,
    required this.name,
    required this.phase,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'id': id,
      'kind': kind,
      'lastUpdated': lastUpdated,
      'name': name,
      'phase': phase,
      'version': version,
    };
  }

  factory GetRulesetsResult.fromMap(Map<String, dynamic> map) {
    return GetRulesetsResult(
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      lastUpdated: pulumi.Input.fromValue(map['lastUpdated'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      phase: pulumi.Input.fromValue(map['phase'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
