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
  const AppVersionSnapshotToolGoogleSearchTool({
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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      excludeDomains: (() { final guardedValue = map['excludeDomains']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

