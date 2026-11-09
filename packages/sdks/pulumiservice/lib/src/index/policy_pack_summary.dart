// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Summary metadata for a policy pack available to an organization, including its Pulumi Registry provenance.
class PolicyPackSummary {
  /// The display name of the policy pack.
  final pulumi.Input<String> displayName;
  /// The name of the policy pack.
  final pulumi.Input<String> name;
  /// The organization or user that published the policy pack. `pulumi` for Pulumi-published packs, otherwise the publishing organization's name. Omitted when the provider could not determine registry metadata for this pack.
  final pulumi.Input<String?>? publisher;
  /// Where the policy pack is hosted in the Pulumi Registry: `pulumi` for packs published by Pulumi (for example `cis-aws`), `private` for packs published by an organization. Omitted when the provider could not determine registry metadata for this pack.
  final pulumi.Input<String?>? source;
  /// List of version tags for this policy pack.
  final pulumi.Input<List<String>> versionTags;
  /// List of version numbers for this policy pack.
  final pulumi.Input<List<int>> versions;

  /// Creates a new [PolicyPackSummary].
  /// [displayName] The display name of the policy pack.
  /// [name] The name of the policy pack.
  /// [publisher] The organization or user that published the policy pack. `pulumi` for Pulumi-published packs, otherwise the publishing organization's name. Omitted when the provider could not determine registry metadata for this pack.
  /// [source] Where the policy pack is hosted in the Pulumi Registry: `pulumi` for packs published by Pulumi (for example `cis-aws`), `private` for packs published by an organization. Omitted when the provider could not determine registry metadata for this pack.
  /// [versionTags] List of version tags for this policy pack.
  /// [versions] List of version numbers for this policy pack.
  const PolicyPackSummary({
    required this.displayName,
    required this.name,
    this.publisher,
    this.source,
    required this.versionTags,
    required this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'name': name,
      'publisher': ?publisher,
      'source': ?source,
      'versionTags': versionTags,
      'versions': versions,
    };
  }

  factory PolicyPackSummary.fromMap(Map<String, dynamic> map) {
    return PolicyPackSummary(
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      publisher: (() { final guardedValue = map['publisher']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionTags: pulumi.Input.fromValue((map['versionTags'] as List).cast<String>()),
      versions: pulumi.Input.fromValue((map['versions'] as List).cast<int>()),
    );
  }
}
