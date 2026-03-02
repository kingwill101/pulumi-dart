// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppVersionSnapshotToolGoogleSearchTool {
  /// The description of the app version.
  final pulumi.Input<String>? description;
  /// (Output)
  /// List of domains to be excluded from the search results.
  /// Example: "example.com".
  /// A maximum of 2000 domains can be excluded.
  final pulumi.Input<List<String>>? excludeDomains;
  /// (Output)
  /// Identifier. The unique identifier of the toolset.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}`
  final pulumi.Input<String>? name;

  /// Creates a new [AppVersionSnapshotToolGoogleSearchTool].
  /// [description] The description of the app version.
  /// [excludeDomains] (Output)
  /// [name] (Output)
  AppVersionSnapshotToolGoogleSearchTool({
    this.description,
    this.excludeDomains,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'excludeDomains': ?excludeDomains,
      'name': ?name,
    };
  }

  factory AppVersionSnapshotToolGoogleSearchTool.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotToolGoogleSearchTool(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      excludeDomains: map['excludeDomains'] == null ? null : ((map['excludeDomains'] as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

