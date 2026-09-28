// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Result data returned by getPolicyPack.
class GetPolicyPackResult {
  /// Configuration for the policy pack.
  final Map<String, dynamic>? config;
  /// The display name of the policy pack.
  final String? displayName;
  /// The name of the policy pack.
  final String? name;
  /// List of policies in this pack.
  final List<Map<String, String>>? policies;
  /// The organization or user that published the policy pack. `pulumi` for Pulumi-published packs, otherwise the publishing organization's name. Omitted when the provider could not determine registry metadata for this pack.
  final String? publisher;
  /// Where the policy pack is hosted in the Pulumi Registry: `pulumi` for packs published by Pulumi (for example `cis-aws`), `private` for packs published by an organization. Omitted when the provider could not determine registry metadata for this pack.
  final String? source;
  /// The version number.
  final int? version;
  /// The version tag (if any).
  final String? versionTag;

  /// Creates a new [GetPolicyPackResult].
  /// [config] Configuration for the policy pack.
  /// [displayName] The display name of the policy pack.
  /// [name] The name of the policy pack.
  /// [policies] List of policies in this pack.
  /// [publisher] The organization or user that published the policy pack. `pulumi` for Pulumi-published packs, otherwise the publishing organization's name. Omitted when the provider could not determine registry metadata for this pack.
  /// [source] Where the policy pack is hosted in the Pulumi Registry: `pulumi` for packs published by Pulumi (for example `cis-aws`), `private` for packs published by an organization. Omitted when the provider could not determine registry metadata for this pack.
  /// [version] The version number.
  /// [versionTag] The version tag (if any).
  const GetPolicyPackResult({
    this.config,
    this.displayName,
    this.name,
    this.policies,
    this.publisher,
    this.source,
    this.version,
    this.versionTag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?config,
      'displayName': ?displayName,
      'name': ?name,
      'policies': ?policies,
      'publisher': ?publisher,
      'source': ?source,
      'version': ?version,
      'versionTag': ?versionTag,
    };
  }

  factory GetPolicyPackResult.fromMap(Map<String, dynamic> map) {
    return GetPolicyPackResult(
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, dynamic>(); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policies: (() { final guardedValue = map['policies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<Map<String, String>>(guardedValue, (value) => (value as Map).cast<String, String>()); })(),
      publisher: (() { final guardedValue = map['publisher']; if (guardedValue == null) return null; return guardedValue as String; })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      versionTag: (() { final guardedValue = map['versionTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
